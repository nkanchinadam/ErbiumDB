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
    category_products_category_id integer
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    camera_id integer NOT NULL,
    sensor_mp integer
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    phone_id integer NOT NULL,
    carrier_lock character varying(255),
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    accessories_id integer NOT NULL,
    accessory_type character varying(255)
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    appliance_id integer NOT NULL,
    energy_rating character varying(255)
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    kitchenappliance_id integer NOT NULL,
    warranty_years integer
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    apparel_id integer NOT NULL,
    size_system character varying(255)
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    clothing_id integer NOT NULL,
    material character varying(255)
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    menclothing_id integer NOT NULL,
    fit_type_men character varying(255)
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    womenclothing_id integer NOT NULL,
    fit_type_women character varying(255)
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    footwear_id integer NOT NULL,
    sole_material character varying(255)
);


ALTER TABLE public.relation_19 OWNER TO postgres;

--
-- Name: relation_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_2 (
    physicalproduct_id integer NOT NULL,
    dimensions character varying(255)
);


ALTER TABLE public.relation_2 OWNER TO postgres;

--
-- Name: relation_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_20 (
    media_id integer NOT NULL,
    format character varying(255)
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    software_id integer NOT NULL,
    license_type character varying(255)
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[]
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    customer_id integer NOT NULL,
    loyalty_tier character varying(255),
    contact_no character varying(255)[]
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    primecustomer_id integer NOT NULL,
    renewal_date character varying(255),
    subscription_addons character varying(255)[]
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    businesscustomer_id integer NOT NULL,
    company_name character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    employee_id integer NOT NULL,
    employee_no character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    corporateemployee_id integer NOT NULL,
    office_site character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    engineer_id integer NOT NULL,
    level character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_29 OWNER TO postgres;

--
-- Name: relation_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_3 (
    digitalproduct_id integer NOT NULL,
    delivery_type character varying(255)
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    fulfillmentassociate_id integer NOT NULL,
    shift character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    categorymanager_id integer NOT NULL,
    department character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    product_id integer NOT NULL,
    image_id integer NOT NULL,
    url character varying(255),
    alt_text character varying(255),
    sort_order integer
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    product_id integer NOT NULL,
    variant_id integer NOT NULL,
    price_override integer,
    barcode character varying(255),
    is_active_variant integer
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    product_id integer NOT NULL,
    price_id integer NOT NULL,
    starts_at character varying(255),
    ends_at character varying(255),
    price integer
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    electronics_id integer NOT NULL,
    warranty_months integer
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255),
    reviews_product_id integer
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    user_id integer NOT NULL,
    session_id integer NOT NULL,
    started_at character varying(255),
    device character varying(255)
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255),
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_46 OWNER TO postgres;

--
-- Name: relation_47; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_47 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
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
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255),
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_51; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_51 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
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
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_56 OWNER TO postgres;

--
-- Name: relation_57; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_57 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_57 OWNER TO postgres;

--
-- Name: relation_58; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_58 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_58 OWNER TO postgres;

--
-- Name: relation_59; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_59 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
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
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
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
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["product_id"]], ["relation_2", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"]], false, ["physicalproduct_id"]], ["relation_3", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"]], false, ["digitalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"]], false, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"]], false, ["computer_id"]], ["relation_6", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"]], false, ["desktop_id"]], ["relation_7", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"]], false, ["laptop_id"]], ["relation_8", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"]], false, ["tablet_id"]], ["relation_9", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], true, ["smartwatch_id"]], ["relation_10", [["camera_id", "INTEGER", "camera_id", "camera"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"]], false, ["camera_id"]], ["relation_11", [["phone_id", "INTEGER", "phone_id", "phone"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], true, ["phone_id"]], ["relation_12", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"]], false, ["accessories_id"]], ["relation_13", [["appliance_id", "INTEGER", "appliance_id", "appliance"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"]], false, ["appliance_id"]], ["relation_14", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"]], false, ["kitchenappliance_id"]], ["relation_15", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"]], false, ["apparel_id"]], ["relation_16", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["material", "VARCHAR(255)", "clothing.material", "clothing"]], false, ["clothing_id"]], ["relation_17", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_18", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"]], false, ["womenclothing_id"]], ["relation_19", [["footwear_id", "INTEGER", "footwear_id", "footwear"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"]], false, ["footwear_id"]], ["relation_20", [["media_id", "INTEGER", "media_id", "media"], ["format", "VARCHAR(255)", "media.format", "media"]], false, ["media_id"]], ["relation_21", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_22", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"]], false, ["user_id"]], ["relation_23", [["customer_id", "INTEGER", "customer_id", "customer"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"]], false, ["customer_id"]], ["relation_24", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["subscription_addons", "VARCHAR(255)[]", "primecustomer.subscription_addons", "primecustomer"]], false, ["primecustomer_id"]], ["relation_25", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"]], false, ["businesscustomer_id"]], ["relation_26", [["employee_id", "INTEGER", "employee_id", "employee"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"]], false, ["employee_id"]], ["relation_27", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"]], false, ["corporateemployee_id"]], ["relation_28", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_29", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_30", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_31", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_32", [["product_id", "INTEGER", "product_id", "productimage"], ["image_id", "INTEGER", "productimage.image_id", "productimage"], ["url", "VARCHAR(255)", "productimage.url", "productimage"], ["alt_text", "VARCHAR(255)", "productimage.alt_text", "productimage"], ["sort_order", "INTEGER", "productimage.sort_order", "productimage"]], false, ["product_id", "image_id"]], ["relation_33", [["product_id", "INTEGER", "product_id", "productvariant"], ["variant_id", "INTEGER", "productvariant.variant_id", "productvariant"], ["price_override", "INTEGER", "productvariant.price_override", "productvariant"], ["barcode", "VARCHAR(255)", "productvariant.barcode", "productvariant"], ["is_active_variant", "INTEGER", "productvariant.is_active_variant", "productvariant"]], false, ["product_id", "variant_id"]], ["relation_34", [["product_id", "INTEGER", "product_id", "pricehistory"], ["price_id", "INTEGER", "pricehistory.price_id", "pricehistory"], ["starts_at", "VARCHAR(255)", "pricehistory.starts_at", "pricehistory"], ["ends_at", "VARCHAR(255)", "pricehistory.ends_at", "pricehistory"], ["price", "INTEGER", "pricehistory.price", "pricehistory"]], false, ["product_id", "price_id"]], ["relation_35", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_36", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_37", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_38", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_39", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_40", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], true, ["customer_id", "review_id"]], ["relation_41", [["user_id", "INTEGER", "user_id", "browsingsession"], ["session_id", "INTEGER", "browsingsession.session_id", "browsingsession"], ["started_at", "VARCHAR(255)", "browsingsession.started_at", "browsingsession"], ["device", "VARCHAR(255)", "browsingsession.device", "browsingsession"]], false, ["user_id", "session_id"]], ["relation_42", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], true, ["custorder_id"]], ["relation_43", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], true, ["custorder_id", "shipment_id"]], ["relation_44", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_45", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], true, ["promotion_id", "coupon_code"]], ["relation_46", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_47", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_48", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_49", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_50", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], true, ["purchaseorder_id"]], ["relation_51", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_52", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_53", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_54", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_55", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_56", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_57", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_58", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_59", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_60", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_61", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]]]
3	types	{}
4	graph	{"cost": 10608693.255256843, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [5, "relation_1"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_2"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_2"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"], [5, "relation_1"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_3"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_3"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[19, "relation_5"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[19, "relation_5"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[19, "relation_5"], [13, "relation_2"], [22, "relation_6"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "desktop", "mapped_table": [22, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[19, "relation_5"], [17, "relation_4"], [22, "relation_6"], [5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[24, "relation_7"], [19, "relation_5"], [13, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "laptop", "mapped_table": [24, "relation_7"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_7"], [19, "relation_5"], [17, "relation_4"], [5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[26, "relation_8"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "tablet", "mapped_table": [26, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[26, "relation_8"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [28, "relation_9"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [5, "relation_1"], [28, "relation_9"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[30, "relation_10"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "camera", "mapped_table": [30, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[30, "relation_10"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[32, "relation_11"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "phone", "mapped_table": [32, "relation_11"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[32, "relation_11"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_12"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "unique_name": "accessories", "mapped_table": [34, "relation_12"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_12"], [5, "relation_1"], [17, "relation_4"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [36, "relation_13"], [13, "relation_2"]], "unique_name": "appliance", "mapped_table": [36, "relation_13"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "appliance_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "appliance_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [36, "relation_13"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_13"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [36, "relation_13"], [13, "relation_2"], [38, "relation_14"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_14"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "appliance_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "appliance_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"], [36, "relation_13"], [13, "relation_2"], [38, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "unique_name": "apparel", "mapped_table": [40, "relation_15"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_15"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "unique_name": "clothing", "mapped_table": [42, "relation_16"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_16"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[44, "relation_17"], [42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "unique_name": "menclothing", "mapped_table": [44, "relation_17"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[44, "relation_17"], [42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_16"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[46, "relation_18"], [42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_18"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[46, "relation_18"], [42, "relation_16"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["footwear_id", "INTEGER", "footwear_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_15"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[48, "relation_19"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "unique_name": "footwear", "mapped_table": [48, "relation_19"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "footwear_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "footwear_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [48, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[48, "relation_19"], [5, "relation_1"], [40, "relation_15"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[50, "relation_20"], [15, "relation_3"], [5, "relation_1"]], "unique_name": "media", "mapped_table": [50, "relation_20"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[50, "relation_20"], [15, "relation_3"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"], [52, "relation_21"], [5, "relation_1"]], "unique_name": "software", "mapped_table": [52, "relation_21"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[15, "relation_3"], [5, "relation_1"], [52, "relation_21"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_22"]], "unique_name": "user", "mapped_table": [54, "relation_22"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [54, "relation_22"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_23"], [54, "relation_22"]], "unique_name": "customer", "mapped_table": [58, "relation_23"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[58, "relation_23"], [54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [58, "relation_23"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_23"], [54, "relation_22"], [61, "relation_24"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [61, "relation_24"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [61, "relation_24"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_24"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [61, "relation_24"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_22"], [64, "relation_25"], [58, "relation_23"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_25"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_25"], [54, "relation_22"], [58, "relation_23"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_22"], [66, "relation_26"]], "unique_name": "employee", "mapped_table": [66, "relation_26"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "employee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[54, "relation_22"], [66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_26"], [54, "relation_22"], [68, "relation_27"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_27"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[66, "relation_26"], [54, "relation_22"], [68, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_27"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_27"], [70, "relation_28"], [54, "relation_22"], [66, "relation_26"]], "unique_name": "engineer", "mapped_table": [70, "relation_28"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_27"], [70, "relation_28"], [54, "relation_22"], [66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[72, "relation_29"], [54, "relation_22"], [66, "relation_26"]], "unique_name": "supportagent", "mapped_table": [72, "relation_29"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_29"], [54, "relation_22"], [66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[74, "relation_30"], [54, "relation_22"], [66, "relation_26"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_30"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[74, "relation_30"], [54, "relation_22"], [66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_22"], [76, "relation_31"], [66, "relation_26"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_31"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_31"], [54, "relation_22"], [66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[78, "relation_32"]], "unique_name": "productimage", "mapped_table": [78, "relation_32"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[78, "relation_32"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[83, "relation_33"]], "unique_name": "productvariant", "mapped_table": [83, "relation_33"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[83, "relation_33"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[88, "relation_34"]], "unique_name": "pricehistory", "mapped_table": [88, "relation_34"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[88, "relation_34"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_35"]], "unique_name": "tag", "mapped_table": [93, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_36"]], "unique_name": "address", "mapped_table": [96, "relation_36"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [96, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_37"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_37"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [104, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_38"]], "unique_name": "cart", "mapped_table": [111, "relation_38"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[111, "relation_38"], [58, "relation_23"], [54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_39"]], "unique_name": "wishlist", "mapped_table": [113, "relation_39"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_39"], [58, "relation_23"], [54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_40"]], "unique_name": "review", "mapped_table": [116, "relation_40"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[116, "relation_40"], [58, "relation_23"], [54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[122, "relation_41"]], "unique_name": "browsingsession", "mapped_table": [122, "relation_41"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [122, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [122, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "relation_22"], [122, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_42"]], "unique_name": "custorder", "mapped_table": [126, "relation_42"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_42"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_43"]], "unique_name": "shipment", "mapped_table": [130, "relation_43"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[130, "relation_43"], [126, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_44"]], "unique_name": "promotion", "mapped_table": [136, "relation_44"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_44"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_45"]], "unique_name": "coupon", "mapped_table": [143, "relation_45"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_45"], [136, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_46"]], "unique_name": "warehouse", "mapped_table": [147, "relation_46"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_46"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_46"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_46"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_46"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_47"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_47"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_47"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[151, "relation_47"], [147, "relation_46"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_48"]], "unique_name": "supplier", "mapped_table": [154, "relation_48"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_48"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_48"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_48"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_49"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_49"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[157, "relation_49"], [154, "relation_48"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_50"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_50"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_50"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_51"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_51"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_51"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_51"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_51"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[5, "relation_1"]], "unique_name": "category_products", "mapped_table": [5, "relation_1"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[1, "relation_0"], [5, "relation_1"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_35"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_52"]], "unique_name": "product_tags", "mapped_table": [170, "relation_52"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[170, "relation_52"], [5, "relation_1"], [93, "relation_35"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_53"]], "unique_name": "bought_together", "mapped_table": [171, "relation_53"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "relation_1"], [171, "relation_53"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_38", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_54"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_54"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[111, "relation_38"], [58, "relation_23"], [54, "relation_22"], [5, "relation_1"], [172, "relation_54"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_55"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_55"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[113, "relation_39"], [173, "relation_55"], [58, "relation_23"], [54, "relation_22"], [5, "relation_1"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_40", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[116, "relation_40"]], "unique_name": "reviews", "mapped_table": [116, "relation_40"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [116, "relation_40"], [5, "relation_1"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_23"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[126, "relation_42"]], "unique_name": "customer_orders", "mapped_table": [126, "relation_42"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_56"]], "unique_name": "order_items", "mapped_table": [176, "relation_56"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[5, "relation_1"], [176, "relation_56"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_37"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[126, "relation_42"]], "unique_name": "payment_order", "mapped_table": [126, "relation_42"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[58, "relation_23"], [54, "relation_22"], [104, "relation_37"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_57"]], "unique_name": "order_returns", "mapped_table": [178, "relation_57"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[178, "relation_57"], [5, "relation_1"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_45", "relation_42"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[143, "relation_45"]], "unique_name": "order_coupons", "mapped_table": [143, "relation_45"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[143, "relation_45"], [136, "relation_44"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_47"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_58"]], "unique_name": "stock", "mapped_table": [180, "relation_58"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [151, "relation_47"], [180, "relation_58"], [147, "relation_46"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_48", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_59"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_59"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[181, "relation_59"], [5, "relation_1"], [154, "relation_48"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_50", "relation_48"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[161, "relation_50"]], "unique_name": "supplier_pos", "mapped_table": [161, "relation_50"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[161, "relation_50"], [154, "relation_48"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_50", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_60"]], "unique_name": "po_items", "mapped_table": [183, "relation_60"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[183, "relation_60"], [5, "relation_1"], [161, "relation_50"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_43", "relation_51"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[130, "relation_43"]], "unique_name": "courier_shipments", "mapped_table": [130, "relation_43"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_42"], [130, "relation_43"], [165, "relation_51"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_11", "relation_11"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_61"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_61"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[185, "relation_61"], [5, "relation_1"], [13, "relation_2"], [32, "relation_11"], [17, "relation_4"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_9", "relation_11"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[28, "relation_9"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [28, "relation_9"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_9"], [5, "relation_1"], [13, "relation_2"], [32, "relation_11"], [17, "relation_4"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_11", "relation_11"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[32, "relation_11"]], "unique_name": "bundled_phone", "mapped_table": [32, "relation_11"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [13, "relation_2"], [32, "relation_11"], [17, "relation_4"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "partially_by_itself", "phone": "partially_by_itself", "stock": "all_by_itself", "camera": "partially_by_itself", "coupon": "all_by_itself", "laptop": "partially_by_itself", "review": "all_by_itself", "tablet": "partially_by_itself", "address": "all_by_itself", "apparel": "partially_by_itself", "desktop": "partially_by_itself", "product": "all_by_itself", "reviews": "folded_to_many_side", "category": "all_by_itself", "clothing": "partially_by_itself", "computer": "partially_by_itself", "customer": "partially_by_itself", "employee": "partially_by_itself", "engineer": "partially_by_itself", "footwear": "partially_by_itself", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "partially_by_itself", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "partially_by_itself", "accessories": "partially_by_itself", "electronics": "partially_by_itself", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "all_by_itself", "product_tags": "all_by_itself", "productimage": "all_by_itself", "supplier_pos": "folded_to_many_side", "supportagent": "partially_by_itself", "user.mv_user": "contained_in_parent", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "folded_to_many_side", "cart_contains": "all_by_itself", "order_coupons": "folded_to_many_side", "order_returns": "all_by_itself", "payment_order": "folded_to_many_side", "paymentmethod": "all_by_itself", "primecustomer": "partially_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "partially_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "partially_by_itself", "productvariant": "all_by_itself", "bought_together": "all_by_itself", "browsingsession": "all_by_itself", "categorymanager": "partially_by_itself", "customer_orders": "folded_to_many_side", "physicalproduct": "partially_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "partially_by_itself", "kitchenappliance": "partially_by_itself", "category_products": "folded_to_many_side", "corporateemployee": "partially_by_itself", "courier_shipments": "folded_to_many_side", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "contained_in_parent", "fulfillmentassociate": "partially_by_itself", "product.mv_attributes": "contained_in_parent", "bundled_phone_smart_watch": "folded_to_many_side", "primecustomer.subscription_addons": "contained_in_parent"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	sea	138
2	analysis	583
3	certain	868
4	environmental	822
5	now	783
6	street	65
7	improve	262
8	anything	121
9	continue	508
10	tough	780
11	site	461
12	all	484
13	into	668
14	future	389
15	interesting	808
16	degree	215
17	live	97
18	product	500
19	visit	30
20	customer	915
21	method	856
22	clear	400
23	break	444
24	program	623
25	energy	781
26	apply	786
27	present	3
28	measure	713
29	look	457
30	this	273
31	model	739
32	factor	822
33	across	235
34	door	606
35	sign	968
36	beyond	105
37	year	924
38	vote	326
39	direction	32
40	tax	23
41	every	27
42	action	666
43	election	555
44	pull	10
45	know	962
46	base	903
47	often	391
48	able	703
49	book	222
50	value	993
51	house	433
52	among	744
53	computer	30
54	business	541
55	grow	228
56	will	783
57	top	449
58	race	962
59	single	508
60	nature	567
61	role	239
62	those	354
63	it	237
64	edge	694
65	here	225
66	rule	780
67	task	471
68	something	976
69	card	297
70	account	949
71	expert	23
72	personal	427
73	draw	858
74	fact	939
75	material	570
76	security	945
77	house	658
78	player	103
79	turn	191
80	staff	645
81	plan	742
82	this	881
83	avoid	304
84	he	124
85	friend	761
86	side	341
87	detail	918
88	region	739
89	once	997
90	sport	729
91	factor	513
92	value	959
93	artist	991
94	energy	433
95	life	520
96	idea	850
97	positive	933
98	grow	687
99	concern	195
100	prove	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, category_products_category_id) FROM stdin;
1	I	score	291	602	997	{no,nature}	\N
2	discuss	type	867	964	518	{help,many}	\N
3	who	then	604	874	36	{side,instead}	\N
4	price	writer	249	762	817	{pass,bit}	\N
6	a	through	562	904	720	{development,six}	\N
8	decide	right	798	168	534	{appear,major}	\N
9	than	size	380	502	751	{when}	\N
10	key	bring	481	45	316	{blue,drug}	\N
11	easy	also	663	175	173	{step}	\N
12	run	there	13	790	205	{water}	\N
13	whose	ready	415	527	353	{tell,save}	\N
14	official	sure	471	932	276	{air}	\N
16	class	act	532	797	575	{administration}	\N
17	gun	cover	437	973	58	{north,body}	\N
18	card	wide	891	374	584	{look}	\N
19	west	save	964	517	424	{case,whatever}	\N
20	seek	street	833	366	425	{leg,easy}	\N
21	partner	few	2	552	554	{treatment,such}	\N
22	represent	stop	470	615	29	{song}	\N
25	himself	evidence	34	862	967	{two}	\N
27	try	after	15	773	774	{my,girl}	\N
28	which	which	256	276	113	{close}	\N
30	for	again	164	262	541	{both}	\N
31	offer	institution	673	280	664	{today,place}	\N
32	certain	factor	466	720	330	{local,put}	\N
34	shake	there	396	352	432	{experience}	\N
35	three	health	265	112	260	{have}	\N
37	ball	direction	231	19	407	{song}	\N
38	exist	quite	37	737	983	{one}	\N
40	everybody	candidate	558	853	226	{meeting,spend}	\N
43	successful	mean	676	647	437	{whom}	\N
44	next	record	756	306	129	{factor}	\N
45	life	allow	897	49	314	{explain}	\N
46	cost	else	880	79	318	{small,true}	\N
48	traditional	expect	134	9	575	{money}	\N
49	care	while	605	840	223	{great,until}	\N
50	purpose	and	176	848	889	{alone}	\N
53	food	recent	606	199	505	{great}	\N
54	view	doctor	961	682	400	{raise,sometimes}	\N
55	child	Mrs	517	512	18	{method,consumer}	\N
56	both	themselves	627	893	412	{positive,student}	\N
57	difference	brother	19	161	206	{company,international}	\N
58	explain	eat	831	577	802	{pull}	\N
59	indicate	purpose	348	440	219	{middle,spring}	\N
60	place	notice	691	99	858	{real,body}	\N
62	her	eye	787	546	241	{job}	\N
63	apply	cup	743	42	87	{senior}	\N
64	modern	whatever	174	171	933	{fish}	\N
65	trial	performance	275	778	341	{western,though}	\N
66	film	involve	377	347	349	{race}	\N
67	forget	shoulder	299	241	889	{action,production}	\N
69	bill	already	329	41	417	{decide}	\N
71	measure	step	849	129	350	{like}	\N
72	interview	letter	630	602	801	{meeting,back}	\N
73	support	work	79	585	564	{reduce}	\N
74	live	where	580	84	976	{number,our}	\N
75	world	against	374	913	303	{though}	\N
77	fact	wear	806	47	848	{discussion,arrive}	\N
79	occur	this	94	424	118	{too}	\N
80	pattern	artist	193	246	805	{entire,still}	\N
81	cause	research	166	119	462	{will}	\N
82	allow	technology	698	248	163	{bed}	\N
83	listen	always	446	933	988	{a,wind}	\N
84	data	test	826	994	556	{information,determine}	\N
86	nearly	loss	323	103	213	{seat,hot}	\N
88	throw	live	744	611	328	{imagine,situation}	\N
89	language	decision	401	321	409	{bank}	\N
90	experience	smile	66	936	325	{student,certainly}	\N
91	box	list	115	257	221	{remember,try}	\N
92	peace	bill	678	365	266	{clear}	\N
94	threat	these	253	370	84	{two,whether}	\N
95	within	goal	92	772	459	{protect}	\N
96	structure	professor	668	589	659	{home,human}	\N
97	local	development	964	233	400	{several,operation}	\N
98	course	level	43	336	192	{lawyer,garden}	\N
99	both	road	812	868	593	{market,wait}	\N
100	expect	billion	252	343	104	{miss}	\N
101	staff	this	251	226	21	{myself}	\N
102	whether	billion	412	75	275	{throw}	\N
104	remember	effect	298	769	812	{tree,green}	\N
105	go	herself	506	481	884	{street}	\N
106	poor	when	104	514	797	{same,drug}	\N
108	job	yeah	184	795	154	{agree}	\N
109	smile	then	842	887	328	{mention,individual}	\N
110	member	tonight	110	727	527	{product,amount}	\N
112	environment	expect	559	933	740	{law}	\N
113	car	conference	799	324	841	{shoulder}	\N
114	meeting	lawyer	183	307	444	{eat}	\N
116	smile	all	259	797	66	{business,reason}	\N
117	say	relationship	828	441	563	{through,clearly}	\N
118	eight	building	555	450	872	{officer,view}	\N
119	do	defense	12	406	857	{city,accept}	\N
120	force	above	176	265	498	{young}	\N
121	wish	law	813	662	956	{special,gas}	\N
122	two	about	1000	585	20	{main}	\N
123	fast	building	709	364	594	{rate}	\N
124	create	deep	608	129	142	{alone,work}	\N
125	news	happen	849	284	408	{national,improve}	\N
126	entire	perform	177	628	92	{suddenly}	\N
128	major	officer	513	915	665	{tax,energy}	\N
129	development	meeting	953	703	655	{option}	\N
130	yes	see	245	321	507	{money,fly}	\N
131	agency	spring	980	231	730	{career,lead}	\N
132	begin	manage	346	574	626	{fight,section}	\N
133	system	tonight	996	662	225	{process}	\N
134	image	democratic	944	74	782	{ten,challenge}	\N
135	consider	crime	164	524	785	{color}	\N
136	computer	second	320	306	710	{science,series}	\N
137	bring	treat	870	566	381	{others}	\N
138	him	I	719	719	755	{compare,no}	\N
140	matter	administration	919	621	984	{field,concern}	\N
141	this	include	181	160	257	{market,church}	\N
142	exactly	put	223	965	584	{believe}	\N
144	effect	skill	394	528	866	{walk}	\N
149	seven	peace	456	872	947	{that}	\N
150	that	those	995	872	392	{final,exactly}	\N
151	happen	certainly	407	169	932	{five,huge}	\N
152	reveal	leg	449	130	638	{keep,total}	\N
155	rock	small	677	303	285	{nature}	\N
157	pretty	pretty	983	195	542	{main,seek}	\N
158	response	shoulder	593	22	32	{heavy}	\N
159	medical	trial	856	267	212	{seem}	\N
160	agree	adult	292	152	556	{take}	\N
162	fear	early	853	700	458	{tough}	\N
163	chance	kid	559	366	503	{rise,should}	\N
164	add	will	877	125	788	{effort}	\N
165	send	big	585	901	393	{organization}	\N
166	task	cost	291	831	111	{too}	\N
168	wide	next	559	304	989	{perform}	\N
169	rise	reach	77	513	383	{body,quality}	\N
171	process	community	777	542	332	{health}	\N
172	yet	close	127	453	736	{Republican,arrive}	\N
173	his	whether	359	313	553	{mouth,back}	\N
174	century	baby	348	802	749	{final,seat}	\N
176	quite	image	392	209	571	{house}	\N
177	never	clearly	285	651	613	{require}	\N
178	give	join	946	473	616	{often,play}	\N
181	green	feeling	369	539	4	{recently,travel}	\N
182	where	treat	594	437	994	{hair,capital}	\N
183	seek	out	345	882	637	{prepare}	\N
184	sign	find	505	764	254	{small,meeting}	\N
185	shoulder	yard	645	22	417	{affect}	\N
186	somebody	whether	649	798	960	{get,should}	\N
189	on	meeting	358	935	271	{commercial,outside}	\N
190	camera	hit	895	702	558	{first,become}	\N
191	goal	leg	156	474	853	{nature,age}	\N
192	image	situation	497	174	479	{by}	\N
193	common	hope	278	523	101	{energy,will}	\N
194	minute	try	72	364	69	{camera,between}	\N
195	when	buy	21	169	520	{design}	\N
196	away	theory	708	96	412	{happy,particular}	\N
198	girl	scene	243	908	342	{town,heavy}	\N
199	writer	model	71	77	716	{win,section}	\N
200	first	tend	480	524	572	{decide}	\N
201	article	friend	173	305	669	{yourself,keep}	\N
202	throughout	nature	365	625	758	{financial}	\N
203	whole	within	402	575	410	{before}	\N
204	whom	cell	496	809	266	{measure,reality}	\N
205	probably	or	734	228	265	{name}	\N
206	oil	forget	865	677	32	{speech,economy}	\N
207	suddenly	rather	325	951	443	{though}	\N
208	improve	something	805	276	195	{put}	\N
210	policy	room	596	936	956	{decision}	\N
211	local	eye	621	969	269	{wrong,exactly}	\N
212	population	military	540	167	142	{contain}	\N
215	executive	direction	119	736	212	{including,all}	\N
216	business	wear	70	109	234	{commercial,federal}	\N
217	sense	social	330	505	951	{story}	\N
218	character	view	979	192	47	{good}	\N
221	medical	force	351	679	858	{car,role}	\N
222	focus	understand	121	628	710	{together}	\N
223	economy	course	98	228	410	{hope}	\N
224	government	tonight	507	461	387	{available}	\N
225	top	maintain	997	238	242	{across,feeling}	\N
227	worry	base	217	463	733	{decision,piece}	\N
228	office	protect	339	509	608	{huge}	\N
229	production	score	932	219	81	{myself}	\N
231	significant	capital	328	911	393	{age,out}	\N
233	high	film	902	845	777	{Mr}	\N
235	life	respond	397	149	898	{debate}	\N
236	clear	better	579	389	261	{service}	\N
237	question	simply	82	474	668	{list,four}	\N
238	thank	ok	928	15	37	{drug}	\N
239	know	far	538	861	133	{short}	\N
240	include	stop	956	281	800	{short}	\N
241	something	it	443	94	195	{where}	\N
242	maybe	deep	512	653	134	{black,everything}	\N
243	method	great	704	837	866	{add}	\N
244	age	Congress	679	459	400	{suggest,design}	\N
245	weight	blue	647	275	993	{about,happy}	\N
246	opportunity	discuss	658	651	249	{sister}	\N
247	buy	boy	62	603	958	{moment}	\N
248	benefit	especially	359	439	620	{south}	\N
249	specific	candidate	927	362	561	{drive,ability}	\N
252	difference	green	762	626	739	{own}	\N
253	without	real	258	182	1000	{trade}	\N
254	when	call	155	61	941	{performance}	\N
257	organization	oil	514	380	102	{less,movie}	\N
258	full	personal	42	130	545	{teach}	\N
259	necessary	suddenly	454	681	132	{close,record}	\N
260	thus	before	782	725	921	{imagine,raise}	\N
261	research	pick	26	755	538	{now,need}	\N
262	born	future	93	257	820	{fish,hit}	\N
264	economy	pattern	60	751	268	{light,person}	\N
265	table	mouth	753	134	267	{card,price}	\N
266	pattern	up	827	120	877	{present,believe}	\N
269	somebody	mission	946	347	522	{reason,authority}	\N
270	day	information	980	918	599	{seat,beat}	\N
271	reach	reason	108	133	669	{generation,property}	\N
273	pick	audience	919	852	299	{music}	\N
274	husband	fall	205	380	399	{skin,season}	\N
275	care	foreign	100	420	354	{since}	\N
276	seat	green	589	67	45	{here,attorney}	\N
277	PM	speech	835	819	667	{film,home}	\N
278	result	relate	428	306	327	{still,later}	\N
279	girl	its	280	334	767	{television}	\N
281	crime	field	937	745	334	{air,interview}	\N
282	design	may	587	71	463	{discussion,travel}	\N
284	dog	beyond	950	760	994	{own,picture}	\N
286	effort	institution	945	593	821	{sell}	\N
288	laugh	explain	590	874	258	{down}	\N
290	production	guess	371	965	817	{resource,bag}	\N
291	around	indicate	413	315	476	{nation,size}	\N
293	chance	just	152	257	704	{two}	\N
294	tax	father	577	137	929	{ability}	\N
295	rate	campaign	190	785	421	{fall}	\N
296	federal	by	832	102	559	{yeah,data}	\N
298	analysis	city	69	648	585	{green}	\N
299	leave	interest	876	75	814	{other}	\N
300	detail	able	659	859	178	{science,response}	\N
301	water	everyone	23	605	377	{food,task}	\N
302	eat	order	827	291	226	{some}	\N
303	medical	season	506	887	921	{data}	\N
304	until	manager	464	692	376	{control}	\N
306	push	station	207	9	765	{respond,treatment}	\N
307	apply	support	898	499	79	{cause,become}	\N
308	hit	finish	904	523	816	{quality,research}	\N
309	buy	term	361	872	470	{remember}	\N
311	mean	agree	123	842	310	{their,take}	\N
313	surface	recognize	422	556	963	{lot,lay}	\N
314	factor	concern	646	596	316	{cultural,difference}	\N
315	own	season	135	519	455	{page}	\N
316	player	have	792	998	167	{cause,TV}	\N
317	girl	raise	10	435	754	{movie}	\N
318	guy	politics	431	412	289	{play}	\N
319	experience	account	93	948	93	{executive}	\N
321	health	real	768	873	493	{everybody,run}	\N
322	model	late	468	823	120	{spring,magazine}	\N
323	response	upon	149	426	152	{bad}	\N
324	likely	against	834	267	377	{form}	\N
325	responsibility	life	806	295	973	{operation,rather}	\N
326	shoulder	fund	962	527	295	{interview,lay}	\N
327	certainly	anyone	281	444	344	{similar,story}	\N
328	any	group	733	850	504	{fast,action}	\N
329	certain	less	436	94	66	{computer}	\N
330	least	style	990	154	235	{although}	\N
331	support	performance	260	160	492	{effect}	\N
332	people	natural	666	741	192	{follow}	\N
333	money	yes	438	627	978	{activity}	\N
335	free	study	969	668	993	{city}	\N
336	change	event	567	696	430	{right}	\N
337	class	sea	701	286	184	{lay,she}	\N
338	evening	teacher	813	722	879	{shoulder}	\N
341	report	eye	699	521	510	{clear,we}	\N
342	life	work	621	875	491	{occur}	\N
343	security	ground	396	629	928	{everything}	\N
344	score	market	534	264	427	{already,choose}	\N
346	agency	assume	778	639	346	{summer,something}	\N
347	tend	week	9	776	747	{no,themselves}	\N
352	nice	blue	152	134	263	{the}	\N
353	day	consider	575	646	613	{wind}	\N
354	investment	until	855	624	522	{other}	\N
355	leader	consider	424	277	287	{husband,hand}	\N
356	movie	state	314	274	504	{impact}	\N
357	challenge	trouble	377	614	482	{part}	\N
358	defense	weight	181	621	778	{everybody}	\N
359	ok	anything	902	595	711	{west,together}	\N
360	box	law	154	60	517	{such,test}	\N
361	her	benefit	707	139	661	{turn}	\N
362	teach	add	638	506	492	{political,against}	\N
363	final	today	131	909	144	{manage,reality}	\N
364	them	full	91	651	552	{stand}	\N
365	opportunity	marriage	177	702	119	{throughout}	\N
366	any	culture	205	516	582	{box,to}	\N
368	whatever	the	313	842	631	{dinner}	\N
369	also	travel	761	230	287	{contain,later}	\N
370	begin	she	616	737	531	{whatever,look}	\N
372	three	each	257	921	789	{life}	\N
373	black	take	588	43	356	{garden}	\N
374	society	apply	743	106	308	{production,her}	\N
376	single	administration	81	143	948	{full,professor}	\N
377	set	walk	957	738	654	{marriage}	\N
379	thank	while	910	330	982	{land}	\N
380	parent	small	946	823	810	{she}	\N
383	this	kid	429	549	957	{the,vote}	\N
384	owner	market	920	225	648	{onto,similar}	\N
386	song	its	247	221	919	{plant,property}	\N
387	what	camera	560	21	257	{year,strategy}	\N
388	food	brother	543	269	485	{lawyer}	\N
390	there	important	671	558	372	{mouth}	\N
391	even	memory	316	457	699	{necessary}	\N
393	kid	rise	901	847	222	{listen,in}	\N
394	measure	wide	821	869	786	{collection,anything}	\N
395	throw	there	910	300	164	{practice}	\N
396	produce	election	815	391	854	{one,board}	\N
398	wind	effort	683	704	819	{ok}	\N
399	future	second	976	10	942	{fact}	\N
400	add	water	765	576	965	{store}	\N
401	thank	need	32	798	443	{according,himself}	\N
403	surface	task	483	798	39	{throughout}	\N
404	answer	out	852	114	602	{light}	\N
407	cost	several	840	715	252	{with}	\N
410	action	forward	745	355	260	{page}	\N
411	interesting	central	425	386	368	{might,enough}	\N
413	language	sister	532	148	58	{music,record}	\N
414	behavior	sign	913	526	177	{bill,challenge}	\N
417	situation	draw	234	103	255	{special,deep}	\N
418	Mrs	easy	337	673	252	{morning,probably}	\N
419	bank	ago	379	505	668	{game}	\N
421	give	economy	860	129	154	{gas}	\N
422	similar	reflect	112	819	27	{east}	\N
423	attorney	capital	470	785	387	{summer,system}	\N
425	state	service	20	476	407	{lawyer}	\N
426	task	through	401	6	558	{maintain}	\N
427	view	suddenly	163	679	184	{yet,fill}	\N
428	its	strong	78	794	550	{leg}	\N
430	manage	whether	814	42	959	{boy}	\N
431	mouth	our	708	627	670	{upon}	\N
433	sure	agency	574	97	657	{culture,his}	\N
437	store	would	652	460	514	{direction,minute}	\N
438	different	impact	716	405	716	{buy,beyond}	\N
440	theory	really	266	581	287	{charge}	\N
442	ask	official	147	265	262	{tend,everyone}	\N
443	usually	play	286	580	479	{clearly}	\N
444	fall	receive	134	982	259	{statement}	\N
445	trip	modern	821	594	551	{lawyer}	\N
446	page	cause	734	893	246	{newspaper}	\N
448	second	sport	80	157	806	{myself}	\N
451	me	history	871	391	143	{pass,good}	\N
452	newspaper	painting	737	407	366	{building}	\N
453	interesting	idea	727	148	357	{on,person}	\N
455	grow	though	475	23	298	{heavy}	\N
456	long	out	773	455	262	{field}	\N
458	dream	approach	645	842	106	{either}	\N
459	laugh	production	649	601	252	{day}	\N
460	represent	movie	407	125	935	{else}	\N
461	return	dinner	394	677	946	{around}	\N
463	type	down	829	207	782	{white,stage}	\N
464	available	arrive	559	629	237	{management,production}	\N
466	bank	write	991	281	788	{red,bill}	\N
467	officer	open	506	101	686	{leave}	\N
468	leader	never	17	465	772	{air}	\N
469	six	present	404	843	748	{company,suddenly}	\N
470	defense	enter	97	79	695	{way}	\N
471	country	decade	854	453	194	{local}	\N
473	alone	police	202	239	369	{talk}	\N
474	wrong	realize	54	470	46	{ready}	\N
475	certainly	yet	875	929	962	{single,reveal}	\N
476	half	family	598	514	67	{end,fact}	\N
477	foreign	make	816	525	863	{dog,girl}	\N
479	against	bank	932	893	489	{him}	\N
480	computer	above	603	767	325	{agent}	\N
481	next	suggest	570	872	285	{adult}	\N
482	spend	avoid	807	810	795	{identify,western}	\N
483	husband	among	533	810	25	{doctor}	\N
484	including	into	543	15	104	{long,establish}	\N
485	become	sport	378	769	565	{determine}	\N
486	develop	hear	597	76	497	{better}	\N
488	worker	that	932	333	370	{man}	\N
492	degree	dream	786	646	253	{design,between}	\N
493	family	example	407	564	291	{may}	\N
494	white	whose	175	927	959	{training,successful}	\N
495	name	age	130	290	565	{control,personal}	\N
496	maintain	year	102	284	740	{necessary,guy}	\N
500	practice	common	373	819	766	{must}	\N
501	least	represent	428	768	168	{turn}	\N
503	others	smile	925	203	239	{science}	\N
505	manage	machine	470	202	801	{see}	\N
507	gun	growth	955	651	10	{performance}	\N
508	cold	note	169	260	921	{artist}	\N
509	outside	today	784	909	87	{which}	\N
510	have	try	541	206	215	{current,book}	\N
511	far	sit	503	519	381	{take,recent}	\N
513	series	hundred	639	305	979	{nice,seven}	\N
514	health	nor	373	24	500	{worry}	\N
516	number	sure	597	352	348	{star}	\N
517	so	chair	200	719	527	{reality,development}	\N
519	notice	their	757	590	927	{network,drug}	\N
520	game	today	170	853	275	{front,point}	\N
521	choose	heart	826	406	622	{brother,tell}	\N
522	financial	ok	16	620	776	{herself}	\N
524	suffer	upon	215	717	488	{picture,seat}	\N
525	final	debate	149	394	884	{late,on}	\N
528	enter	strong	333	347	317	{population}	\N
529	moment	turn	84	337	123	{all}	\N
530	door	explain	708	302	983	{example,build}	\N
531	financial	bill	239	28	986	{time}	\N
533	hair	painting	388	431	950	{less,explain}	\N
536	evidence	worker	250	731	405	{realize,reach}	\N
537	culture	his	156	738	307	{organization,keep}	\N
539	better	key	692	150	32	{wide,focus}	\N
540	cost	skill	351	896	821	{five,school}	\N
541	add	suffer	619	115	598	{source,page}	\N
542	read	gas	679	283	440	{so}	\N
543	girl	agent	771	89	655	{same,nothing}	\N
544	like	probably	226	892	621	{rise,hold}	\N
545	reason	husband	804	237	56	{work}	\N
546	grow	same	527	524	167	{various}	\N
547	body	site	50	906	70	{final}	\N
551	visit	eat	273	303	596	{student,begin}	\N
552	morning	such	188	216	401	{ability}	\N
553	my	kind	569	718	464	{person}	\N
554	police	record	417	123	17	{standard}	\N
555	model	big	96	780	190	{responsibility}	\N
556	risk	government	312	928	826	{so}	\N
557	simple	heavy	322	900	744	{Mrs}	\N
560	onto	create	813	234	681	{would}	\N
562	blood	wonder	806	832	761	{condition}	\N
563	no	treatment	732	259	540	{modern,finally}	\N
564	kid	magazine	740	34	742	{owner,war}	\N
565	simple	purpose	334	359	366	{different,long}	\N
567	item	order	396	92	437	{necessary}	\N
568	out	station	502	899	352	{ball}	\N
569	positive	per	117	246	75	{wrong,check}	\N
570	choice	computer	546	312	943	{item,employee}	\N
571	popular	key	380	420	468	{body,Republican}	\N
572	those	economy	406	982	483	{power}	\N
573	air	meet	310	173	310	{consumer}	\N
574	the	around	729	745	154	{threat}	\N
575	knowledge	behind	643	156	139	{while}	\N
576	deep	rock	627	260	242	{a,door}	\N
577	baby	quickly	176	284	877	{suddenly,stop}	\N
578	husband	ahead	439	158	564	{simple,system}	\N
580	occur	yes	71	702	192	{father,move}	\N
581	officer	business	48	744	978	{election}	\N
582	us	attorney	754	986	375	{else,leader}	\N
584	fly	edge	124	190	972	{both,seem}	\N
585	environmental	who	907	629	729	{discover}	\N
586	whatever	music	858	869	312	{record,conference}	\N
587	defense	property	251	369	791	{environment}	\N
588	rest	real	298	715	583	{career}	\N
589	run	budget	1000	139	229	{bring,serve}	\N
590	leave	consider	273	145	167	{happy}	\N
591	money	place	588	523	522	{type,side}	\N
592	crime	happy	450	595	525	{law,report}	\N
594	program	interesting	284	211	235	{series}	\N
596	military	cultural	51	803	369	{answer}	\N
597	individual	themselves	695	713	889	{wait}	\N
598	share	improve	660	672	202	{concern,relationship}	\N
599	summer	lead	708	859	856	{during}	\N
601	future	statement	874	376	512	{first,born}	\N
602	who	teach	524	327	681	{treat,last}	\N
604	expect	usually	74	269	65	{see,land}	\N
609	structure	hot	670	737	580	{from,night}	\N
610	also	example	263	692	177	{deal,four}	\N
612	five	someone	853	493	995	{response}	\N
614	Republican	former	483	584	496	{tonight,final}	\N
615	without	answer	175	577	726	{play,rather}	\N
616	reality	economic	566	742	576	{service,financial}	\N
617	television	agency	383	53	861	{stop,say}	\N
618	game	need	244	705	661	{someone,avoid}	\N
619	price	might	777	893	366	{more}	\N
620	of	lawyer	953	853	47	{chance,central}	\N
621	although	democratic	828	178	583	{information,officer}	\N
622	reality	resource	240	906	898	{fact}	\N
623	hotel	nice	522	214	410	{example,character}	\N
624	identify	dark	142	174	338	{again}	\N
625	free	south	760	633	543	{hard,to}	\N
626	say	reality	438	480	469	{PM,decade}	\N
629	risk	activity	731	671	526	{then}	\N
630	even	election	461	835	547	{figure,event}	\N
631	institution	run	56	88	740	{than}	\N
632	full	organization	141	455	407	{add}	\N
633	suggest	avoid	874	608	38	{wear}	\N
634	physical	money	461	501	400	{open,trip}	\N
635	act	food	775	178	863	{region,book}	\N
636	service	baby	29	570	63	{high}	\N
637	company	from	236	457	871	{where,kind}	\N
638	catch	threat	764	105	398	{use}	\N
639	realize	whole	953	420	477	{box,teach}	\N
640	fill	believe	411	555	887	{beyond,pressure}	\N
641	table	or	759	877	490	{through}	\N
642	administration	people	995	141	626	{court}	\N
644	wide	four	436	54	465	{beyond}	\N
647	service	consider	321	870	772	{future,many}	\N
649	feel	feel	550	327	324	{young,outside}	\N
650	possible	few	958	651	350	{prove,cold}	\N
651	certainly	understand	474	332	497	{defense,body}	\N
652	before	scientist	224	171	247	{buy}	\N
653	form	attention	252	53	800	{community,control}	\N
654	nor	individual	64	337	430	{reach}	\N
655	TV	term	615	610	903	{tend,fly}	\N
656	face	challenge	875	296	929	{end}	\N
657	name	court	394	686	793	{into}	\N
658	single	word	924	992	983	{feeling,necessary}	\N
659	simple	full	631	860	916	{case}	\N
660	allow	old	627	328	394	{check}	\N
661	long	machine	99	445	5	{add,American}	\N
662	bed	it	975	157	115	{meet}	\N
664	public	environmental	199	163	169	{stop}	\N
667	participant	none	368	798	179	{drug}	\N
669	keep	table	579	147	215	{west,rate}	\N
671	nature	building	542	473	909	{community}	\N
675	theory	some	108	457	736	{administration,provide}	\N
676	consumer	administration	442	381	664	{player,interesting}	\N
677	trip	teach	422	447	377	{I}	\N
678	no	stuff	244	246	22	{way}	\N
679	when	much	804	632	452	{ask}	\N
681	level	key	805	286	426	{approach}	\N
682	who	arrive	791	677	384	{blue,drop}	\N
683	event	system	766	49	519	{ever,cold}	\N
684	public	notice	536	373	599	{authority}	\N
685	project	control	883	252	651	{method}	\N
686	full	sense	825	20	375	{take}	\N
687	heart	material	484	654	28	{authority,purpose}	\N
689	wall	also	100	132	552	{before,power}	\N
691	artist	into	325	449	120	{real}	\N
692	pick	product	887	715	379	{local}	\N
693	rich	stock	905	929	201	{outside}	\N
694	meeting	lead	90	4	525	{turn,doctor}	\N
695	body	nor	94	315	500	{why}	\N
696	to	lay	306	402	644	{they}	\N
697	property	represent	284	931	636	{marriage,pressure}	\N
698	speak	cause	932	891	330	{southern,interest}	\N
699	however	personal	276	527	178	{west,half}	\N
700	board	yet	605	187	329	{almost,suggest}	\N
701	word	value	710	424	702	{into,company}	\N
702	inside	ahead	646	226	314	{look}	\N
703	us	read	506	997	842	{culture}	\N
704	science	interesting	266	866	859	{space,able}	\N
705	choose	significant	901	311	142	{building}	\N
706	teacher	at	467	872	39	{give,environment}	\N
707	one	organization	584	933	334	{away,why}	\N
708	door	generation	1000	15	551	{thousand}	\N
709	suddenly	international	638	830	67	{view,economy}	\N
713	agent	wonder	511	543	352	{traditional}	\N
714	would	audience	57	632	120	{coach}	\N
715	how	radio	543	313	772	{heavy}	\N
716	scene	power	154	234	887	{key}	\N
717	sing	oil	362	920	707	{political,step}	\N
718	suddenly	cut	138	293	592	{computer}	\N
719	day	enter	611	272	59	{hour}	\N
720	now	source	989	290	864	{same,two}	\N
721	drop	present	861	829	70	{management}	\N
722	successful	bed	696	35	954	{foot,happen}	\N
723	yeah	control	425	364	964	{tax,shoulder}	\N
724	million	church	152	184	809	{official}	\N
725	stay	large	965	61	375	{operation}	\N
726	be	social	330	834	223	{wind}	\N
727	free	follow	708	913	722	{station,exactly}	\N
728	apply	bad	702	750	921	{modern}	\N
730	senior	wait	818	136	707	{five,action}	\N
731	true	game	807	787	392	{fill,ask}	\N
733	population	challenge	908	304	719	{style,response}	\N
735	improve	seem	119	183	509	{apply,three}	\N
736	indicate	see	966	610	650	{Republican,entire}	\N
737	land	evening	996	432	858	{process}	\N
738	old	fine	969	890	145	{woman,though}	\N
739	whatever	affect	300	398	632	{them,senior}	\N
740	difference	myself	207	613	278	{who,accept}	\N
743	though	treat	924	694	26	{huge}	\N
744	space	machine	466	272	769	{carry}	\N
745	suddenly	something	823	87	417	{very,leader}	\N
746	modern	attention	597	737	134	{store,improve}	\N
747	add	table	862	791	239	{southern}	\N
748	hand	amount	64	421	616	{cup}	\N
751	event	happy	848	47	599	{anyone,rule}	\N
753	within	rather	877	788	176	{hundred,answer}	\N
755	whatever	fund	791	719	223	{minute,old}	\N
756	cause	our	852	550	331	{design,once}	\N
758	teacher	wide	248	882	166	{different}	\N
759	drop	practice	208	142	169	{must}	\N
762	between	eat	319	791	226	{game,fish}	\N
763	red	everyone	668	457	345	{chair}	\N
764	poor	race	844	237	123	{part,everything}	\N
765	finish	official	570	470	11	{color}	\N
766	it	science	554	113	197	{attack}	\N
767	Mr	smile	220	532	622	{or,discuss}	\N
768	role	woman	271	943	358	{son,foot}	\N
769	thus	push	30	896	11	{remember,all}	\N
770	owner	race	79	324	464	{boy,analysis}	\N
771	sport	blue	690	891	114	{about}	\N
773	wear	find	30	573	233	{this,successful}	\N
774	enough	speech	545	973	939	{officer}	\N
775	according	relationship	65	17	893	{protect}	\N
776	decide	response	591	87	530	{short,remember}	\N
777	my	pressure	9	557	287	{maintain,cause}	\N
778	since	fish	395	895	414	{room,paper}	\N
779	special	talk	185	778	491	{spring,run}	\N
781	by	tend	867	325	149	{true}	\N
782	story	my	42	902	419	{myself,movement}	\N
783	responsibility	right	901	804	67	{get}	\N
784	her	relationship	421	560	399	{statement,newspaper}	\N
785	travel	paper	223	199	312	{fly,character}	\N
786	strategy	simple	932	531	24	{choice,call}	\N
787	in	remember	534	759	547	{senior}	\N
790	current	let	102	859	969	{western}	\N
791	for	member	441	487	979	{table}	\N
792	choice	financial	224	580	480	{worry}	\N
795	entire	total	377	444	837	{test}	\N
796	thank	instead	454	267	965	{hard,control}	\N
797	from	all	822	580	235	{produce,trip}	\N
798	enough	debate	887	109	186	{style,pretty}	\N
800	me	close	472	923	113	{wall}	\N
801	its	Mrs	525	94	910	{approach,control}	\N
803	thing	sea	586	172	441	{unit,leader}	\N
804	check	painting	454	748	250	{attorney,part}	\N
805	who	rest	393	29	984	{include,choose}	\N
806	war	heavy	294	266	26	{forward}	\N
807	sometimes	information	641	527	679	{after}	\N
808	increase	admit	301	758	83	{staff}	\N
810	cultural	pull	828	695	484	{decade}	\N
812	whose	and	20	286	38	{nature,reason}	\N
813	speak	wind	181	551	489	{at,brother}	\N
814	change	approach	466	895	351	{suffer}	\N
815	almost	successful	991	232	355	{good}	\N
816	month	meet	452	525	203	{born,attack}	\N
817	health	national	184	238	84	{ten,person}	\N
818	cover	be	179	328	5	{site,wife}	\N
819	recently	enjoy	836	635	540	{society}	\N
820	important	door	858	433	228	{charge,sing}	\N
821	item	three	532	995	982	{executive,claim}	\N
823	sense	laugh	409	524	437	{minute,read}	\N
824	help	check	346	579	948	{boy}	\N
825	reality	what	484	853	750	{kid,bad}	\N
828	something	nation	356	959	725	{special,beyond}	\N
829	newspaper	everyone	408	565	386	{trial,leg}	\N
830	quality	themselves	368	556	558	{what}	\N
831	chance	cold	21	873	674	{its}	\N
834	particularly	scientist	17	164	841	{federal,man}	\N
835	choice	miss	225	156	116	{statement,able}	\N
836	later	bank	177	70	98	{mother,buy}	\N
837	central	bed	748	671	480	{president}	\N
838	during	goal	278	53	542	{two,partner}	\N
840	they	according	449	114	347	{morning,try}	\N
844	become	dog	273	192	155	{southern}	\N
845	majority	face	986	361	991	{ahead,treatment}	\N
846	least	activity	647	608	813	{left,per}	\N
848	sister	each	737	937	862	{all}	\N
850	soldier	white	632	541	934	{citizen}	\N
852	right	information	410	436	501	{yard,we}	\N
853	Mrs	send	799	35	545	{relationship}	\N
854	produce	kind	377	255	160	{across}	\N
855	personal	hand	406	455	523	{program,safe}	\N
856	foreign	firm	611	880	347	{good,foot}	\N
857	official	on	349	84	607	{song}	\N
858	adult	seem	143	940	869	{authority,phone}	\N
859	foreign	spring	181	94	9	{actually}	\N
860	also	reflect	188	286	199	{good,continue}	\N
862	wish	add	997	881	943	{hospital,live}	\N
863	rise	talk	394	890	108	{though,report}	\N
864	always	range	248	73	745	{avoid,whether}	\N
865	brother	anything	703	619	28	{black,cause}	\N
866	professional	give	58	298	354	{work}	\N
867	bar	billion	636	450	325	{far}	\N
868	admit	deep	546	324	942	{very,ready}	\N
869	cold	customer	968	778	750	{onto}	\N
871	name	term	416	754	127	{ahead}	\N
872	term	two	937	957	794	{especially,model}	\N
873	moment	bar	996	357	180	{our,her}	\N
874	occur	million	42	147	951	{heavy,bed}	\N
875	town	share	718	628	421	{eat}	\N
877	pressure	citizen	831	610	263	{company}	\N
879	anyone	write	150	332	175	{sure,west}	\N
880	hotel	left	592	949	937	{others}	\N
881	all	phone	917	658	81	{fish,itself}	\N
882	effort	store	402	501	747	{conference}	\N
883	research	either	642	758	298	{student}	\N
884	age	upon	649	959	276	{four,use}	\N
885	drop	build	128	262	989	{attorney}	\N
886	huge	peace	123	854	688	{already}	\N
888	head	child	244	43	231	{fear}	\N
889	itself	require	835	955	99	{mother}	\N
890	police	his	674	117	45	{walk,break}	\N
891	seven	test	151	835	356	{threat}	\N
892	meeting	perhaps	863	818	932	{never,sense}	\N
893	red	cut	814	629	640	{growth}	\N
894	even	should	550	588	502	{ground}	\N
895	international	student	849	620	408	{rate}	\N
897	measure	growth	16	828	590	{whose,recent}	\N
899	article	more	288	562	313	{operation,audience}	\N
900	cover	idea	393	121	832	{trip}	\N
901	clear	far	657	682	798	{fine}	\N
902	hair	find	907	764	962	{right}	\N
903	time	material	727	458	97	{car,political}	\N
904	future	hot	160	282	117	{them,once}	\N
905	call	few	842	217	337	{major}	\N
907	travel	minute	495	368	657	{almost}	\N
909	these	carry	55	541	303	{once,idea}	\N
910	leader	person	235	857	754	{live}	\N
911	rest	floor	263	893	2	{defense,matter}	\N
912	visit	often	144	438	784	{rest,development}	\N
913	nature	hundred	819	853	283	{range}	\N
914	two	ground	437	415	146	{beyond}	\N
915	person	wrong	843	531	683	{watch}	\N
917	way	brother	258	581	773	{already}	\N
918	necessary	fire	264	946	494	{radio}	\N
919	kitchen	now	932	961	858	{himself}	\N
920	interest	step	266	659	931	{effect}	\N
921	get	determine	705	378	705	{everybody,ok}	\N
922	purpose	until	785	195	109	{very}	\N
923	if	loss	348	587	338	{staff,real}	\N
924	them	trip	809	708	264	{system,state}	\N
925	give	those	283	792	362	{evidence}	\N
927	difference	leg	903	355	792	{whom,across}	\N
928	again	product	109	609	544	{represent}	\N
930	theory	buy	434	409	637	{paper}	\N
931	anyone	democratic	157	749	602	{give}	\N
933	thousand	condition	420	940	803	{picture}	\N
934	begin	it	676	505	221	{believe,college}	\N
935	goal	possible	798	38	882	{lay,those}	\N
936	now	head	143	258	843	{main,mean}	\N
937	task	add	447	342	534	{let,father}	\N
938	just	system	41	319	515	{thank,bank}	\N
939	station	none	271	164	297	{argue,easy}	\N
940	live	first	343	998	153	{month,pass}	\N
941	address	imagine	690	453	964	{ball,carry}	\N
942	near	would	917	908	393	{upon}	\N
943	force	everybody	211	995	953	{wall,left}	\N
945	tree	author	979	633	642	{care,whose}	\N
948	include	main	20	669	455	{law}	\N
949	heart	whether	828	902	764	{real,certain}	\N
950	order	good	632	850	215	{pressure,story}	\N
951	surface	middle	169	45	40	{true,fight}	\N
952	consumer	child	978	555	701	{which}	\N
953	hot	performance	447	932	52	{somebody}	\N
954	technology	into	602	590	499	{police}	\N
955	ball	impact	691	92	345	{shake,me}	\N
958	easy	myself	430	695	405	{well}	\N
959	hot	professor	2	289	34	{door,gun}	\N
960	main	travel	185	634	259	{question,matter}	\N
961	over	success	313	103	305	{write}	\N
963	education	away	690	409	565	{certainly}	\N
964	strong	major	305	3	745	{join,account}	\N
965	view	door	263	166	613	{image}	\N
966	whom	child	800	719	697	{ability,source}	\N
967	coach	American	740	24	226	{expect,buy}	\N
968	best	tonight	688	5	541	{deep,least}	\N
969	that	manage	818	989	792	{name}	\N
970	actually	physical	940	799	406	{through,to}	\N
971	they	anyone	228	94	627	{people,front}	\N
973	put	month	611	262	841	{scientist,gas}	\N
974	in	team	300	635	264	{book}	\N
976	she	subject	225	792	881	{organization}	\N
977	final	treat	23	108	224	{score,where}	\N
978	police	product	330	225	167	{next}	\N
979	product	parent	398	269	264	{travel}	\N
980	white	edge	385	43	787	{only}	\N
981	season	factor	737	509	962	{matter,security}	\N
983	heavy	answer	294	937	287	{cause,computer}	\N
985	crime	stuff	63	74	267	{total}	\N
986	strategy	budget	214	465	885	{sure,live}	\N
987	take	relate	346	864	5	{including,young}	\N
989	physical	former	376	956	624	{partner,go}	\N
990	that	of	760	443	883	{yet,minute}	\N
991	population	note	99	83	980	{themselves}	\N
992	cause	power	936	375	583	{language,religious}	\N
996	thought	already	99	710	356	{turn,story}	\N
997	reveal	play	830	789	888	{dark}	\N
998	couple	product	966	496	577	{your}	\N
999	share	nice	204	697	256	{leader}	\N
1000	grow	purpose	996	967	571	{friend}	\N
1001	though	color	293	852	853	{up}	\N
1003	participant	recognize	69	736	161	{water,often}	\N
1004	until	alone	784	830	134	{although}	\N
1005	choice	late	198	945	783	{government}	\N
1006	leg	Congress	427	222	801	{produce,per}	\N
1007	put	hundred	869	502	178	{by}	\N
1008	medical	matter	511	249	209	{spend}	\N
1009	with	become	156	251	922	{carry}	\N
1011	plan	often	266	990	67	{two,whatever}	\N
1012	later	role	365	541	286	{traditional}	\N
1013	tough	I	581	481	444	{open}	\N
1014	rich	old	130	568	604	{important}	\N
1016	serve	stage	230	455	692	{check,cost}	\N
1017	production	Congress	686	581	188	{grow}	\N
1019	behavior	capital	680	738	478	{art,necessary}	\N
1020	walk	north	160	469	206	{glass,Mrs}	\N
1021	Democrat	radio	289	613	214	{professor}	\N
1022	animal	level	226	290	109	{fire}	\N
1023	their	last	233	867	435	{news}	\N
1027	provide	want	13	777	468	{morning,discover}	\N
1028	decade	drop	250	664	108	{body}	\N
1029	authority	like	53	757	392	{model}	\N
1031	necessary	edge	497	378	563	{set,bed}	\N
1032	if	entire	950	661	609	{any,surface}	\N
1033	wall	look	986	244	531	{interesting}	\N
1034	gun	beautiful	643	45	989	{describe}	\N
1035	life	prevent	859	324	37	{level}	\N
1036	hit	turn	862	720	183	{wind,lose}	\N
1037	effect	environment	148	258	517	{commercial,town}	\N
1039	front	decade	970	393	859	{hospital,environment}	\N
1040	still	benefit	216	39	543	{woman,these}	\N
1041	star	bar	987	493	977	{actually}	\N
1043	cup	move	713	306	952	{box,they}	\N
1044	camera	international	860	824	791	{professor}	\N
1046	form	them	993	789	584	{ever}	\N
1047	owner	difference	38	639	323	{run}	\N
1048	alone	table	541	667	183	{affect,plan}	\N
1049	institution	film	83	420	739	{politics}	\N
1050	rest	program	558	45	811	{gun}	\N
1051	stay	eight	959	684	955	{growth,probably}	\N
1053	entire	despite	862	823	88	{yourself,follow}	\N
1054	eye	campaign	11	292	217	{his,medical}	\N
1055	season	gas	855	984	641	{protect}	\N
1056	admit	group	457	816	863	{into,professor}	\N
1057	relationship	from	717	178	307	{smile}	\N
1058	develop	agree	338	934	341	{nearly}	\N
1059	pattern	least	42	53	983	{college}	\N
1060	answer	campaign	187	616	474	{today,shake}	\N
1061	start	central	731	38	273	{eat,line}	\N
1062	matter	career	68	736	656	{base}	\N
1063	teach	never	933	886	13	{possible}	\N
1064	should	range	424	356	277	{push,when}	\N
1065	senior	into	396	114	313	{certain,series}	\N
1068	build	huge	487	726	783	{near}	\N
1069	to	past	909	906	359	{memory}	\N
1071	candidate	general	660	892	564	{class}	\N
1073	available	gas	133	141	623	{along}	\N
1074	technology	once	794	35	611	{sea,thus}	\N
1075	one	foot	361	8	921	{month}	\N
1076	need	remember	856	9	66	{well,green}	\N
1077	nor	partner	734	444	732	{various,culture}	\N
1078	body	easy	702	137	402	{cover,alone}	\N
1079	beautiful	medical	369	803	459	{read,so}	\N
1080	miss	type	906	487	191	{short,direction}	\N
1081	make	spring	319	236	712	{spring}	\N
1082	feeling	into	62	803	8	{show}	\N
1083	various	their	475	3	1000	{thousand}	\N
1084	wind	organization	729	402	825	{southern,yeah}	\N
1085	writer	five	608	873	865	{key,nice}	\N
1086	begin	force	741	224	166	{develop}	\N
1087	American	brother	925	940	339	{note,hundred}	\N
1088	without	least	125	955	823	{nothing}	\N
1090	go	life	795	723	85	{end,represent}	\N
1092	along	single	633	105	363	{time}	\N
1093	dream	truth	896	948	506	{thousand}	\N
1094	forward	could	442	224	65	{whose}	\N
1095	history	current	650	258	337	{hit,strategy}	\N
1096	mission	later	378	596	335	{push,traditional}	\N
1097	along	campaign	636	614	667	{process}	\N
1099	wish	action	710	123	459	{including,final}	\N
1100	kind	plant	231	977	312	{happy,middle}	\N
1101	half	sure	975	695	144	{pull}	\N
1102	guess	prevent	723	522	631	{source}	\N
1103	tell	act	864	594	318	{real}	\N
1104	song	foreign	114	273	654	{economy}	\N
1107	first	serve	56	145	505	{poor,camera}	\N
1108	same	world	299	763	385	{employee}	\N
1109	would	scene	448	133	702	{not}	\N
1111	position	method	534	190	64	{general}	\N
1112	concern	reason	20	356	244	{draw}	\N
1114	drop	sit	425	170	804	{decade}	\N
1115	lead	share	225	967	523	{future}	\N
1116	night	task	160	881	562	{home}	\N
1118	wait	environmental	370	341	749	{itself}	\N
1119	two	important	262	900	996	{you,doctor}	\N
1121	power	image	690	470	39	{light,language}	\N
1122	glass	compare	952	308	692	{before,develop}	\N
1123	own	senior	813	395	495	{onto,crime}	\N
1124	development	senior	123	600	977	{bag}	\N
1125	term	growth	109	435	76	{current}	\N
1206	up	voice	959	339	157	{our}	\N
1126	Democrat	occur	646	10	252	{control,look}	\N
1127	prevent	could	73	968	218	{popular,left}	\N
1128	weight	dinner	931	304	293	{child,now}	\N
1129	mention	member	714	572	587	{apply}	\N
1130	occur	most	474	386	86	{magazine}	\N
1132	indicate	tough	738	303	835	{situation,travel}	\N
1133	general	why	658	622	946	{image,article}	\N
1134	exist	tree	865	873	746	{improve,cost}	\N
1135	business	on	253	944	506	{lot}	\N
1136	late	food	275	486	506	{under,check}	\N
1137	those	administration	113	608	740	{sister}	\N
1138	rock	beautiful	706	458	398	{two}	\N
1140	either	firm	719	700	396	{soldier,the}	\N
1141	arm	apply	539	146	820	{increase}	\N
1142	blood	traditional	525	730	164	{write}	\N
1143	heavy	education	795	218	778	{black,push}	\N
1145	star	air	22	725	463	{each,occur}	\N
1146	fine	would	691	593	354	{return,similar}	\N
1148	watch	newspaper	685	473	592	{may,end}	\N
1150	religious	possible	284	889	455	{huge}	\N
1152	trade	pull	841	912	859	{blood}	\N
1153	meeting	most	926	934	328	{use}	\N
1155	week	car	864	31	691	{political,evening}	\N
1156	station	the	231	140	74	{though}	\N
1157	knowledge	theory	480	617	745	{special,side}	\N
1158	could	car	816	945	226	{already,recently}	\N
1159	game	air	401	275	9	{if,beyond}	\N
1160	financial	describe	124	760	442	{I,blue}	\N
1161	situation	ok	687	309	706	{time,security}	\N
1163	activity	move	918	792	170	{smile,resource}	\N
1164	machine	add	444	114	949	{area}	\N
1165	such	bad	663	326	315	{sure}	\N
1166	street	green	822	463	33	{economic,southern}	\N
1168	hand	generation	768	281	173	{themselves,foot}	\N
1170	television	reason	713	37	132	{compare}	\N
1171	hospital	follow	331	348	853	{really,least}	\N
1172	year	finally	300	28	773	{effect,defense}	\N
1173	thousand	sign	557	654	628	{gun}	\N
1174	rise	single	553	847	476	{face}	\N
1176	Mrs	medical	128	895	589	{by}	\N
1178	according	lay	600	34	848	{bill,data}	\N
1179	work	thus	889	556	327	{especially}	\N
1180	purpose	produce	131	484	483	{when,detail}	\N
1181	need	however	647	528	104	{modern,court}	\N
1183	window	fast	921	911	434	{good}	\N
1185	pass	must	468	371	114	{international,others}	\N
1186	beyond	night	677	104	892	{fast}	\N
1187	everyone	job	326	163	893	{ago}	\N
1188	program	attack	790	84	214	{low,section}	\N
1189	development	why	598	976	68	{rock,choice}	\N
1190	TV	few	473	834	513	{house,nature}	\N
1191	garden	company	373	536	789	{every,event}	\N
1192	government	sell	179	858	696	{send}	\N
1193	situation	big	180	316	182	{pretty}	\N
1194	minute	model	880	794	138	{sell}	\N
1195	major	game	469	810	142	{nice}	\N
1196	five	year	497	519	562	{stand,network}	\N
1197	suddenly	listen	626	655	766	{people,nearly}	\N
1198	majority	field	980	662	517	{alone,standard}	\N
1199	consider	form	287	489	129	{ability}	\N
1200	cold	school	37	977	956	{decide,budget}	\N
1201	nearly	machine	802	144	451	{charge}	\N
1202	indicate	ball	159	924	400	{TV,employee}	\N
1203	environmental	recognize	643	690	64	{else,set}	\N
1204	whether	statement	726	232	683	{him}	\N
1205	thought	many	293	607	794	{bad,factor}	\N
1207	kitchen	he	677	844	633	{also,moment}	\N
1208	put	chance	925	687	861	{may}	\N
1209	station	check	76	1	877	{car}	\N
1210	wall	it	683	77	837	{peace}	\N
1211	collection	service	899	882	135	{center,white}	\N
1213	suggest	television	346	699	286	{perhaps,receive}	\N
1215	interest	late	420	83	363	{head}	\N
1216	pick	fall	433	462	852	{suffer,interview}	\N
1218	who	citizen	927	677	58	{voice}	\N
1219	leave	stay	418	786	929	{north}	\N
1220	how	close	207	70	889	{perhaps}	\N
1222	dinner	interview	335	717	824	{lose,society}	\N
1223	camera	push	675	318	808	{responsibility}	\N
1224	speech	politics	464	54	45	{note,goal}	\N
1225	player	others	164	783	25	{senior,outside}	\N
1226	ok	glass	25	865	152	{spring,fight}	\N
1227	down	because	110	240	263	{relate,born}	\N
1228	alone	billion	512	197	945	{open}	\N
1230	fill	outside	659	864	242	{serve}	\N
1232	station	collection	607	632	472	{sing}	\N
1233	television	name	4	960	836	{pretty}	\N
1234	what	southern	582	375	668	{left}	\N
1236	of	and	308	238	386	{down,knowledge}	\N
1237	federal	instead	559	139	945	{matter,raise}	\N
1238	represent	think	143	305	847	{technology}	\N
1239	maintain	with	307	536	103	{strong}	\N
1240	believe	great	451	410	656	{some}	\N
1242	protect	project	489	989	658	{reveal}	\N
1243	give	choice	898	301	711	{draw,there}	\N
1244	paper	prevent	481	378	185	{face}	\N
1245	eye	choice	489	893	562	{teacher}	\N
1246	seem	specific	532	756	806	{idea}	\N
1247	investment	reduce	142	444	716	{feeling}	\N
1248	suddenly	risk	735	374	504	{your}	\N
1251	party	lead	218	443	340	{bar,interesting}	\N
1252	magazine	try	461	453	838	{push,present}	\N
1254	should	level	381	41	209	{bit,year}	\N
1255	little	help	134	847	954	{piece}	\N
1256	hold	improve	807	779	905	{individual,finish}	\N
1257	language	area	859	205	336	{goal}	\N
1258	according	ground	855	6	891	{much}	\N
1259	black	old	204	964	736	{identify,everybody}	\N
1260	key	exactly	200	311	835	{industry,visit}	\N
1261	similar	can	676	798	384	{through}	\N
1262	prove	yeah	29	695	913	{sure}	\N
1263	sport	station	611	285	313	{bill}	\N
1264	feeling	worry	818	682	718	{role}	\N
1265	economic	body	903	16	357	{poor}	\N
1267	want	movie	863	503	467	{training}	\N
1270	when	decision	203	438	144	{present,run}	\N
1271	program	may	411	602	361	{partner}	\N
1272	senior	pick	39	981	874	{thank,then}	\N
1273	pick	none	821	871	848	{beyond,form}	\N
1274	run	through	295	720	382	{PM,best}	\N
1275	single	knowledge	995	947	384	{east}	\N
1276	case	nice	955	876	118	{word,item}	\N
1278	anyone	church	686	864	780	{prepare,member}	\N
1279	follow	save	284	54	504	{four,finally}	\N
1280	always	kitchen	855	722	439	{condition,set}	\N
1282	beautiful	marriage	175	524	43	{station,Mrs}	\N
1283	few	she	263	197	323	{central}	\N
1285	cause	toward	431	432	580	{reality,dream}	\N
1286	prevent	build	622	743	133	{city}	\N
1287	fine	foot	265	246	720	{make,yes}	\N
1288	well	fight	585	896	189	{remember,claim}	\N
1290	their	whom	313	523	142	{pull}	\N
1291	special	paper	422	38	479	{consumer,lose}	\N
1292	newspaper	fill	875	921	531	{number}	\N
1295	material	past	832	888	421	{culture}	\N
1296	future	off	881	269	616	{popular}	\N
1297	always	letter	299	266	334	{five}	\N
1298	tree	officer	144	557	57	{beyond}	\N
1301	term	east	82	999	537	{decide,join}	\N
1302	responsibility	above	997	534	65	{explain,gas}	\N
1303	industry	different	946	644	849	{race}	\N
1304	age	able	472	416	627	{among,red}	\N
1305	city	section	289	511	998	{professor}	\N
1307	enough	only	991	211	624	{measure,at}	\N
1308	ball	rise	528	152	788	{available}	\N
1310	keep	fly	365	654	759	{recently,later}	\N
1311	us	reduce	258	741	370	{today,expert}	\N
1312	agency	system	318	417	409	{politics,close}	\N
1313	finish	hope	378	334	907	{let,economy}	\N
1314	consider	design	819	136	718	{agree,huge}	\N
1315	for	hope	653	921	711	{huge,own}	\N
1316	Congress	certainly	984	592	483	{project}	\N
1317	him	front	544	825	506	{value,might}	\N
1318	management	then	135	458	149	{two,sometimes}	\N
1319	professor	situation	866	155	898	{environment}	\N
1320	late	character	799	72	700	{red,newspaper}	\N
1321	assume	century	812	431	641	{experience,inside}	\N
1322	near	once	277	227	632	{kid}	\N
1324	add	opportunity	270	498	737	{middle,human}	\N
1325	movie	summer	838	47	438	{through,garden}	\N
1326	it	deal	543	154	330	{name}	\N
1328	interesting	us	909	915	330	{win}	\N
1330	develop	late	944	539	159	{Republican,assume}	\N
1331	growth	because	160	872	63	{individual}	\N
1333	simple	college	297	38	447	{arm}	\N
1334	go	practice	28	972	590	{once,seven}	\N
1336	different	heart	443	359	886	{unit,since}	\N
1337	prevent	before	333	844	698	{measure,note}	\N
1338	cup	case	692	381	35	{allow,indicate}	\N
1339	billion	attack	743	602	112	{run,section}	\N
1341	serve	still	409	922	472	{country,coach}	\N
1342	large	sound	287	382	148	{act,leg}	\N
1343	rest	central	107	388	910	{learn,girl}	\N
1344	election	ability	321	912	8	{each,peace}	\N
1345	determine	run	241	140	322	{capital}	\N
1346	stuff	PM	497	887	176	{student,power}	\N
1348	especially	catch	971	63	619	{arm,through}	\N
1350	common	sound	482	374	438	{course,hour}	\N
1351	let	card	997	965	231	{southern,church}	\N
1352	boy	be	57	333	107	{personal,road}	\N
1353	go	let	733	711	512	{information,leg}	\N
1354	meet	boy	928	208	71	{since,lose}	\N
1355	value	chance	906	499	480	{worker,daughter}	\N
1356	into	they	557	83	505	{choice,institution}	\N
1357	voice	interview	560	859	661	{news}	\N
1358	college	may	586	828	836	{cause}	\N
1359	argue	seven	427	96	761	{less}	\N
1360	involve	cost	928	835	392	{paper}	\N
1361	nice	can	942	751	571	{fine}	\N
1363	store	reveal	850	104	84	{thought,ready}	\N
1364	environment	including	694	597	573	{option,whom}	\N
1365	blue	community	700	405	77	{stand,wrong}	\N
1367	audience	beyond	762	798	447	{campaign,involve}	\N
1306	third	since	139	19	648	{left}	23
1368	character	television	638	558	623	{career}	\N
1369	simple	visit	619	490	397	{focus}	\N
1370	talk	head	285	642	851	{old}	\N
1371	without	growth	675	45	97	{offer}	\N
1372	learn	indicate	675	37	5	{understand,minute}	\N
1375	impact	with	894	696	405	{sister}	\N
1376	future	nice	140	246	990	{experience,treat}	\N
1377	contain	other	400	967	322	{box}	\N
1378	toward	sign	627	143	583	{season}	\N
1380	lead	conference	916	875	204	{myself}	\N
1381	standard	include	973	218	502	{letter,generation}	\N
1382	wonder	score	373	481	649	{however,white}	\N
1383	southern	significant	1	431	917	{successful}	\N
1384	possible	major	389	849	879	{it,money}	\N
1385	hold	these	959	965	28	{know,behind}	\N
1386	purpose	they	827	526	879	{bit}	\N
1387	pick	exactly	264	133	905	{cup,stop}	\N
1388	apply	off	888	781	561	{culture,green}	\N
1390	white	Congress	359	415	453	{three,hand}	\N
1391	form	how	940	693	519	{age,five}	\N
1392	already	and	386	550	29	{the}	\N
1394	people	close	21	359	79	{Mr}	\N
1397	upon	however	286	775	485	{source,hair}	\N
1398	window	well	239	45	300	{decision,quite}	\N
1399	rich	write	568	928	465	{according,majority}	\N
1400	draw	lose	252	12	312	{apply,outside}	\N
1401	a	remember	204	202	186	{town,contain}	\N
1402	rule	particular	74	263	969	{serious}	\N
1403	activity	record	402	643	817	{close,inside}	\N
1404	live	feel	764	787	186	{official,leader}	\N
1405	guess	strong	912	958	408	{area}	\N
1406	participant	hundred	920	833	977	{bring,condition}	\N
1407	attack	traditional	619	366	237	{future}	\N
1408	enter	grow	810	853	554	{treat}	\N
1409	radio	writer	466	638	129	{some,sport}	\N
1410	day	various	948	396	153	{could,lot}	\N
1411	see	find	352	257	855	{southern}	\N
1412	bring	finish	897	147	193	{deal,parent}	\N
1414	recently	house	952	1000	664	{heart}	\N
1415	wish	top	879	471	292	{word}	\N
1417	expert	present	767	80	619	{your}	\N
1418	wait	former	874	208	969	{present}	\N
1419	close	pressure	910	32	447	{life}	\N
1421	candidate	serve	54	458	634	{meeting,our}	\N
1422	senior	thing	725	294	593	{prepare}	\N
1425	music	show	236	527	325	{notice}	\N
1427	let	else	273	656	430	{certain,brother}	\N
1428	right	receive	118	19	979	{pass}	\N
1431	situation	mission	36	31	268	{agree}	\N
1432	her	total	32	743	299	{do,film}	\N
1433	part	explain	738	740	613	{simply,try}	\N
1435	prepare	growth	180	360	736	{ground}	\N
1436	customer	design	805	379	148	{top,determine}	\N
1437	answer	everything	199	937	473	{without,wish}	\N
1438	item	question	459	356	630	{none}	\N
1440	marriage	degree	91	749	320	{member,myself}	\N
1441	remember	rather	84	125	602	{world,camera}	\N
1442	current	resource	946	256	570	{form,smile}	\N
1443	identify	continue	793	905	936	{majority,memory}	\N
1444	team	give	829	932	128	{tell}	\N
1445	heart	tend	733	417	217	{often,sell}	\N
1446	memory	structure	969	140	794	{human}	\N
1447	though	television	856	82	445	{race}	\N
1448	always	rate	391	158	585	{hear}	\N
1449	future	whatever	948	309	263	{enough,half}	\N
1452	company	already	494	675	920	{beat,traditional}	\N
1453	break	there	909	218	601	{book,out}	\N
1456	yard	story	949	677	413	{customer,term}	\N
1457	share	partner	330	828	111	{issue}	\N
1458	product	place	209	951	383	{either,majority}	\N
1459	beyond	myself	647	333	578	{expect}	\N
1460	too	computer	57	727	470	{like}	\N
1461	expect	small	466	511	522	{me}	\N
1462	account	traditional	822	880	285	{expect,special}	\N
1463	great	crime	631	160	291	{thousand}	\N
1464	against	approach	996	326	229	{soldier,effort}	\N
1466	finally	same	875	426	217	{section,beyond}	\N
1467	catch	and	799	137	525	{carry}	\N
1468	understand	player	904	398	30	{government,police}	\N
1469	decide	do	143	404	355	{cause,garden}	\N
1470	economic	foot	617	150	750	{young}	\N
1471	certainly	person	783	989	703	{some}	\N
1472	price	baby	773	988	205	{cup,smile}	\N
1474	know	grow	259	571	993	{bring}	\N
1477	increase	police	149	175	626	{drive,three}	\N
1479	consumer	design	414	936	55	{human,election}	\N
1483	feel	talk	856	365	731	{west,population}	\N
1484	type	newspaper	248	420	141	{cup}	\N
1485	trouble	admit	700	942	411	{night}	\N
1486	available	else	253	193	582	{difficult}	\N
1489	blue	his	54	952	526	{standard,new}	\N
1490	section	administration	884	550	775	{campaign,compare}	\N
1494	many	interesting	132	366	642	{level,manager}	\N
1495	special	ok	95	475	528	{size,hospital}	\N
1496	close	we	387	797	270	{follow}	\N
1497	bed	into	469	479	681	{focus}	\N
1499	a	magazine	804	964	541	{newspaper,help}	\N
1500	moment	ahead	434	948	243	{law,early}	\N
1501	cut	loss	721	477	824	{father,spring}	\N
1502	particularly	say	452	533	771	{newspaper}	\N
1503	financial	represent	149	826	736	{course}	\N
1505	believe	which	280	374	230	{member}	\N
1506	guess	meeting	986	456	367	{recognize,trouble}	\N
1507	film	director	855	716	40	{true}	\N
1508	institution	across	399	545	362	{throughout,business}	\N
1512	together	current	761	318	942	{clearly}	\N
1513	perform	military	438	571	600	{would}	\N
1514	that	decade	252	286	95	{physical,life}	\N
1515	audience	read	402	697	519	{lead,item}	\N
1517	thing	director	423	230	718	{them}	\N
1518	note	color	494	125	528	{choose,southern}	\N
1519	choose	hope	867	583	769	{several}	\N
1520	each	later	33	84	331	{vote}	\N
1521	community	charge	881	454	93	{next}	\N
1525	continue	go	507	129	707	{other,individual}	\N
1526	follow	record	447	491	302	{company}	\N
1527	former	movement	622	257	558	{window}	\N
1609	worry	likely	819	796	698	{case}	\N
1528	growth	window	612	915	94	{bit,throw}	\N
1530	generation	artist	877	23	770	{daughter,outside}	\N
1531	always	cover	43	136	342	{popular,sort}	\N
1532	benefit	only	569	824	846	{themselves}	\N
1533	time	spend	617	798	462	{speak,sea}	\N
1534	apply	huge	336	212	438	{so,memory}	\N
1535	himself	fine	66	390	931	{religious,state}	\N
1536	Congress	no	856	803	5	{admit}	\N
1538	born	several	581	592	388	{middle}	\N
1539	road	remain	996	401	78	{lose}	\N
1540	food	seem	864	250	65	{night,good}	\N
1541	sister	music	881	871	540	{off,staff}	\N
1542	peace	reason	567	873	319	{product}	\N
1543	still	time	148	506	497	{him,watch}	\N
1544	recognize	reality	154	561	120	{old}	\N
1546	near	discuss	509	641	679	{thought,possible}	\N
1547	answer	method	148	152	324	{laugh,stock}	\N
1548	study	seem	453	280	855	{order,help}	\N
1549	sea	late	607	979	804	{say,large}	\N
1550	from	authority	723	926	407	{positive}	\N
1551	who	decision	23	221	563	{course}	\N
1552	pay	coach	253	625	689	{detail,stage}	\N
1553	manage	choice	992	444	571	{interesting}	\N
1554	suddenly	simply	85	30	797	{heart}	\N
1555	wind	training	878	662	340	{single}	\N
1556	perhaps	through	744	951	206	{turn}	\N
1557	president	product	563	87	523	{together}	\N
1558	act	will	63	308	653	{protect,system}	\N
1560	perhaps	couple	888	910	357	{it,sport}	\N
1561	style	back	381	788	211	{century}	\N
1562	have	listen	628	596	512	{charge}	\N
1563	special	service	183	391	3	{seek}	\N
1564	different	have	18	272	375	{entire}	\N
1565	read	measure	417	675	194	{live}	\N
1566	five	same	429	914	678	{join}	\N
1568	yeah	look	176	599	855	{defense}	\N
1569	affect	work	837	643	213	{when}	\N
1570	writer	central	59	299	151	{threat,trouble}	\N
1572	fish	tell	168	915	525	{a}	\N
1573	summer	enjoy	512	879	661	{home}	\N
1574	person	investment	929	459	188	{either,moment}	\N
1576	city	describe	587	722	45	{public}	\N
1578	both	so	246	832	767	{strategy,open}	\N
1579	keep	left	849	964	897	{energy,try}	\N
1580	economy	pay	734	934	241	{article,nearly}	\N
1581	than	will	864	802	910	{believe,instead}	\N
1582	many	onto	901	421	826	{design}	\N
1583	enjoy	law	470	526	693	{during,friend}	\N
1585	perhaps	respond	434	127	558	{phone}	\N
1586	agent	politics	780	427	953	{such,sea}	\N
1587	behind	tax	525	391	616	{game,raise}	\N
1592	form	reduce	386	652	961	{let,continue}	\N
1594	question	there	321	877	181	{anything,culture}	\N
1595	religious	off	680	815	556	{card}	\N
1596	beat	sit	979	195	77	{huge}	\N
1597	public	ready	88	261	699	{building,year}	\N
1598	under	respond	759	229	505	{organization,simple}	\N
1599	condition	evidence	882	35	959	{beyond,vote}	\N
1600	involve	something	353	412	945	{lose,scene}	\N
1602	Congress	step	940	238	155	{bring}	\N
1603	now	threat	958	345	675	{turn,college}	\N
1604	provide	a	626	993	596	{suffer,thing}	\N
1605	who	half	436	691	309	{improve,few}	\N
1606	now	gas	753	321	266	{one}	\N
1607	war	cut	465	404	984	{avoid,source}	\N
1608	relate	minute	40	593	797	{audience}	\N
1610	interesting	author	676	641	140	{hope}	\N
1612	whom	picture	773	409	257	{range}	\N
1614	impact	case	327	71	212	{music,watch}	\N
1615	discussion	doctor	216	410	630	{develop}	\N
1618	different	continue	940	115	396	{service}	\N
1619	available	agent	479	791	495	{reason}	\N
1620	any	property	166	773	6	{partner,yeah}	\N
1623	present	in	207	871	745	{interview}	\N
1624	middle	evening	618	63	349	{point}	\N
1625	ball	look	491	288	764	{admit}	\N
1627	property	toward	938	50	159	{agreement}	\N
1629	issue	expect	711	74	189	{usually}	\N
1630	capital	where	386	297	523	{believe}	\N
1631	figure	attorney	293	142	175	{up,board}	\N
1632	feeling	notice	955	521	240	{there,everyone}	\N
1633	recently	authority	887	830	460	{level}	\N
1636	guy	shoulder	994	365	676	{its,theory}	\N
1637	follow	discover	788	46	689	{situation,make}	\N
1638	weight	green	91	162	506	{peace}	\N
1639	cover	for	361	918	317	{future}	\N
1640	parent	situation	42	710	494	{along,seem}	\N
1641	save	cold	365	354	356	{daughter}	\N
1642	them	report	797	557	137	{population}	\N
1643	find	accept	425	820	685	{always}	\N
1644	director	thing	971	246	264	{attention,against}	\N
1646	compare	despite	645	454	997	{into}	\N
1647	generation	office	504	721	500	{image}	\N
1648	measure	west	28	436	397	{plan}	\N
1649	such	stay	293	575	706	{ten,conference}	\N
1650	party	protect	196	895	606	{born,require}	\N
1651	responsibility	whole	823	759	715	{enjoy}	\N
1652	government	employee	250	659	496	{very,thousand}	\N
1654	occur	executive	977	881	60	{level,more}	\N
1655	likely	probably	162	140	55	{forget,hotel}	\N
1656	former	area	484	248	875	{exist}	\N
1657	building	anything	846	36	15	{move,remember}	\N
1658	without	might	917	470	838	{day,art}	\N
1659	foreign	shoulder	788	440	249	{how,represent}	\N
1660	thing	design	181	107	249	{take,against}	\N
1661	onto	history	312	236	26	{else}	\N
1662	deep	among	211	440	944	{seat,eight}	\N
1663	federal	short	928	508	773	{less,traditional}	\N
1664	may	worry	816	966	314	{sound}	\N
1665	state	see	647	478	143	{good,market}	\N
1669	so	hair	773	4	321	{type,suffer}	\N
1670	data	all	114	67	437	{treat,research}	\N
1671	difference	pay	259	44	144	{specific,almost}	\N
1672	concern	building	384	801	352	{value,around}	\N
1673	cup	goal	929	184	886	{much}	\N
1674	safe	rich	480	861	335	{impact}	\N
1675	state	election	616	235	835	{oil,live}	\N
1676	pay	in	167	637	437	{rather,explain}	\N
1678	seven	school	628	471	997	{live}	\N
1679	parent	establish	604	966	446	{side,successful}	\N
1681	yet	approach	32	572	717	{evening,chair}	\N
1682	five	concern	585	615	552	{maybe}	\N
1683	civil	fill	245	46	921	{blood,investment}	\N
1685	people	each	264	584	358	{street,stand}	\N
1686	ask	water	529	375	581	{fast}	\N
1687	above	later	185	438	228	{small,opportunity}	\N
1688	organization	side	836	997	647	{professor,rate}	\N
1689	method	cell	674	260	744	{imagine}	\N
1690	without	suggest	68	632	266	{section,radio}	\N
1691	themselves	foreign	526	792	35	{picture,former}	\N
1692	Democrat	feel	490	946	494	{however}	\N
1693	charge	month	868	95	690	{federal}	\N
1694	thank	pull	52	586	596	{similar,protect}	\N
1695	check	matter	293	68	569	{daughter}	\N
1696	describe	only	607	672	174	{less}	\N
1697	the	decade	698	737	444	{value,design}	\N
1698	born	study	649	965	727	{human}	\N
1699	than	last	621	961	797	{voice,mean}	\N
1700	paper	them	683	943	989	{within}	\N
1702	field	Republican	52	18	79	{certainly,example}	\N
1703	all	resource	804	371	922	{seat,determine}	\N
1704	day	attorney	193	938	860	{significant}	\N
1705	leader	left	6	838	437	{industry}	\N
1706	three	town	252	64	927	{least,final}	\N
1707	enough	expert	116	379	384	{increase}	\N
1708	just	avoid	876	390	536	{charge}	\N
1709	kitchen	already	763	326	502	{tonight}	\N
1711	network	arrive	444	869	616	{assume,resource}	\N
1712	medical	right	20	353	528	{toward,still}	\N
1713	for	hear	238	408	509	{condition,natural}	\N
1715	which	media	418	621	439	{yard}	\N
1716	six	campaign	708	149	339	{wish}	\N
1717	happen	team	145	504	936	{trial,put}	\N
1719	source	example	907	375	382	{yeah,voice}	\N
1720	and	whole	748	83	803	{different,check}	\N
1721	camera	nothing	135	733	661	{decision}	\N
1722	show	movement	895	145	51	{expert,huge}	\N
1724	edge	your	131	141	246	{least,affect}	\N
1725	matter	suggest	987	216	773	{not}	\N
1726	through	bank	455	204	419	{difficult,so}	\N
1727	sing	central	135	319	804	{talk}	\N
1728	another	cup	472	26	588	{against}	\N
1729	I	bag	752	970	642	{include}	\N
1730	actually	state	33	765	145	{father,travel}	\N
1731	standard	treat	676	299	526	{say}	\N
1732	according	example	59	920	73	{ten,next}	\N
1733	citizen	rather	750	275	710	{care,skill}	\N
1737	news	finally	119	211	184	{staff,reduce}	\N
1738	husband	red	772	840	912	{cause,about}	\N
1739	use	what	649	132	847	{such}	\N
1741	again	people	896	707	602	{scene}	\N
1742	thing	enter	703	990	759	{hope}	\N
1743	particularly	yes	393	456	368	{activity}	\N
1744	share	attack	980	617	825	{girl,party}	\N
1745	probably	fine	653	500	790	{early}	\N
1746	do	organization	256	625	920	{free,hour}	\N
1747	cell	live	178	519	624	{catch,staff}	\N
1748	country	six	70	768	880	{clearly,drive}	\N
1754	event	end	631	548	1	{all}	\N
1755	gun	number	71	774	553	{difficult,way}	\N
1756	bed	program	944	489	50	{short}	\N
1757	life	majority	471	466	581	{return}	\N
1759	step	score	356	66	180	{about}	\N
1760	point	practice	776	588	5	{ever,per}	\N
1761	science	particularly	199	583	686	{wear}	\N
1762	pattern	too	967	159	499	{majority}	\N
1763	establish	avoid	357	537	879	{worker,power}	\N
1764	skill	dream	611	106	737	{while}	\N
1767	together	bad	586	330	551	{join,one}	\N
1768	suggest	serve	590	758	595	{environmental,husband}	\N
1770	popular	arm	805	805	933	{control,child}	\N
1771	life	view	604	154	312	{news,stay}	\N
1772	research	rather	937	859	80	{source,surface}	\N
1774	foreign	anyone	734	134	502	{kid,sign}	\N
1775	hear	create	683	269	979	{its}	\N
1778	line	still	412	691	130	{meeting,public}	\N
1779	much	child	44	699	260	{between}	\N
1780	doctor	nothing	348	83	940	{none,career}	\N
1781	such	arm	391	107	135	{pass}	\N
1782	tough	friend	995	498	332	{star,her}	\N
1783	voice	appear	417	795	84	{movement,operation}	\N
1784	company	before	999	37	445	{administration}	\N
1786	old	score	632	633	776	{back}	\N
1787	during	color	137	879	868	{top,sing}	\N
1789	never	put	452	4	355	{lose,hold}	\N
1791	better	teacher	716	682	984	{impact}	\N
1792	clear	break	744	452	638	{able}	\N
1793	expect	a	678	205	942	{draw,beyond}	\N
1796	level	everyone	687	90	785	{set}	\N
1797	himself	thousand	542	634	492	{newspaper}	\N
1798	nature	environment	98	512	123	{against,role}	\N
1799	financial	day	518	559	171	{number}	\N
1802	model	action	596	230	534	{once}	\N
1803	law	week	804	462	235	{suddenly}	\N
1805	issue	evening	258	591	527	{explain,item}	\N
1806	amount	probably	841	21	342	{north,pressure}	\N
1807	herself	beyond	250	442	157	{effort,tree}	\N
1808	strategy	war	70	488	906	{once,establish}	\N
1809	drive	build	420	757	858	{offer}	\N
1811	send	its	957	122	859	{simply,draw}	\N
1812	other	next	388	873	33	{that}	\N
1813	the	how	558	353	77	{think,nation}	\N
1814	ball	set	1000	692	482	{one,clearly}	\N
1816	thus	structure	410	44	268	{I,wait}	\N
1817	physical	north	692	402	395	{senior,risk}	\N
1818	scene	commercial	16	731	693	{agree}	\N
1819	system	light	551	134	76	{manage,above}	\N
1821	feel	research	202	414	651	{section,too}	\N
1823	benefit	third	23	795	45	{hair,include}	\N
1824	interview	get	759	429	134	{I}	\N
1825	bad	model	762	194	517	{natural,conference}	\N
1826	many	also	846	291	903	{itself}	\N
1828	it	us	479	163	305	{military}	\N
1829	performance	individual	666	308	600	{truth,page}	\N
1830	book	affect	33	630	537	{wind,police}	\N
1831	maintain	age	301	33	500	{carry}	\N
1832	painting	yet	960	168	759	{feel,whom}	\N
1836	either	above	356	205	351	{hour}	\N
1837	vote	government	251	142	967	{form}	\N
1839	officer	end	315	324	505	{sense,present}	\N
1840	rock	hair	22	395	592	{election,yeah}	\N
1841	say	themselves	241	754	539	{year}	\N
1842	adult	word	564	788	939	{important}	\N
1844	according	seven	983	571	9	{foot,single}	\N
1846	soon	anyone	136	448	839	{town}	\N
1847	education	court	113	582	116	{score,moment}	\N
1848	suffer	answer	180	917	361	{reality,accept}	\N
1850	record	stay	905	603	882	{but,direction}	\N
1851	change	television	656	718	246	{first,community}	\N
1852	loss	buy	73	734	878	{attorney,unit}	\N
1854	play	close	270	793	932	{more}	\N
1855	ever	director	653	843	135	{late}	\N
1856	nothing	drop	474	366	133	{consumer}	\N
1857	people	home	312	754	43	{until,light}	\N
1858	above	design	458	505	892	{play}	\N
1859	too	person	178	977	574	{marriage,blue}	\N
1860	either	term	829	684	697	{though,perhaps}	\N
1861	up	individual	670	741	321	{standard,leader}	\N
1863	employee	than	841	95	776	{week,north}	\N
1864	cold	subject	833	249	976	{summer,management}	\N
1865	team	show	97	960	926	{catch,throughout}	\N
1866	site	imagine	249	731	68	{consumer,car}	\N
1867	election	surface	973	693	548	{after,accept}	\N
1868	bag	carry	45	922	584	{gun,almost}	\N
1869	social	size	945	910	531	{case}	\N
1870	laugh	talk	395	676	99	{like}	\N
1871	economic	reveal	846	3	588	{fear}	\N
1872	space	data	474	112	222	{question,letter}	\N
1873	vote	military	69	525	142	{white,deal}	\N
1874	unit	subject	189	449	870	{truth}	\N
1875	person	produce	528	938	279	{today,building}	\N
1876	it	choice	826	187	384	{sure}	\N
1877	yourself	yourself	124	664	137	{prepare}	\N
1878	discover	this	655	960	406	{class}	\N
1879	behavior	her	187	230	818	{she,bed}	\N
1880	yeah	now	835	874	878	{position}	\N
1881	course	Democrat	51	957	617	{defense}	\N
1882	at	represent	7	610	713	{American}	\N
1885	real	include	305	153	870	{behind,whom}	\N
1886	buy	run	381	633	388	{they}	\N
1887	back	down	906	832	626	{three}	\N
1890	yeah	read	514	270	480	{majority}	\N
1891	forward	we	903	817	85	{high}	\N
1892	few	know	221	953	616	{reduce}	\N
1893	success	kitchen	941	255	809	{fight}	\N
1894	feeling	same	733	880	559	{prevent,term}	\N
1897	believe	imagine	179	421	132	{center,upon}	\N
1898	more	music	518	937	236	{town}	\N
1899	class	they	58	381	174	{eat}	\N
1900	lead	customer	442	838	552	{include}	\N
1901	reality	I	276	355	769	{shake}	\N
1902	ground	research	303	608	243	{machine}	\N
1904	family	artist	570	183	758	{small}	\N
1905	nice	last	424	326	559	{front,sound}	\N
1907	money	performance	797	662	547	{realize}	\N
1908	action	heavy	30	326	489	{government}	\N
1909	view	your	210	409	102	{billion,quickly}	\N
1911	community	sea	506	552	565	{show}	\N
1912	learn	population	775	797	459	{main}	\N
1913	field	attack	696	654	198	{us}	\N
1915	poor	door	8	69	832	{home,never}	\N
1916	car	site	19	825	196	{difficult,number}	\N
1917	lead	significant	281	653	580	{show}	\N
1918	Republican	have	787	490	573	{yard}	\N
1920	teach	light	412	57	656	{whatever}	\N
1921	him	certainly	297	363	240	{Republican}	\N
1922	three	peace	471	572	482	{girl,difficult}	\N
1923	chair	these	39	786	998	{store}	\N
1924	office	bad	121	330	833	{remain,whose}	\N
1927	serious	piece	883	911	284	{hit,know}	\N
1928	food	situation	701	563	895	{line,impact}	\N
1929	throw	man	991	110	674	{use,general}	\N
1930	matter	start	436	519	435	{many,series}	\N
1931	same	remain	837	491	229	{management}	\N
1932	official	wonder	182	530	610	{season,understand}	\N
1933	grow	big	636	938	479	{special}	\N
1935	usually	look	772	273	196	{camera,leg}	\N
1937	question	upon	995	610	385	{travel}	\N
1938	kitchen	list	605	13	244	{involve,teacher}	\N
1939	manager	relationship	395	270	629	{network,would}	\N
1942	off	executive	873	185	179	{piece,feel}	\N
1943	leader	check	578	119	240	{race}	\N
1944	describe	much	429	296	161	{program}	\N
1945	thousand	sense	862	594	137	{edge,time}	\N
1946	space	drug	562	195	126	{push,central}	\N
1947	store	his	673	506	207	{society,citizen}	\N
1948	seat	simple	640	717	815	{PM}	\N
1949	check	daughter	735	851	619	{shoulder}	\N
1950	discussion	catch	181	339	674	{guy}	\N
1951	seem	window	197	979	665	{we,herself}	\N
1952	collection	maintain	114	335	597	{thought,production}	\N
1953	war	Mr	183	3	772	{rather,management}	\N
1954	effort	your	392	553	396	{send,loss}	\N
1955	day	add	66	325	345	{require}	\N
1956	partner	smile	266	903	275	{old,reflect}	\N
1957	adult	role	164	960	473	{imagine}	\N
1958	throw	camera	393	481	96	{else,tough}	\N
1959	nation	ahead	728	125	572	{east}	\N
1960	dark	once	264	966	317	{coach,adult}	\N
1961	office	might	833	302	761	{political,growth}	\N
1962	perform	yard	205	366	666	{fill}	\N
1963	treat	staff	687	876	863	{hour}	\N
1964	throughout	plant	553	895	659	{line}	\N
1966	choice	next	269	775	548	{any}	\N
1968	everyone	minute	807	346	54	{institution,the}	\N
1969	themselves	available	967	257	882	{huge}	\N
1970	century	me	990	680	903	{conference}	\N
1971	computer	window	619	252	38	{summer,low}	\N
1972	factor	accept	880	873	96	{especially}	\N
1974	guy	safe	923	832	841	{happy}	\N
1975	often	approach	518	627	874	{believe}	\N
1976	every	among	696	419	506	{staff}	\N
1977	cause	many	555	901	246	{find}	\N
1978	difficult	suddenly	678	111	836	{level,card}	\N
1979	throw	score	437	181	33	{suffer,away}	\N
1981	mission	rest	350	396	449	{stock,general}	\N
1982	well	and	485	364	742	{organization}	\N
1983	none	employee	448	63	693	{door,charge}	\N
1984	white	focus	266	583	50	{fly}	\N
1985	certain	stuff	394	158	487	{reality}	\N
1986	watch	daughter	400	848	557	{PM,offer}	\N
1987	bill	first	183	232	527	{total}	\N
1988	middle	next	856	630	867	{remember}	\N
1989	despite	as	422	465	768	{happy}	\N
1990	affect	difficult	203	48	581	{specific,hot}	\N
1991	standard	remain	76	968	723	{run,really}	\N
1992	player	enter	6	913	145	{letter}	\N
1993	do	fish	705	872	841	{organization,determine}	\N
1994	agent	site	348	214	105	{black,treat}	\N
1995	easy	trade	916	325	34	{attention}	\N
1996	everybody	least	207	359	972	{provide,in}	\N
1999	garden	couple	301	667	518	{between}	\N
2000	book	put	768	173	811	{represent}	\N
2001	idea	various	674	842	707	{old}	\N
2003	set	entire	813	228	984	{Mrs,land}	\N
2004	employee	scene	99	8	447	{phone}	\N
2006	case	piece	971	757	858	{memory}	\N
2007	author	seat	826	635	587	{design,describe}	\N
2008	ago	consumer	197	823	821	{need,son}	\N
2009	future	financial	325	118	971	{majority}	\N
2010	manage	number	576	122	496	{news}	\N
2011	nation	guess	808	569	394	{sense,probably}	\N
2013	candidate	impact	476	917	274	{commercial}	\N
2014	watch	his	593	336	741	{wall,why}	\N
2015	character	each	129	842	319	{develop,choose}	\N
2018	method	leave	858	439	441	{stage}	\N
2019	knowledge	game	434	365	574	{relationship}	\N
2020	direction	spring	718	590	505	{investment,religious}	\N
2021	about	audience	735	665	722	{military,sense}	\N
2022	book	public	950	301	770	{billion,head}	\N
2025	child	his	753	15	784	{human,always}	\N
2027	score	analysis	214	297	905	{happy,single}	\N
2028	reach	without	149	88	937	{stay}	\N
2030	happen	drug	175	418	173	{indeed}	\N
2033	garden	hope	862	571	238	{your,another}	\N
2035	describe	reality	793	772	768	{analysis}	\N
2037	give	a	115	232	640	{on}	\N
2038	trial	institution	437	605	5	{market}	\N
2039	dark	present	179	703	811	{notice}	\N
2040	site	democratic	822	551	451	{buy,size}	\N
2041	pull	computer	954	645	151	{plant,own}	\N
2042	service	nature	411	876	231	{always,picture}	\N
2043	deep	report	855	735	927	{threat,its}	\N
2044	rich	last	125	515	767	{be,window}	\N
2045	Mrs	yeah	25	301	649	{old}	\N
2047	wrong	hair	365	118	685	{look,friend}	\N
2048	even	challenge	282	980	728	{contain}	\N
2049	of	result	57	566	280	{technology,nation}	\N
2050	feel	appear	978	358	252	{type,operation}	\N
2051	same	think	1000	804	502	{hope,new}	\N
2052	explain	material	779	773	70	{Republican}	\N
2053	thought	remember	419	390	482	{action}	\N
2055	child	yet	445	227	468	{cup}	\N
2057	eat	house	194	206	909	{idea}	\N
2058	these	agency	39	642	147	{several,west}	\N
2061	training	risk	328	318	19	{range,base}	\N
2063	defense	nice	801	736	723	{data}	\N
2064	none	meet	722	764	13	{discover,each}	\N
2066	positive	politics	237	848	612	{kid,notice}	\N
2069	bag	rest	228	685	123	{somebody}	\N
2070	office	inside	871	97	198	{recognize}	\N
2071	example	him	44	424	903	{section,door}	\N
2073	others	officer	478	649	851	{way}	\N
2074	stay	he	876	63	969	{dream}	\N
2075	change	catch	729	780	103	{four}	\N
2076	eye	boy	193	362	65	{floor,market}	\N
2078	Congress	enough	998	401	299	{imagine}	\N
2079	use	who	609	300	317	{least,start}	\N
2081	gun	could	226	123	754	{page,conference}	\N
2085	hundred	site	93	880	445	{watch,phone}	\N
2086	heavy	market	847	539	366	{hit}	\N
2087	measure	treatment	1000	313	532	{everyone,age}	\N
2089	get	hot	171	153	550	{anyone}	\N
2090	indicate	poor	926	677	626	{TV}	\N
2091	camera	important	674	228	716	{week,you}	\N
2092	by	strong	446	433	945	{security,issue}	\N
2093	measure	particular	516	644	892	{him,price}	\N
2094	line	wind	952	317	454	{eat,fire}	\N
2096	common	human	1	592	965	{when}	\N
2097	always	live	306	632	514	{back}	\N
2098	idea	fine	659	75	116	{do}	\N
2099	child	white	372	459	376	{until,institution}	\N
2100	she	win	154	285	837	{near}	\N
1430	money	page	59	336	163	{population}	4
1395	edge	success	487	126	237	{somebody}	58
1340	accept	late	265	982	988	{manage,message}	39
605	then	product	336	232	321	{increase,out}	55
1926	conference	teach	862	719	759	{second}	53
1509	smile	school	678	835	865	{break,million}	73
1482	factor	same	626	696	676	{offer,training}	54
932	value	nor	486	687	956	{some,Republican}	98
1801	prepare	though	535	732	801	{grow,bill}	56
946	industry	any	11	353	248	{quickly,whatever}	50
788	eat	future	216	492	169	{friend}	23
2054	community	west	848	629	423	{office,check}	95
1677	democratic	language	113	320	924	{white}	69
146	night	someone	828	262	644	{share}	79
87	big	poor	41	28	11	{tell,lawyer}	49
811	easy	north	501	577	86	{development}	25
349	evidence	cup	554	641	451	{lot,poor}	25
1510	manage	alone	310	522	267	{individual,ask}	10
1838	score	church	857	42	97	{institution}	83
111	important	future	130	916	212	{to}	60
1498	go	nearly	270	721	967	{whether}	86
209	employee	particularly	641	750	170	{time,point}	87
1750	officer	he	714	832	533	{appear,suddenly}	68
487	military	fire	457	343	513	{final}	74
272	seem	assume	537	573	737	{teacher}	42
432	within	pull	799	477	122	{however}	30
292	she	short	545	520	172	{determine}	94
870	never	seem	833	700	458	{sometimes}	92
1537	no	all	310	749	837	{machine}	98
1147	practice	star	373	877	224	{smile,glass}	50
1110	important	likely	499	65	605	{necessary,sea}	97
1504	forget	everybody	806	709	102	{hear}	10
180	whom	event	720	175	461	{economic}	37
1002	stay	skill	956	320	673	{wind}	14
1106	less	another	931	254	954	{action,long}	16
1149	reflect	offer	278	704	639	{system,product}	50
1883	method	begin	13	832	935	{here,crime}	3
154	require	southern	616	547	419	{police}	27
760	probably	threat	931	723	217	{wind}	79
385	serve	lead	137	56	615	{budget}	52
1038	already	full	96	525	127	{care}	72
297	sell	something	732	110	210	{politics,sister}	59
1434	opportunity	happen	346	602	92	{staff}	51
1613	beat	idea	427	324	887	{course}	33
1117	name	clear	26	146	558	{personal,election}	11
1751	what	certainly	870	691	133	{break}	31
283	kid	trip	492	466	935	{number,scientist}	51
643	instead	ten	222	909	465	{last}	13
1475	each	program	542	773	537	{hotel,usually}	66
947	sell	stage	961	730	247	{cell}	37
2080	so	concern	597	903	372	{summer}	58
1753	relationship	information	177	682	794	{onto}	85
1804	hot	card	864	784	90	{popular,play}	37
15	look	sit	393	803	878	{traditional}	33
78	sure	those	13	629	687	{others}	56
1668	yard	commercial	476	515	741	{body}	68
449	yes	already	416	392	428	{into}	60
1105	environmental	each	185	724	656	{finish,history}	31
1492	Democrat	seem	939	234	359	{military,wonder}	45
2056	machine	pressure	754	520	405	{program,upon}	42
375	wait	watch	276	543	51	{billion,effect}	30
896	for	consumer	543	877	73	{daughter}	45
424	record	goal	158	996	538	{baby}	85
512	line	eight	670	76	200	{form}	3
1347	friend	item	225	664	788	{chair}	33
447	agree	Mr	401	729	201	{knowledge}	82
1066	end	fly	255	235	531	{important,herself}	65
1752	open	section	323	82	151	{central}	16
2084	idea	ground	924	54	537	{wait}	97
1217	all	cost	515	945	105	{will}	62
1735	rule	care	579	352	109	{want,tough}	98
232	right	start	941	201	410	{manager}	86
2095	less	explain	58	466	574	{cut,look}	42
832	buy	that	727	898	400	{hour}	39
408	occur	fish	975	367	893	{cultural}	7
24	similar	finally	882	94	818	{help,way}	5
47	thousand	dream	762	163	427	{impact,later}	35
1231	after	mention	787	696	180	{sound}	70
548	grow	red	64	434	750	{amount}	51
1439	treatment	image	253	239	98	{opportunity}	52
1488	tree	sport	925	790	214	{thought,watch}	23
1293	large	all	397	109	706	{make,nature}	74
1010	system	live	629	718	983	{half}	11
348	simple	live	907	992	726	{movement,imagine}	43
822	true	item	859	42	620	{capital,fire}	34
1045	ball	affect	926	929	219	{officer,respond}	1
371	painting	black	125	338	356	{industry}	41
1795	mean	bit	286	281	166	{consumer,mind}	39
1718	ball	its	322	773	791	{music}	97
799	discover	watch	430	897	601	{current,son}	30
742	pass	prevent	967	157	575	{woman,past}	66
1416	just	level	537	772	936	{thus}	14
145	class	outside	558	748	42	{team}	50
115	project	project	50	732	883	{experience}	58
757	budget	oil	673	493	259	{affect}	86
600	myself	case	912	492	566	{stop}	65
1212	PM	contain	63	214	879	{media,southern}	48
389	research	medical	726	107	763	{yeah,some}	43
436	might	general	137	576	725	{task,guy}	35
754	recent	with	256	336	618	{create}	62
523	focus	education	469	914	365	{bar}	28
1545	become	middle	275	556	804	{eye}	65
1714	already	sell	379	52	863	{single}	83
583	executive	painting	801	516	643	{throughout,old}	46
670	center	quickly	916	759	357	{soldier}	7
1335	film	while	832	299	253	{help,consumer}	52
1666	product	former	321	807	319	{pattern,part}	53
382	ready	be	696	591	636	{these,increase}	70
1113	find	still	540	540	666	{idea,build}	85
789	serious	argue	413	911	290	{that}	41
1281	information	task	596	906	576	{today}	61
1903	herself	number	559	43	338	{popular,defense}	4
2012	until	into	574	917	57	{sometimes}	16
613	mother	seem	254	81	759	{partner}	43
1131	fact	little	992	309	740	{news,matter}	78
1374	then	rate	18	442	563	{several,loss}	58
161	create	three	280	319	600	{black,when}	59
1450	author	plan	880	396	121	{too}	91
2068	list	design	242	559	728	{message}	96
690	mother	wrong	975	420	248	{remain,close}	81
1151	there	and	965	334	459	{check,others}	68
772	understand	red	652	928	139	{boy}	14
1491	leave	tonight	358	676	725	{officer,public}	34
7	over	feel	89	450	680	{difficult}	18
1184	act	according	941	360	832	{forward}	28
1936	if	herself	588	686	964	{current,others}	1
39	trouble	economic	457	722	519	{very,once}	88
1845	beat	human	420	813	398	{teach}	86
665	never	later	123	453	599	{bad}	88
1268	beautiful	each	995	232	614	{maybe,moment}	96
929	chair	today	773	231	792	{attention,own}	57
1635	later	church	211	621	386	{order,quality}	70
1710	information	assume	479	241	414	{although}	1
566	friend	office	945	676	889	{magazine,serious}	10
1653	thank	heavy	372	456	317	{politics}	17
340	above	when	400	127	685	{window,study}	4
498	Republican	pattern	77	564	324	{meet,at}	93
1473	instead	cost	485	388	791	{local,face}	72
1249	industry	support	50	252	851	{then}	87
51	policy	prepare	388	206	356	{measure}	7
392	local	require	77	936	594	{so}	1
851	opportunity	language	209	307	176	{apply}	79
1072	parent	claim	411	143	626	{call,return}	9
61	relate	source	955	561	353	{myself,rate}	82
847	actually	play	925	994	182	{yes}	59
1645	though	training	548	923	475	{price,various}	63
409	defense	lead	42	939	721	{play,development}	94
843	pay	decade	358	438	442	{alone,head}	50
1139	commercial	scene	64	964	747	{activity}	46
1617	condition	take	116	142	832	{natural,push}	54
1221	choose	garden	467	910	527	{help}	3
1621	deal	story	977	58	971	{finally,poor}	26
729	soldier	friend	269	796	813	{car,couple}	22
1455	sort	paper	976	653	201	{head}	4
188	might	team	786	76	835	{price}	98
1042	quite	sister	243	202	543	{smile,special}	18
1182	bill	particularly	565	529	303	{two}	76
1906	learn	that	614	843	932	{serve}	11
429	itself	let	600	23	526	{price}	27
876	order	these	584	481	741	{allow,evening}	26
1424	sea	lay	250	117	464	{field,kind}	31
320	sing	piece	276	476	279	{central,more}	2
2016	until	young	49	130	296	{population}	61
2083	relate	happen	361	612	540	{hear,fast}	41
378	or	last	696	337	281	{time}	31
197	success	social	620	312	214	{brother}	76
2029	very	compare	544	93	676	{direction}	17
1349	each	fight	283	688	694	{different,police}	53
214	management	form	318	770	411	{ask}	50
310	look	beautiful	984	307	713	{drug}	68
1765	suggest	series	513	936	317	{team}	86
988	board	want	836	893	930	{seven,avoid}	64
1827	discussion	here	561	44	424	{whom}	26
457	dark	executive	801	324	164	{beat}	52
170	choice	power	448	516	694	{yard,almost}	34
833	style	information	789	820	603	{claim,nothing}	67
1919	that	support	464	43	390	{born,lot}	84
1067	camera	talk	271	11	6	{practice}	37
550	surface	always	20	627	10	{consumer}	98
1611	teacher	window	361	902	148	{sea,four}	29
648	wall	often	185	457	158	{sometimes,them}	22
2046	traditional	employee	294	57	95	{push,modern}	47
1794	film	lot	340	793	969	{fact,beat}	4
663	bit	will	385	448	334	{bar,like}	55
1052	customer	professional	766	196	915	{civil,rate}	35
2017	kitchen	establish	807	608	126	{economy}	47
367	that	personal	336	5	793	{born}	13
2059	for	wonder	360	361	870	{society}	90
287	special	court	138	50	537	{enjoy,when}	45
1393	car	since	500	870	331	{never}	45
33	score	above	486	117	25	{guess,simply}	23
1843	owner	himself	428	567	396	{peace}	95
1269	stay	without	64	85	248	{grow}	53
439	you	Democrat	508	837	286	{play,range}	11
532	there	difference	775	517	768	{peace,color}	10
1524	response	opportunity	813	905	52	{it}	29
1973	professor	price	686	185	197	{character}	30
36	work	wife	989	621	443	{reach}	84
1577	owner	poor	667	223	876	{anyone,something}	83
898	amount	wait	462	90	1	{return}	96
1362	pressure	these	151	4	574	{institution}	5
1575	best	open	274	359	454	{assume}	28
1773	debate	country	35	582	891	{daughter,most}	36
2065	peace	blood	956	436	716	{once}	18
2026	offer	food	460	987	684	{key}	41
994	detail	push	623	206	116	{carry}	97
1980	institution	also	313	363	32	{have,first}	80
1177	bank	source	393	92	512	{support}	25
1120	base	management	609	891	44	{either}	85
93	front	officer	555	213	315	{partner}	87
107	as	look	79	522	973	{subject}	5
251	marriage	time	942	679	72	{their,night}	62
1493	thus	whom	74	231	930	{hit,war}	25
1481	sport	where	228	925	346	{continue,reason}	78
143	then	owner	507	698	404	{think,once}	92
1914	television	exactly	651	264	620	{myself,argue}	14
826	budget	back	919	441	165	{all}	31
1849	read	with	510	788	894	{cup}	99
1822	through	reach	446	27	820	{miss,with}	3
1810	nation	focus	722	126	930	{mother,miss}	66
1294	watch	born	424	475	111	{past,type}	69
627	wall	although	520	979	317	{claim}	90
1834	threat	upon	271	835	460	{purpose}	35
1289	again	toward	841	436	18	{everything}	2
1523	place	who	88	703	483	{level}	11
454	although	focus	91	527	848	{security,commercial}	62
1559	push	institution	601	909	727	{yeah,own}	5
412	Democrat	rock	350	452	818	{prove}	66
255	bar	run	876	439	873	{ball}	52
1299	father	wife	324	760	100	{believe}	15
52	avoid	low	211	588	691	{look,there}	82
450	while	care	133	689	552	{nearly}	56
167	authority	conference	121	583	766	{way}	52
595	walk	ask	214	22	168	{key,listen}	51
666	might	full	342	622	813	{impact,recent}	75
761	nothing	employee	222	411	810	{race}	45
1413	risk	spend	219	642	7	{business}	62
995	service	part	490	393	178	{however}	48
334	feel	specific	224	548	433	{green,forget}	86
68	ability	shake	139	594	565	{even}	41
147	away	yet	274	755	935	{rate}	60
41	wind	positive	229	537	665	{possible}	98
628	group	your	699	7	833	{ask,various}	93
672	group	attorney	706	931	817	{phone}	84
435	party	forward	320	478	285	{difficult,garden}	33
1998	pay	study	607	931	314	{throughout,coach}	66
794	southern	education	347	519	487	{learn,who}	19
1734	skin	strategy	573	452	477	{crime}	97
499	actually	deal	881	529	137	{small}	72
1327	six	often	754	391	125	{happy}	21
518	plan	you	853	623	578	{plan,house}	16
780	civil	national	633	214	539	{sit}	55
802	always	down	38	284	863	{car,wall}	18
842	protect	much	85	235	838	{identify,Mr}	95
839	from	loss	760	658	213	{prove,project}	90
734	which	idea	342	101	255	{see}	9
1896	record	today	461	33	882	{drug}	26
506	development	position	468	343	950	{card,value}	91
1144	main	wait	947	318	309	{drive,seven}	51
23	so	past	651	182	564	{left}	98
1454	even	actually	154	643	275	{walk,citizen}	54
1516	put	public	300	620	498	{them}	89
549	shake	policy	10	36	551	{meeting,stuff}	74
878	attorney	stock	904	401	553	{hit,door}	37
593	describe	minute	885	365	201	{partner,or}	65
1934	many	forward	105	87	411	{plan,clear}	86
1777	always	increase	250	400	554	{development}	57
489	will	Mrs	595	152	604	{money}	7
741	on	sound	271	521	850	{including}	42
127	behind	me	498	8	182	{or,foot}	24
187	network	ok	802	277	867	{measure}	73
434	poor	whatever	245	797	13	{when}	26
887	audience	rest	970	155	478	{gas}	76
156	approach	might	388	768	573	{three}	43
1967	record	black	136	681	911	{easy}	49
339	director	rule	220	694	660	{dinner}	35
497	president	whose	525	309	807	{can}	59
827	market	weight	423	767	493	{finally,year}	77
1529	close	administration	35	239	965	{clearly}	20
70	daughter	majority	390	887	808	{strong}	70
606	late	step	891	314	975	{mean,word}	51
645	close	prepare	961	287	408	{so}	32
1588	food	owner	97	816	208	{common}	20
1167	wall	believe	573	643	218	{matter,often}	95
984	citizen	great	157	804	595	{wear,three}	91
1025	left	onto	209	652	716	{foreign}	96
5	newspaper	wrong	425	681	178	{five,contain}	44
841	lot	car	392	959	670	{build,job}	75
148	score	thank	983	999	143	{half}	92
1366	manager	opportunity	843	869	871	{red,economy}	27
559	cold	future	985	353	60	{drug}	32
668	us	kitchen	607	501	36	{nearly}	49
1266	company	should	712	580	769	{table,by}	89
2067	again	man	834	634	395	{build}	1
2031	many	discover	779	432	829	{believe,exactly}	62
680	know	only	841	839	540	{nor}	89
250	bag	blood	552	205	729	{cause,pick}	86
219	wait	run	829	612	24	{evening}	37
213	election	big	916	733	452	{campaign,into}	18
1788	research	six	57	19	985	{character}	95
234	light	others	813	936	32	{use}	98
538	south	sing	722	704	315	{yourself,within}	88
267	miss	agency	97	436	862	{look}	73
1511	few	focus	85	55	107	{I,affect}	28
2062	career	cultural	446	466	272	{above,letter}	44
1476	feeling	argue	25	998	391	{now,nature}	44
1925	kitchen	miss	960	439	750	{sort}	34
1478	huge	her	102	417	117	{people,argue}	95
1309	machine	they	720	136	435	{with}	7
2002	go	add	584	1	447	{order}	4
2036	short	real	175	648	300	{stand}	65
534	describe	decision	879	76	963	{air}	10
1622	general	as	140	774	512	{morning,raise}	31
502	record	position	719	680	645	{require,position}	52
1723	personal	current	271	341	42	{laugh}	74
926	decision	budget	946	865	448	{system}	93
26	figure	different	86	889	18	{if,out}	24
1584	to	up	48	239	228	{since}	67
916	may	dinner	280	375	858	{form,past}	76
1026	we	word	765	307	637	{money}	72
732	board	paper	25	135	238	{industry,human}	5
1451	young	become	912	676	369	{hand,be}	68
1162	how	rest	63	679	764	{become}	26
611	including	relate	407	366	535	{join}	84
405	its	support	782	365	565	{check,same}	32
1601	speak	peace	427	210	56	{heart,against}	31
1098	right	do	915	422	356	{though,person}	65
1089	throughout	office	337	815	574	{thus,drug}	44
711	customer	water	115	101	702	{for,color}	56
1241	left	leg	32	988	832	{also,Republican}	42
1634	mean	while	521	200	719	{two}	7
345	always	value	505	649	917	{loss}	89
688	PM	treatment	604	442	95	{government,budget}	83
1616	rise	my	694	653	480	{structure}	1
972	sign	project	343	873	682	{including,believe}	72
1300	offer	economy	310	762	423	{rich}	83
1749	see	thousand	89	984	852	{machine,commercial}	79
2005	despite	close	563	295	529	{near,attorney}	57
289	decision	attorney	720	588	765	{thought,why}	44
397	when	wish	121	616	149	{protect,doctor}	93
402	change	ten	380	419	416	{hundred,entire}	43
441	money	president	637	86	749	{report,trade}	21
608	buy	street	441	950	628	{may}	95
1820	crime	young	414	215	110	{next,leader}	29
603	paper	civil	803	587	92	{partner,eight}	64
220	sell	or	700	36	507	{federal,challenge}	1
1997	side	represent	715	44	662	{night,special}	51
579	federal	provide	939	111	866	{chance}	6
490	fact	or	888	521	431	{memory,time}	37
179	bank	maintain	960	763	730	{foot,her}	71
85	police	possible	564	260	729	{southern,its}	56
351	service	Congress	282	277	724	{owner}	2
1593	significant	mother	521	815	976	{away,administration}	37
1024	while	buy	858	308	505	{keep}	19
1785	power	relationship	404	580	585	{personal,concern}	93
2077	many	tend	586	612	223	{once,break}	18
2072	amount	statement	148	740	691	{radio}	81
2088	ok	there	396	530	559	{become,cut}	52
1429	eye	pass	937	380	514	{tell}	1
849	tough	music	210	489	970	{have}	55
982	against	economy	872	376	416	{garden,report}	63
1522	run	activity	906	34	452	{positive}	80
76	form	like	469	919	284	{light}	89
1277	sound	challenge	309	981	280	{instead}	19
646	read	claim	457	309	759	{opportunity,mission}	26
1766	dream	middle	993	308	91	{woman}	92
944	student	figure	764	313	42	{probably,especially}	16
1250	large	remember	992	372	69	{magazine}	41
1030	song	study	855	18	527	{there,approach}	82
1487	marriage	few	581	348	192	{quickly}	64
1323	trial	your	672	492	367	{generation}	56
263	class	significant	88	310	36	{certainly,particular}	98
1214	husband	rest	206	846	703	{day}	9
1758	newspaper	effort	283	365	460	{cut}	41
957	however	attention	855	973	497	{picture}	46
381	south	foot	950	892	278	{page,dream}	27
29	small	arrive	353	298	72	{person}	10
908	different	might	352	438	922	{down,woman}	28
561	road	within	208	56	765	{else}	80
280	color	three	539	125	153	{meeting,miss}	54
420	cause	keep	409	556	124	{dream,buy}	16
1426	could	fact	687	314	959	{PM}	74
749	ability	most	41	923	466	{entire}	53
1591	north	seat	771	384	656	{world}	71
1571	debate	week	625	369	189	{crime}	18
230	movement	similar	16	817	6	{travel,however}	65
153	in	rise	983	218	123	{court,social}	50
1853	community	research	251	672	814	{person}	54
712	learn	benefit	653	713	705	{east,behavior}	56
1229	technology	travel	135	293	921	{modern}	59
2082	off	point	146	369	953	{news,over}	62
710	court	whether	663	273	743	{can}	80
1329	unit	pretty	644	534	819	{play,line}	31
2032	work	star	348	793	676	{cover}	79
1776	watch	some	592	297	447	{sell}	55
515	mother	family	675	641	592	{but,measure}	74
1740	section	process	576	658	212	{old,share}	32
526	method	century	114	365	893	{occur}	87
350	increase	need	926	863	104	{enter}	9
1175	friend	face	633	522	880	{push,billion}	4
1070	perform	sea	613	951	866	{close}	42
1253	evidence	myself	902	673	610	{skin,whom}	45
2060	situation	everything	260	875	990	{show}	30
285	last	especially	836	911	948	{security}	35
1736	Mr	how	235	799	46	{interest}	82
1684	grow	let	424	827	701	{activity,such}	54
1940	new	court	88	167	404	{tough}	41
535	for	similar	238	623	44	{family}	86
1889	sure	statement	740	198	170	{model}	22
527	quality	these	555	760	56	{continue,few}	45
504	challenge	laugh	998	601	519	{economic}	31
674	attention	make	833	823	790	{name}	25
1895	sister	know	534	535	20	{song}	76
472	may	happy	195	868	522	{sell,newspaper}	90
1835	something	laugh	431	36	303	{anything}	17
906	continue	official	963	630	8	{society}	63
1833	resource	sort	954	720	646	{none,natural}	21
1396	entire	gas	914	759	78	{difference}	22
809	better	environmental	381	409	653	{agency,close}	19
415	east	he	776	728	125	{wish}	88
673	reduce	cut	44	274	840	{be}	29
962	training	hold	837	261	562	{after}	69
406	produce	heavy	931	992	671	{question,arrive}	5
793	first	free	679	415	894	{example}	97
226	call	budget	474	561	594	{subject,resource}	49
1420	international	appear	176	451	975	{develop,yet}	48
465	cut	staff	172	688	687	{crime}	44
1018	beyond	size	940	50	377	{risk,show}	62
478	option	do	928	361	482	{environment}	71
1091	society	summer	365	966	915	{several}	48
2024	someone	cut	136	64	972	{peace,executive}	46
1965	almost	discussion	843	816	442	{institution}	94
462	tell	similar	593	261	743	{fine}	95
175	eight	sing	116	664	940	{production,these}	30
416	protect	charge	215	393	647	{partner}	61
1701	hard	enter	906	1	783	{between}	53
1862	character	month	285	163	367	{stand,behavior}	60
312	against	improve	796	557	661	{amount,positive}	31
1379	per	share	145	778	150	{occur}	67
861	rather	month	731	555	524	{important,over}	13
607	magazine	woman	302	167	649	{young,summer}	87
139	chair	letter	609	88	877	{new}	19
1332	interesting	leader	409	343	660	{marriage,accept}	26
1941	interesting	face	803	53	218	{mention,address}	20
1626	next	art	562	510	518	{security,individual}	78
1628	record	gas	11	859	315	{easy,think}	75
42	team	end	405	692	590	{consumer,source}	29
1815	room	green	765	687	661	{professor}	17
1235	other	leave	277	836	98	{enough}	44
1373	board	say	43	166	432	{woman,what}	53
1680	around	push	655	144	760	{staff}	59
256	player	between	55	653	94	{your,could}	81
1888	activity	maybe	348	9	433	{wall,yet}	58
1015	business	truth	906	446	760	{nice,really}	60
2023	interview	short	479	248	214	{simple}	14
103	organization	occur	747	77	23	{green}	85
1154	power	guess	161	261	726	{film}	25
993	card	image	127	860	895	{building,likely}	1
1884	who	represent	711	197	630	{early,public}	59
558	who	maintain	454	154	237	{throw}	99
1800	baby	field	714	994	661	{nearly,off}	52
1769	color	ten	451	296	776	{rule,sit}	64
1480	sing	pattern	84	962	578	{near}	26
1389	relate	about	919	125	898	{nature}	73
1284	where	wind	759	115	628	{somebody}	78
1423	parent	off	995	557	968	{she}	58
752	prepare	minute	93	551	482	{nor,nice}	81
1790	lead	task	335	997	823	{green}	10
1465	may	event	321	202	778	{almost}	74
305	mean	into	494	744	75	{road,sense}	22
1667	foot	purpose	37	305	202	{ever,call}	60
1590	space	international	443	539	860	{low,guy}	39
1567	might	far	426	585	389	{wish}	7
975	sense	chance	273	371	593	{happy,again}	49
1910	pass	if	728	647	817	{similar,kid}	97
491	sit	light	267	624	378	{travel}	78
1589	determine	develop	401	214	559	{few}	89
956	despite	age	184	800	967	{difference}	37
1169	way	Congress	347	569	837	{learn}	22
750	source	debate	41	356	788	{agency}	57
268	cold	risk	515	571	211	{network,for}	40
2034	give	quality	337	763	782	{sister}	88
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (camera_id, sensor_mp) FROM stdin;
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
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (phone_id, carrier_lock, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1001	behind	\N
1002	heart	\N
1003	strategy	\N
1004	determine	\N
1005	for	\N
1006	race	\N
1007	firm	\N
1008	budget	\N
1010	commercial	\N
1011	law	\N
1013	control	\N
1014	wind	\N
1015	return	\N
1016	mission	\N
1018	opportunity	\N
1019	paper	\N
1021	throughout	\N
1022	born	\N
1023	but	\N
1024	occur	\N
1025	month	\N
1026	rule	\N
1027	area	\N
1028	speak	\N
1029	administration	\N
1030	Mrs	\N
1032	movement	\N
1033	main	\N
1034	left	\N
1035	deal	\N
1036	how	\N
1037	enter	\N
1039	seven	\N
1040	although	\N
1041	candidate	\N
1042	technology	\N
1043	around	\N
1045	check	\N
1046	down	\N
1047	anything	\N
1048	catch	\N
1049	bring	\N
1050	task	\N
1051	moment	\N
1052	really	\N
1053	father	\N
1054	recent	\N
1055	possible	\N
1056	pull	\N
1057	reality	\N
1058	response	\N
1059	law	\N
1060	risk	\N
1061	ask	\N
1062	try	\N
1063	public	\N
1064	radio	\N
1065	hard	\N
1066	staff	\N
1067	author	\N
1068	price	\N
1069	social	\N
1070	remain	\N
1071	maintain	\N
1072	page	\N
1073	yeah	\N
1074	deal	\N
1075	information	\N
1076	body	\N
1077	bed	\N
1078	scientist	\N
1080	him	\N
1081	heart	\N
1082	well	\N
1084	more	\N
1086	rich	\N
1087	remain	\N
1088	reveal	\N
1089	or	\N
1090	industry	\N
1091	feel	\N
1093	six	\N
1094	town	\N
1095	sometimes	\N
1096	subject	\N
1098	image	\N
1099	western	\N
1100	board	\N
1009	him	1024
1012	billion	1004
1017	environmental	1086
1020	night	1071
1031	on	1005
1038	agent	1097
1044	yes	1010
1079	environmental	1092
1083	night	1040
1085	bill	1055
1092	decide	1022
1097	event	1093
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (accessories_id, accessory_type) FROM stdin;
1101	born
1102	color
1103	better
1104	difficult
1105	direction
1106	task
1107	listen
1108	from
1109	its
1110	society
1111	poor
1112	next
1113	race
1114	Democrat
1115	explain
1116	position
1117	listen
1118	newspaper
1119	will
1120	full
1121	other
1122	affect
1123	source
1124	realize
1125	all
1126	another
1127	carry
1128	cost
1129	ball
1130	individual
1131	way
1132	first
1133	hospital
1134	high
1135	administration
1136	chair
1137	seat
1138	data
1139	can
1140	guess
1141	treat
1142	see
1143	again
1144	news
1145	right
1146	statement
1147	table
1148	act
1149	recognize
1150	party
1151	up
1152	former
1153	visit
1154	participant
1155	product
1156	drop
1157	forward
1158	always
1159	who
1160	country
1161	certainly
1162	but
1163	follow
1164	finish
1165	not
1166	doctor
1167	process
1168	throughout
1169	contain
1170	minute
1171	significant
1172	address
1173	both
1174	clearly
1175	true
1176	staff
1177	energy
1178	answer
1179	hair
1180	election
1181	standard
1182	drug
1183	local
1184	lose
1185	year
1186	speak
1187	conference
1188	arm
1189	heavy
1190	reveal
1191	energy
1192	bill
1193	eye
1194	every
1195	population
1196	company
1197	memory
1198	experience
1199	arrive
1200	power
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (appliance_id, energy_rating) FROM stdin;
1201	service
1202	argue
1203	cold
1204	south
1205	away
1206	attack
1207	energy
1208	perform
1209	reach
1210	test
1211	those
1212	student
1213	bring
1214	test
1215	cultural
1216	daughter
1217	natural
1218	century
1219	agree
1220	world
1221	less
1222	amount
1223	cold
1224	model
1225	various
1226	between
1227	strong
1228	performance
1229	blue
1230	result
1231	knowledge
1232	us
1233	question
1234	early
1235	its
1236	other
1237	toward
1238	kind
1239	fill
1240	firm
1241	alone
1242	they
1243	outside
1244	not
1245	senior
1246	law
1247	page
1248	really
1249	face
1250	true
1251	nature
1252	much
1253	seem
1254	wife
1255	save
1256	soon
1257	trip
1258	behind
1259	bit
1260	mean
1261	above
1262	ever
1263	rise
1264	shoulder
1265	fill
1266	above
1267	including
1268	sea
1269	high
1270	rather
1271	notice
1272	home
1273	understand
1274	hand
1275	day
1276	wind
1277	girl
1278	everyone
1279	reality
1280	beyond
1281	herself
1282	represent
1283	what
1284	dinner
1285	structure
1286	collection
1287	example
1288	can
1289	cut
1290	because
1291	argue
1292	while
1293	national
1294	task
1295	foot
1296	do
1297	road
1298	check
1299	customer
1300	suffer
1301	four
1302	wall
1303	everyone
1304	approach
1305	lay
1306	study
1307	music
1308	resource
1309	political
1310	mother
1311	deep
1312	huge
1313	whom
1314	many
1315	many
1316	image
1317	news
1318	Mr
1319	lawyer
1320	girl
1321	sit
1322	every
1323	poor
1324	office
1325	able
1326	yet
1327	inside
1328	imagine
1329	hour
1330	available
1331	change
1332	need
1333	able
1334	anything
1335	bar
1336	authority
1337	budget
1338	policy
1339	four
1340	sure
1341	child
1342	true
1343	war
1344	least
1345	through
1346	writer
1347	condition
1348	yourself
1349	free
1350	upon
1351	amount
1352	brother
1353	college
1354	response
1355	whether
1356	wide
1357	thus
1358	any
1359	for
1360	final
1361	you
1362	study
1363	seat
1364	project
1365	smile
1366	politics
1367	after
1368	hear
1369	view
1370	include
1371	ground
1372	right
1373	my
1374	rise
1375	collection
1376	area
1377	job
1378	report
1379	property
1380	big
1381	traditional
1382	road
1383	claim
1384	ahead
1385	positive
1386	main
1387	late
1388	interview
1389	mind
1390	source
1391	time
1392	quickly
1393	effect
1394	agree
1395	half
1396	these
1397	with
1398	put
1399	character
1400	audience
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (kitchenappliance_id, warranty_years) FROM stdin;
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
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (apparel_id, size_system) FROM stdin;
1401	ball
1402	size
1403	image
1404	enough
1405	man
1406	kitchen
1407	produce
1408	indicate
1409	summer
1410	executive
1411	consider
1412	her
1413	service
1414	international
1415	join
1416	near
1417	drug
1418	want
1419	seek
1420	trial
1421	area
1422	serious
1423	born
1424	nature
1425	why
1426	simply
1427	care
1428	single
1429	second
1430	note
1431	such
1432	point
1433	eat
1434	either
1435	stage
1436	well
1437	blue
1438	career
1439	inside
1440	face
1441	represent
1442	including
1443	against
1444	increase
1445	thus
1446	community
1447	believe
1448	time
1449	describe
1450	animal
1451	although
1452	assume
1453	discover
1454	city
1455	body
1456	same
1457	continue
1458	space
1459	above
1460	positive
1461	analysis
1462	she
1463	ahead
1464	discussion
1465	the
1466	animal
1467	road
1468	sister
1469	field
1470	magazine
1471	work
1472	anything
1473	series
1474	fund
1475	hot
1476	family
1477	civil
1478	into
1479	field
1480	position
1481	team
1482	station
1483	determine
1484	what
1485	tend
1486	begin
1487	feel
1488	water
1489	left
1490	second
1491	our
1492	music
1493	blue
1494	economic
1495	guess
1496	remain
1497	now
1498	capital
1499	scientist
1500	prevent
1501	decision
1502	identify
1503	arm
1504	can
1505	call
1506	field
1507	should
1508	dinner
1509	section
1510	start
1511	wall
1512	join
1513	blood
1514	six
1515	ahead
1516	own
1517	thought
1518	same
1519	eight
1520	for
1521	quickly
1522	myself
1523	edge
1524	edge
1525	blue
1526	edge
1527	hear
1528	prepare
1529	despite
1530	term
1531	candidate
1532	bed
1533	wrong
1534	yourself
1535	almost
1536	recently
1537	various
1538	you
1539	ready
1540	toward
1541	travel
1542	on
1543	process
1544	answer
1545	hard
1546	old
1547	child
1548	discover
1549	position
1550	next
1551	use
1552	peace
1553	page
1554	and
1555	four
1556	step
1557	history
1558	better
1559	easy
1560	public
1561	group
1562	general
1563	big
1564	above
1565	heavy
1566	case
1567	officer
1568	other
1569	move
1570	apply
1571	under
1572	factor
1573	away
1574	wait
1575	rise
1576	project
1577	write
1578	clear
1579	seek
1580	need
1581	kind
1582	remember
1583	travel
1584	economy
1585	hair
1586	near
1587	near
1588	book
1589	glass
1590	along
1591	player
1592	seven
1593	church
1594	chair
1595	thought
1596	not
1597	pressure
1598	community
1599	have
1600	rule
1601	trade
1602	spend
1603	our
1604	just
1605	on
1606	peace
1607	just
1608	cultural
1609	speech
1610	color
1611	use
1612	company
1613	you
1614	something
1615	record
1616	you
1617	yeah
1618	game
1619	rather
1620	race
1621	memory
1622	garden
1623	again
1624	across
1625	reality
1626	cost
1627	occur
1628	three
1629	beautiful
1630	line
1631	thus
1632	high
1633	involve
1634	return
1635	risk
1636	partner
1637	degree
1638	sport
1639	network
1640	dog
1641	must
1642	cup
1643	through
1644	tough
1645	realize
1646	view
1647	term
1648	environment
1649	agree
1650	collection
1651	whether
1652	section
1653	beat
1654	series
1655	generation
1656	herself
1657	continue
1658	compare
1659	blue
1660	senior
1661	list
1662	its
1663	country
1664	heart
1665	represent
1666	political
1667	number
1668	board
1669	eye
1670	learn
1671	point
1672	daughter
1673	vote
1674	rather
1675	station
1676	agent
1677	east
1678	beautiful
1679	assume
1680	need
1681	sometimes
1682	dark
1683	resource
1684	stock
1685	avoid
1686	detail
1687	interesting
1688	a
1689	that
1690	occur
1691	discuss
1692	need
1693	so
1694	so
1695	himself
1696	soon
1697	tough
1698	particularly
1699	case
1700	painting
1701	news
1702	baby
1703	per
1704	many
1705	now
1706	author
1707	then
1708	owner
1709	road
1710	try
1711	agreement
1712	recognize
1713	result
1714	focus
1715	live
1716	stage
1717	hot
1718	than
1719	might
1720	option
1721	suffer
1722	where
1723	I
1724	really
1725	drop
1726	study
1727	second
1728	grow
1729	all
1730	my
1731	few
1732	attention
1733	feel
1734	open
1735	recognize
1736	usually
1737	these
1738	result
1739	low
1740	seem
1741	religious
1742	nothing
1743	available
1744	adult
1745	or
1746	while
1747	should
1748	mother
1749	establish
1750	foreign
1751	third
1752	address
1753	race
1754	remember
1755	religious
1756	above
1757	enough
1758	arm
1759	take
1760	ability
1761	general
1762	all
1763	security
1764	student
1765	certain
1766	southern
1767	fly
1768	your
1769	call
1770	wife
1771	lead
1772	explain
1773	table
1774	no
1775	design
1776	avoid
1777	better
1778	task
1779	eye
1780	deal
1781	action
1782	protect
1783	word
1784	break
1785	economy
1786	hand
1787	couple
1788	grow
1789	of
1790	something
1791	white
1792	which
1793	table
1794	growth
1795	still
1796	summer
1797	arrive
1798	sort
1799	agent
1800	director
1801	us
1802	author
1803	father
1804	loss
1805	company
1806	instead
1807	serve
1808	network
1809	environment
1810	gun
1811	structure
1812	around
1813	score
1814	magazine
1815	war
1816	attorney
1817	look
1818	you
1819	with
1820	shake
1821	great
1822	discussion
1823	analysis
1824	nature
1825	political
1826	west
1827	play
1828	too
1829	friend
1830	teacher
1831	represent
1832	security
1833	where
1834	imagine
1835	order
1836	analysis
1837	edge
1838	executive
1839	role
1840	cover
1841	involve
1842	opportunity
1843	sea
1844	blood
1845	money
1846	us
1847	reveal
1848	arrive
1849	something
1850	security
1851	war
1852	open
1853	trade
1854	development
1855	everybody
1856	enter
1857	design
1858	boy
1859	next
1860	agreement
1861	seek
1862	degree
1863	official
1864	spring
1865	age
1866	very
1867	born
1868	offer
1869	other
1870	impact
1871	field
1872	forward
1873	serious
1874	while
1875	movement
1876	skill
1877	old
1878	science
1879	all
1880	move
1881	nor
1882	fact
1883	tree
1884	everybody
1885	north
1886	where
1887	crime
1888	land
1889	business
1890	child
1891	policy
1892	specific
1893	stage
1894	sea
1895	responsibility
1896	eye
1897	response
1898	bar
1899	need
1900	time
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (clothing_id, material) FROM stdin;
1501	word
1502	trouble
1503	figure
1504	impact
1505	physical
1506	ability
1507	finally
1508	no
1509	despite
1510	see
1511	one
1512	perform
1513	force
1514	blood
1515	per
1516	performance
1517	president
1518	ahead
1519	approach
1520	exist
1521	exactly
1522	box
1523	certainly
1524	something
1525	perhaps
1526	fast
1527	win
1528	one
1529	view
1530	speech
1531	wait
1532	likely
1533	break
1534	way
1535	suddenly
1536	health
1537	with
1538	recently
1539	hear
1540	performance
1541	discover
1542	stop
1543	between
1544	front
1545	international
1546	policy
1547	morning
1548	movement
1549	sometimes
1550	commercial
1551	agree
1552	employee
1553	which
1554	travel
1555	voice
1556	real
1557	phone
1558	item
1559	much
1560	event
1561	personal
1562	picture
1563	deep
1564	clearly
1565	move
1566	southern
1567	director
1568	participant
1569	professional
1570	physical
1571	what
1572	toward
1573	strategy
1574	begin
1575	generation
1576	role
1577	I
1578	give
1579	quite
1580	series
1581	PM
1582	away
1583	behavior
1584	right
1585	operation
1586	artist
1587	in
1588	thing
1589	imagine
1590	miss
1591	morning
1592	expert
1593	number
1594	back
1595	light
1596	or
1597	lead
1598	school
1599	girl
1600	hotel
1601	quickly
1602	good
1603	radio
1604	year
1605	should
1606	anything
1607	south
1608	successful
1609	reflect
1610	yeah
1611	old
1612	everything
1613	military
1614	commercial
1615	race
1616	hot
1617	either
1618	not
1619	truth
1620	really
1621	role
1622	wear
1623	share
1624	half
1625	pay
1626	enough
1627	because
1628	two
1629	anything
1630	may
1631	have
1632	history
1633	practice
1634	politics
1635	thousand
1636	art
1637	five
1638	choose
1639	myself
1640	couple
1641	would
1642	country
1643	growth
1644	food
1645	ask
1646	establish
1647	tonight
1648	first
1649	true
1650	size
1651	responsibility
1652	ago
1653	site
1654	mind
1655	if
1656	defense
1657	group
1658	but
1659	worker
1660	activity
1661	human
1662	whatever
1663	hold
1664	already
1665	nation
1666	myself
1667	economy
1668	effect
1669	but
1670	option
1671	training
1672	rest
1673	one
1674	environment
1675	central
1676	carry
1677	evidence
1678	event
1679	candidate
1680	often
1681	director
1682	entire
1683	down
1684	statement
1685	religious
1686	protect
1687	member
1688	especially
1689	until
1690	plant
1691	truth
1692	across
1693	politics
1694	admit
1695	type
1696	produce
1697	ground
1698	and
1699	great
1700	seek
1701	never
1702	page
1703	part
1704	wait
1705	she
1706	career
1707	this
1708	possible
1709	property
1710	pattern
1711	upon
1712	along
1713	ever
1714	certain
1715	discuss
1716	form
1717	range
1718	message
1719	fill
1720	account
1721	tell
1722	huge
1723	benefit
1724	yourself
1725	local
1726	although
1727	prove
1728	hold
1729	into
1730	read
1731	her
1732	provide
1733	yourself
1734	time
1735	back
1736	minute
1737	throw
1738	around
1739	room
1740	glass
1741	movement
1742	rock
1743	recent
1744	by
1745	letter
1746	blood
1747	its
1748	model
1749	late
1750	information
1751	mouth
1752	into
1753	people
1754	report
1755	again
1756	expert
1757	sit
1758	him
1759	suggest
1760	indeed
1761	radio
1762	industry
1763	condition
1764	maybe
1765	start
1766	small
1767	treat
1768	article
1769	guess
1770	hundred
1771	school
1772	help
1773	majority
1774	significant
1775	because
1776	condition
1777	how
1778	ground
1779	attack
1780	finally
1781	finally
1782	Mr
1783	should
1784	sea
1785	traditional
1786	new
1787	baby
1788	mother
1789	majority
1790	issue
1791	pressure
1792	child
1793	style
1794	several
1795	seven
1796	hold
1797	attack
1798	sit
1799	between
1800	majority
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (menclothing_id, fit_type_men) FROM stdin;
1601	nice
1602	of
1603	make
1604	gas
1605	agent
1606	manager
1607	miss
1608	two
1609	me
1610	involve
1611	choose
1612	believe
1613	policy
1614	future
1615	hour
1616	benefit
1617	determine
1618	base
1619	throughout
1620	list
1621	but
1622	forward
1623	example
1624	skill
1625	community
1626	law
1627	establish
1628	hot
1629	least
1630	where
1631	smile
1632	sure
1633	right
1634	gun
1635	bill
1636	participant
1637	field
1638	with
1639	somebody
1640	charge
1641	Mrs
1642	decide
1643	spend
1644	note
1645	start
1646	one
1647	forget
1648	ground
1649	anyone
1650	free
1651	lose
1652	enjoy
1653	second
1654	maybe
1655	green
1656	upon
1657	sound
1658	serve
1659	radio
1660	attack
1661	decision
1662	unit
1663	fast
1664	usually
1665	also
1666	agency
1667	article
1668	resource
1669	hot
1670	investment
1671	throughout
1672	stand
1673	try
1674	degree
1675	media
1676	growth
1677	body
1678	table
1679	policy
1680	find
1681	yard
1682	month
1683	church
1684	candidate
1685	different
1686	medical
1687	kitchen
1688	shake
1689	because
1690	agree
1691	break
1692	generation
1693	against
1694	herself
1695	thing
1696	institution
1697	property
1698	read
1699	for
1700	car
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (womenclothing_id, fit_type_women) FROM stdin;
1701	son
1702	decision
1703	people
1704	many
1705	cause
1706	rock
1707	myself
1708	bring
1709	common
1710	have
1711	which
1712	east
1713	wrong
1714	down
1715	threat
1716	significant
1717	generation
1718	response
1719	point
1720	model
1721	billion
1722	north
1723	product
1724	former
1725	design
1726	fact
1727	dinner
1728	street
1729	money
1730	every
1731	manager
1732	star
1733	where
1734	month
1735	of
1736	would
1737	home
1738	often
1739	house
1740	somebody
1741	soon
1742	couple
1743	nothing
1744	PM
1745	natural
1746	fill
1747	allow
1748	young
1749	best
1750	her
1751	opportunity
1752	feel
1753	drive
1754	no
1755	anything
1756	rule
1757	wall
1758	understand
1759	color
1760	chair
1761	person
1762	institution
1763	there
1764	admit
1765	no
1766	yes
1767	later
1768	month
1769	office
1770	interesting
1771	class
1772	it
1773	purpose
1774	serve
1775	tax
1776	up
1777	wide
1778	consumer
1779	forget
1780	think
1781	time
1782	attack
1783	determine
1784	dream
1785	stock
1786	move
1787	pick
1788	what
1789	unit
1790	party
1791	current
1792	community
1793	newspaper
1794	shake
1795	professor
1796	star
1797	will
1798	writer
1799	business
1800	human
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (footwear_id, sole_material) FROM stdin;
1801	ball
1802	more
1803	get
1804	drug
1805	fund
1806	piece
1807	too
1808	factor
1809	effect
1810	from
1811	real
1812	type
1813	television
1814	five
1815	involve
1816	people
1817	development
1818	own
1819	rest
1820	prepare
1821	reality
1822	front
1823	administration
1824	buy
1825	various
1826	generation
1827	tax
1828	enough
1829	down
1830	relationship
1831	agency
1832	later
1833	tell
1834	send
1835	now
1836	standard
1837	student
1838	major
1839	song
1840	thus
1841	area
1842	exist
1843	cover
1844	eat
1845	trouble
1846	miss
1847	they
1848	wall
1849	certainly
1850	recent
1851	perhaps
1852	appear
1853	card
1854	poor
1855	current
1856	share
1857	environment
1858	anything
1859	nice
1860	smile
1861	great
1862	side
1863	list
1864	travel
1865	foot
1866	let
1867	identify
1868	wall
1869	into
1870	inside
1871	condition
1872	fear
1873	shake
1874	science
1875	accept
1876	wind
1877	church
1878	glass
1879	course
1880	argue
1881	detail
1882	somebody
1883	sell
1884	early
1885	age
1886	together
1887	important
1888	short
1889	wish
1890	relationship
1891	civil
1892	forward
1893	month
1894	right
1895	per
1896	seven
1897	market
1898	sense
1899	current
1900	play
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (physicalproduct_id, dimensions) FROM stdin;
101	one
102	visit
103	single
104	think
105	important
106	least
107	land
108	join
109	already
110	prove
111	difference
112	young
113	just
114	season
115	prove
116	property
117	probably
118	chair
119	spring
120	hair
121	long
122	pressure
123	approach
124	family
125	total
126	democratic
127	drive
128	do
129	main
130	always
131	room
132	crime
133	live
134	water
135	early
136	same
137	usually
138	result
139	a
140	born
141	specific
142	manager
143	control
144	moment
145	health
146	light
147	popular
148	light
149	boy
150	from
151	no
152	reveal
153	maybe
154	soldier
155	contain
156	thousand
157	these
158	instead
159	have
160	cultural
161	remain
162	job
163	tough
164	best
165	may
166	bank
167	good
168	data
169	return
170	buy
171	indeed
172	according
173	sound
174	special
175	social
176	view
177	minute
178	approach
179	return
180	trouble
181	cut
182	lawyer
183	language
184	likely
185	affect
186	administration
187	American
188	whether
189	those
190	head
191	before
192	condition
193	human
194	heavy
195	city
196	long
197	public
198	policy
199	other
200	draw
301	standard
302	her
303	pressure
304	field
305	onto
306	simply
307	low
308	day
309	American
310	maybe
311	your
312	start
313	value
314	surface
315	hour
316	parent
317	let
318	myself
319	picture
320	rule
321	building
322	yet
323	son
324	recent
325	it
326	discussion
327	single
328	look
329	place
330	machine
331	note
332	include
333	pull
334	deep
335	hotel
336	fear
337	my
338	bed
339	remain
340	get
341	condition
342	early
343	throw
344	stuff
345	rest
346	evening
347	fish
348	practice
349	shake
350	support
351	network
352	human
353	firm
354	look
355	side
356	care
357	agency
358	job
359	social
360	its
361	music
362	type
363	air
364	thus
365	spend
366	medical
367	push
368	another
369	trouble
370	gas
371	quickly
372	parent
373	role
374	national
375	class
376	Democrat
377	protect
378	almost
379	son
380	five
381	go
382	work
383	identify
384	audience
385	democratic
386	share
387	throughout
388	move
389	word
390	wall
391	single
392	stand
393	clearly
394	say
395	else
396	will
397	interview
398	hospital
399	property
400	piece
401	yet
402	medical
403	against
404	trial
405	trade
406	case
407	though
408	health
409	interesting
410	value
411	general
412	well
413	ok
414	everything
415	its
416	cost
417	reduce
418	exist
419	challenge
420	get
421	hospital
422	doctor
423	small
424	respond
425	really
426	line
427	support
428	small
429	team
430	baby
431	return
432	finish
433	check
434	suffer
435	parent
436	doctor
437	education
438	national
439	blue
440	population
441	executive
442	yet
443	road
444	woman
445	reason
446	go
447	building
448	stock
449	speak
450	understand
451	serious
452	fund
453	body
454	rest
455	west
456	contain
457	suffer
458	be
459	dinner
460	support
461	never
462	sense
463	discussion
464	entire
465	building
466	speech
467	economic
468	base
469	brother
470	industry
471	painting
472	herself
473	need
474	raise
475	power
476	thousand
477	top
478	around
479	pressure
480	dinner
481	summer
482	between
483	hold
484	our
485	would
486	reason
487	data
488	air
489	between
490	direction
491	win
492	always
493	especially
494	yeah
495	firm
496	human
497	late
498	fine
499	and
500	people
501	month
502	positive
503	maintain
504	bill
505	believe
506	hand
507	staff
508	share
509	sit
510	nor
511	series
512	take
513	plant
514	another
515	husband
516	two
517	record
518	quality
519	throw
520	matter
521	amount
522	raise
523	lay
524	easy
525	start
526	college
527	such
528	woman
529	pick
530	some
531	into
532	throughout
533	entire
534	exist
535	move
536	international
537	successful
538	more
539	blue
540	issue
541	agree
542	population
543	worry
544	author
545	glass
546	thank
547	they
548	interview
549	society
550	what
551	vote
552	operation
553	main
554	safe
555	hospital
556	responsibility
557	institution
558	me
559	step
560	tax
561	candidate
562	what
563	most
564	keep
565	tough
566	pass
567	apply
568	local
569	finish
570	his
571	across
572	left
573	often
574	baby
575	event
576	director
577	game
578	participant
1338	we
579	particularly
580	five
581	strategy
582	else
583	resource
584	city
585	and
586	home
587	office
588	heart
589	fast
590	rise
591	soon
592	series
593	area
594	write
595	million
596	bring
597	west
598	mouth
599	sister
600	lay
601	guy
602	oil
603	suffer
604	growth
605	also
606	step
607	partner
608	chair
609	approach
610	they
611	how
612	power
613	they
614	happen
615	letter
616	sign
617	particularly
618	yard
619	require
620	collection
621	first
622	challenge
623	middle
624	only
625	skin
626	type
627	such
628	step
629	believe
630	list
631	Republican
632	bad
633	me
634	production
635	wonder
636	eat
637	ready
638	somebody
639	enjoy
640	only
641	food
642	out
643	official
644	seek
645	increase
646	financial
647	sort
648	none
649	grow
650	part
651	prove
652	continue
653	trip
654	more
655	theory
656	open
657	town
658	return
659	because
660	data
661	wish
662	begin
663	others
664	quality
665	mean
666	he
667	beyond
668	animal
669	minute
670	box
671	owner
672	benefit
673	own
674	young
675	past
676	give
677	believe
678	be
679	future
680	out
681	social
682	rest
683	single
684	be
685	party
686	leave
687	move
688	near
689	board
690	push
691	several
692	really
693	wind
694	least
695	power
696	improve
697	another
698	need
699	money
700	question
701	step
702	without
703	grow
704	century
705	series
706	blue
707	chair
708	effect
709	through
710	reduce
711	price
712	once
713	piece
714	direction
715	hit
716	market
717	stage
718	stage
719	learn
720	good
721	consumer
722	still
723	place
724	professional
725	capital
726	your
727	education
728	seek
729	subject
730	itself
731	could
732	who
733	suggest
734	brother
735	hot
736	bag
737	evidence
738	material
739	rather
740	chair
741	strong
742	citizen
743	phone
744	total
745	out
746	reason
747	tend
748	oil
749	bring
750	state
751	control
752	threat
753	perhaps
754	development
755	almost
756	box
757	final
758	protect
759	north
760	line
761	east
762	today
763	deep
764	at
765	property
766	modern
767	end
768	doctor
769	offer
770	billion
771	way
772	indicate
773	place
774	accept
775	drop
776	financial
777	all
778	billion
779	finish
780	hair
781	mention
782	story
783	group
784	audience
785	into
786	capital
787	spend
788	but
789	will
790	more
791	road
792	analysis
793	hospital
794	people
795	character
796	which
797	cultural
798	maintain
799	state
800	pull
801	bring
802	attack
803	computer
804	discussion
805	very
806	mother
807	mouth
808	short
809	option
810	four
811	although
812	total
813	walk
814	minute
815	method
816	from
817	number
818	enjoy
819	never
820	house
821	focus
822	spring
823	check
824	citizen
825	wait
826	your
827	success
828	condition
829	scientist
830	foot
831	soon
832	direction
833	begin
834	question
835	than
836	respond
837	last
838	agency
839	stock
840	father
841	section
842	through
843	edge
844	piece
845	beat
846	raise
847	him
848	eye
849	quickly
850	various
851	wonder
852	long
853	indicate
854	as
855	bring
856	mouth
857	reflect
858	energy
859	something
860	radio
861	personal
862	wrong
863	light
864	ask
865	drive
866	pick
867	dog
868	painting
869	space
870	some
871	past
872	talk
873	growth
874	religious
875	new
876	water
877	long
878	war
879	kid
880	course
881	floor
882	poor
883	pass
884	night
885	sit
886	leader
887	stock
888	child
889	season
890	kid
891	cultural
892	national
893	finally
894	respond
895	notice
896	where
897	commercial
898	everybody
899	high
900	son
901	data
902	special
903	student
904	together
905	join
906	series
907	hair
908	agent
909	society
910	we
911	account
912	little
913	certainly
914	manager
915	we
916	back
917	eat
918	write
919	ten
920	look
921	stage
922	pull
923	box
924	management
925	protect
926	data
927	particular
928	theory
929	meeting
930	rather
931	maintain
932	sense
933	fact
934	fast
935	impact
936	leader
937	can
938	technology
939	group
940	Mr
941	religious
942	up
943	executive
944	behavior
945	agree
946	weight
947	great
948	character
949	remain
950	language
951	back
952	cultural
953	truth
954	especially
955	than
956	film
957	alone
958	mission
959	start
960	indicate
961	per
962	require
963	talk
964	save
965	international
966	have
967	well
968	nothing
969	agency
970	evidence
971	set
972	suggest
973	try
974	finish
975	receive
976	everything
977	personal
978	lead
979	charge
980	anyone
981	marriage
982	they
983	data
984	successful
985	may
986	smile
987	trip
988	plant
989	sport
990	heavy
991	card
992	federal
993	despite
994	take
995	top
996	head
997	recent
998	culture
999	eye
1000	edge
1001	because
1002	wait
1003	increase
1004	feeling
1005	enter
1006	open
1007	people
1008	simple
1009	process
1010	plant
1011	meeting
1012	top
1013	believe
1014	early
1015	on
1016	local
1017	more
1018	what
1019	available
1020	nature
1021	respond
1022	management
1023	else
1024	development
1025	middle
1026	talk
1027	center
1028	bad
1029	above
1030	begin
1031	say
1032	north
1033	eye
1034	model
1035	than
1036	allow
1037	by
1038	project
1039	six
1040	according
1041	news
1042	argue
1043	speak
1044	today
1045	among
1046	natural
1047	team
1048	which
1049	summer
1050	wish
1051	reach
1052	television
1053	million
1054	prevent
1055	their
1056	beyond
1057	civil
1058	go
1059	low
1060	me
1061	appear
1062	team
1063	movement
1064	method
1065	at
1066	health
1067	whatever
1068	financial
1069	mind
1070	home
1071	full
1072	her
1073	officer
1074	them
1075	suddenly
1076	draw
1077	stop
1078	tough
1079	region
1080	night
1081	their
1082	human
1083	challenge
1084	myself
1085	hospital
1086	anyone
1087	soon
1088	our
1089	great
1090	throw
1091	experience
1092	interest
1093	high
1094	rule
1095	join
1096	arrive
1097	building
1098	rise
1099	coach
1100	require
1101	minute
1102	traditional
1103	first
1104	project
1105	happy
1106	keep
1107	conference
1108	left
1109	child
1110	low
1111	anything
1112	building
1113	wear
1114	rate
1115	design
1116	serve
1117	evidence
1118	defense
1119	building
1120	message
1121	discover
1122	nation
1123	sea
1124	without
1125	put
1126	drop
1127	role
1128	brother
1129	detail
1130	night
1131	little
1132	quite
1133	church
1134	wish
1135	hold
1136	where
1137	idea
1138	rule
1139	rather
1140	expect
1141	add
1142	one
1143	personal
1144	safe
1145	six
1146	set
1147	half
1148	military
1149	instead
1150	material
1151	performance
1152	bag
1153	watch
1154	the
1155	sport
1156	religious
1157	perhaps
1158	think
1159	large
1160	participant
1161	pattern
1162	law
1163	off
1164	professor
1165	author
1166	fine
1167	a
1168	security
1169	white
1170	strategy
1171	idea
1172	lose
1173	blue
1174	short
1175	son
1176	discover
1177	box
1178	act
1179	my
1180	pressure
1181	green
1182	through
1183	fact
1184	us
1185	sit
1186	artist
1187	officer
1188	possible
1189	focus
1190	let
1191	food
1192	relationship
1193	letter
1194	care
1195	market
1196	can
1197	film
1198	reduce
1199	wait
1200	interview
1201	money
1202	audience
1203	prove
1204	sure
1205	force
1206	picture
1207	check
1208	say
1209	protect
1210	by
1211	fall
1212	can
1213	but
1214	pressure
1215	news
1216	fire
1217	account
1218	teacher
1219	analysis
1220	head
1221	power
1222	probably
1223	account
1224	group
1225	feel
1226	model
1227	best
1228	doctor
1229	report
1230	enjoy
1231	member
1232	specific
1233	until
1234	look
1235	hand
1236	these
1237	best
1238	card
1239	lose
1240	determine
1241	a
1242	energy
1243	sometimes
1244	either
1245	short
1246	science
1247	win
1248	bag
1249	small
1250	college
1251	when
1252	environmental
1253	coach
1254	together
1255	send
1256	sell
1257	computer
1258	citizen
1259	make
1260	hit
1261	either
1262	enough
1263	movement
1264	structure
1265	sense
1266	world
1267	message
1268	become
1269	none
1270	health
1271	entire
1272	goal
1273	room
1274	million
1275	bed
1276	watch
1277	tell
1278	base
1279	two
1280	another
1281	hair
1282	listen
1283	hour
1284	political
1285	expert
1286	think
1287	some
1288	pick
1289	exactly
1290	final
1291	human
1292	speak
1293	change
1294	court
1295	enter
1296	peace
1297	memory
1298	heavy
1299	resource
1300	person
1301	moment
1302	we
1303	sit
1304	church
1305	follow
1306	remain
1307	TV
1308	world
1309	leg
1310	yes
1311	beyond
1312	PM
1313	painting
1314	hear
1315	long
1316	to
1317	everybody
1318	interest
1319	yes
1320	late
1321	control
1322	whatever
1323	gas
1324	forward
1325	suffer
1326	party
1327	tough
1328	newspaper
1329	itself
1330	let
1331	old
1332	couple
1333	spring
1334	laugh
1335	ready
1336	first
1337	race
1339	care
1340	education
1341	everything
1342	start
1343	class
1344	truth
1345	form
1346	performance
1347	fire
1348	pretty
1349	teacher
1350	reflect
1351	plan
1352	defense
1353	through
1354	rich
1355	money
1356	direction
1357	her
1358	wide
1359	meet
1360	skin
1361	power
1362	father
1363	sure
1364	to
1365	soldier
1366	present
1367	thank
1368	water
1369	it
1370	reveal
1371	American
1372	save
1373	population
1374	fine
1375	shake
1376	write
1377	nation
1378	behavior
1379	fact
1380	accept
1381	create
1382	available
1383	table
1384	home
1385	east
1386	art
1387	important
1388	live
1389	stage
1390	become
1391	understand
1392	drop
1393	lose
1394	south
1395	heavy
1396	data
1397	wife
1398	experience
1399	reduce
1400	purpose
1401	message
1402	a
1403	nation
1404	nearly
1405	chance
1406	program
1407	consumer
1408	expect
1409	evening
1410	two
1411	crime
1412	about
1413	consumer
1414	another
1415	they
1416	interesting
1417	industry
1418	enjoy
1419	go
1420	paper
1421	sound
1422	Mrs
1423	above
1424	party
1425	kitchen
1426	score
1427	station
1428	fear
1429	industry
1430	campaign
1431	good
1432	source
1433	financial
1434	set
1435	social
1436	throughout
1437	probably
1438	return
1439	bad
1440	early
1441	behind
1442	the
1443	travel
1444	participant
1445	degree
1446	series
1447	high
1448	do
1449	board
1450	seat
1451	education
1452	policy
1453	staff
1454	from
1455	relate
1456	good
1457	story
1458	carry
1459	game
1460	save
1461	business
1462	blood
1463	similar
1464	who
1465	debate
1466	deep
1467	six
1468	himself
1469	mean
1470	another
1471	enough
1472	federal
1473	sing
1474	think
1475	spring
1476	world
1477	discuss
1478	challenge
1479	kind
1480	take
1481	center
1482	management
1483	research
1484	industry
1485	hour
1486	moment
1487	movie
1488	scientist
1489	player
1490	forget
1491	fact
1492	wall
1493	listen
1494	general
1495	challenge
1496	yes
1497	play
1498	structure
1499	new
1500	increase
1501	sometimes
1502	side
1503	much
1504	through
1505	adult
1506	decade
1507	special
1508	treat
1509	grow
1510	positive
1511	area
1512	deep
1513	me
1514	public
1515	worker
1516	again
1517	impact
1518	actually
1519	federal
1520	culture
1521	picture
1522	goal
1523	forget
1524	compare
1525	something
1526	available
1527	teach
1528	man
1529	clear
1530	cut
1531	pattern
1532	involve
1533	in
1534	product
1535	must
1536	war
1537	whose
1538	often
1539	treat
1540	across
1541	group
1542	not
1543	pattern
1544	involve
1545	film
1546	meet
1547	picture
1548	available
1549	red
1550	receive
1551	customer
1552	plan
1553	ten
1554	significant
1555	mean
1556	daughter
1557	factor
1558	thank
1559	side
1560	here
1561	floor
1562	kind
1563	gas
1564	professor
1565	present
1566	each
1567	billion
1568	result
1569	property
1570	write
1571	common
1572	and
1573	mention
1574	tonight
1575	wrong
1576	mention
1577	blue
1578	couple
1579	news
1580	start
1581	class
1582	perhaps
1583	idea
1584	shake
1585	animal
1586	television
1587	marriage
1588	talk
1589	small
1590	huge
1591	seat
1592	involve
1593	mean
1594	point
1595	moment
1596	help
1597	actually
1598	agree
1599	list
1600	street
1601	eight
1602	serious
1603	success
1604	here
1605	trial
1606	radio
1607	general
1608	garden
1609	group
1610	begin
1611	one
1612	example
1613	indicate
1614	window
1615	my
1616	tonight
1617	involve
1618	share
1619	only
1620	fast
1621	science
1622	time
1623	reduce
1624	mother
1625	gun
1626	exactly
1627	behind
1628	bag
1629	mind
1630	might
1631	sign
1632	couple
1633	need
1634	with
1635	happy
1636	operation
1637	method
1638	collection
1639	analysis
1640	detail
1641	Congress
1642	listen
1643	seven
1644	hand
1645	fast
1646	total
1647	push
1648	take
1649	family
1650	remember
1651	after
1652	heart
1653	commercial
1654	account
1655	culture
1656	wait
1657	business
1658	produce
1659	surface
1660	firm
1661	candidate
1662	expert
1663	think
1664	almost
1665	dark
1666	force
1667	energy
1668	college
1669	debate
1670	specific
1671	management
1672	him
1673	of
1674	whom
1675	finish
1676	deal
1677	board
1678	manage
1679	senior
1680	design
1681	fast
1682	across
1683	popular
1684	tell
1685	song
1686	back
1687	parent
1688	remember
1689	audience
1690	particular
1691	production
1692	yet
1693	of
1694	radio
1695	eight
1696	across
1697	lead
1698	four
1699	while
1700	baby
1701	discover
1702	peace
1703	page
1704	prepare
1705	appear
1706	stop
1707	adult
1708	dream
1709	vote
1710	mission
1711	who
1712	hospital
1713	whole
1714	two
1715	coach
1716	really
1717	involve
1718	begin
1719	school
1720	analysis
1721	yeah
1722	it
1723	PM
1724	building
1725	happen
1726	single
1727	cultural
1728	current
1729	animal
1730	without
1731	home
1732	thing
1733	late
1734	entire
1735	whatever
1736	strategy
1737	growth
1738	college
1739	economic
1740	strategy
1741	note
1742	various
1743	truth
1744	chance
1745	many
1746	between
1747	account
1748	heart
1749	worker
1750	study
1751	ago
1752	then
1753	news
1754	whose
1755	beyond
1756	show
1757	agreement
1758	production
1759	recently
1760	against
1761	lead
1762	ready
1763	citizen
1764	energy
1765	agree
1766	hand
1767	animal
1768	next
1769	political
1770	trial
1771	suggest
1772	north
1773	produce
1774	explain
1775	adult
1776	vote
1777	question
1778	rise
1779	response
1780	open
1781	inside
1782	light
1783	serve
1784	fact
1785	personal
1786	old
1787	room
1788	college
1789	assume
1790	structure
1791	bed
1792	room
1793	manage
1794	small
1795	amount
1796	drive
1797	woman
1798	some
1799	care
1800	follow
1801	new
1802	far
1803	moment
1804	short
1805	heart
1806	rich
1807	central
1808	choose
1809	move
1810	wonder
1811	check
1812	fund
1813	tree
1814	within
1815	college
1816	around
1817	spend
1818	service
1819	protect
1820	quickly
1821	shake
1822	turn
1823	last
1824	at
1825	interview
1826	try
1827	turn
1828	college
1829	poor
1830	production
1831	any
1832	rise
1833	money
1834	between
1835	small
1836	add
1837	difficult
1838	game
1839	evening
1840	happen
1841	hard
1842	move
1843	miss
1844	street
1845	many
1846	assume
1847	car
1848	computer
1849	to
1850	according
1851	my
1852	grow
1853	once
1854	year
1855	growth
1856	election
1857	able
1858	here
1859	exist
1860	continue
1861	as
1862	turn
1863	especially
1864	understand
1865	none
1866	probably
1867	performance
1868	put
1869	economic
1870	opportunity
1871	somebody
1872	machine
1873	miss
1874	read
1875	head
1876	analysis
1877	claim
1878	class
1879	someone
1880	thank
1881	make
1882	religious
1883	newspaper
1884	road
1885	opportunity
1886	far
1887	more
1888	summer
1889	participant
1890	look
1891	discuss
1892	national
1893	exactly
1894	own
1895	hour
1896	kid
1897	stock
1898	professional
1899	leg
1900	whatever
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (media_id, format) FROM stdin;
1901	enough
1902	before
1903	trial
1904	huge
1905	capital
1906	somebody
1907	dream
1908	attention
1909	think
1910	often
1911	name
1912	despite
1913	wife
1914	push
1915	figure
1916	society
1917	have
1918	threat
1919	almost
1920	political
1921	main
1922	spend
1923	poor
1924	method
1925	letter
1926	structure
1927	allow
1928	challenge
1929	direction
1930	art
1931	sort
1932	customer
1933	manage
1934	important
1935	successful
1936	month
1937	exist
1938	song
1939	somebody
1940	white
1941	across
1942	clearly
1943	that
1944	student
1945	drive
1946	garden
1947	by
1948	crime
1949	population
1950	oil
1951	art
1952	former
1953	suddenly
1954	billion
1955	good
1956	successful
1957	investment
1958	move
1959	but
1960	soldier
1961	hot
1962	whatever
1963	religious
1964	point
1965	whatever
1966	her
1967	or
1968	majority
1969	attention
1970	area
1971	name
1972	manage
1973	black
1974	bag
1975	close
1976	vote
1977	Democrat
1978	white
1979	term
1980	never
1981	risk
1982	public
1983	compare
1984	ahead
1985	north
1986	officer
1987	fear
1988	toward
1989	Republican
1990	their
1991	pass
1992	leave
1993	item
1994	stock
1995	box
1996	watch
1997	garden
1998	thought
1999	building
2000	day
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (software_id, license_type) FROM stdin;
2001	agree
2002	middle
2003	into
2004	buy
2005	sound
2006	when
2007	bar
2008	assume
2009	impact
2010	seek
2011	behavior
2012	question
2013	quality
2014	high
2015	city
2016	strong
2017	police
2018	service
2019	media
2020	culture
2021	sometimes
2022	purpose
2023	late
2024	nothing
2025	memory
2026	memory
2027	card
2028	them
2029	type
2030	official
2031	security
2032	stay
2033	discuss
2034	later
2035	level
2036	improve
2037	car
2038	news
2039	fund
2040	a
2041	eat
2042	baby
2043	establish
2044	reason
2045	staff
2046	business
2047	career
2048	treatment
2049	however
2050	ago
2051	order
2052	right
2053	religious
2054	consumer
2055	design
2056	fund
2057	rest
2058	rise
2059	unit
2060	behavior
2061	letter
2062	cultural
2063	since
2064	establish
2065	total
2066	quickly
2067	time
2068	computer
2069	second
2070	professor
2071	home
2072	they
2073	business
2074	rich
2075	onto
2076	than
2077	want
2078	glass
2079	recently
2080	bar
2081	why
2082	sense
2083	fund
2084	teacher
2085	technology
2086	discussion
2087	for
2088	him
2089	statement
2090	piece
2091	tax
2092	matter
2093	case
2094	position
2095	artist
2096	management
2097	although
2098	have
2099	system
2100	skin
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (user_id, email, password_hash, mv_user) FROM stdin;
1	lance56@example.net	owner	{raise,white}
2	grayapril@example.net	reflect	{have,those,ten,newspaper}
3	beckymurray@example.org	trade	{American,century,especially}
4	catherineacosta@example.com	who	{effect,power}
5	josephlittle@example.org	food	{year,industry,game}
6	davissylvia@example.com	administration	{actually}
7	williamsmark@example.org	organization	{coach}
8	steven89@example.com	certain	{first}
9	kelseywhitney@example.com	walk	{just,any}
10	rebecca22@example.net	ball	{amount,open,notice,skill}
11	elaine98@example.com	cut	{place,agent,back,region}
12	xmartin@example.org	human	{second}
13	amanda66@example.org	tonight	{know,production,audience,safe}
14	parkmonique@example.com	similar	{pretty}
15	wcarpenter@example.org	discover	{none,watch}
16	schultzconnor@example.net	room	{body}
17	katherine16@example.com	rather	{concern,environment,partner}
18	joseph79@example.net	approach	{ground}
19	paul92@example.com	especially	{option,look,production,American}
20	rebecca07@example.net	fall	{identify,wind}
21	deanchristopher@example.org	base	{memory,hit}
22	bmcdonald@example.com	air	{day,white}
23	dharmon@example.net	experience	{room,worker}
24	raymondchristopher@example.org	six	{song,trip,coach,leave}
25	macklaura@example.net	film	{example,event}
26	wjohnson@example.net	to	{region,must}
27	brucechavez@example.net	dog	{serious,friend}
28	humphreyalexis@example.org	pick	{expect,take,reason}
29	nwalsh@example.net	top	{value}
30	garciamario@example.net	development	{simple,certainly,activity}
31	lnielsen@example.com	movie	{lawyer}
32	dmurphy@example.org	sell	{above,page,pass,speak}
33	romerochristopher@example.net	recent	{administration,control,over,him}
34	zlindsey@example.org	suggest	{force}
35	bross@example.org	industry	{president}
36	sphillips@example.com	dark	{example,bit,create,return}
37	rowesabrina@example.net	hope	{book,upon}
38	peter65@example.net	current	{country,area,store,style}
39	anthony58@example.net	building	{that,support,show}
40	meganwilson@example.net	although	{sense}
41	johnhill@example.net	relationship	{improve}
42	jessica91@example.org	world	{store}
43	stephanie47@example.net	music	{arm,similar}
44	youngcolleen@example.org	give	{deep,fast}
45	mariah37@example.net	young	{system,loss,try}
46	catherine17@example.net	war	{job}
47	joshua69@example.org	in	{student,stop,tell}
48	sheilacollins@example.com	matter	{determine,value}
49	walkercassandra@example.org	record	{candidate}
50	ryan41@example.net	trial	{man}
51	ashleydiaz@example.com	money	{international,stop,not,itself}
52	jesse19@example.org	clearly	{hot,measure}
53	chaneychad@example.com	yet	{beat,general,upon}
54	kbell@example.org	three	{treat}
55	shaunthomas@example.com	do	{especially}
56	areilly@example.com	tonight	{fire,lawyer,open}
57	smitheric@example.net	will	{off,like}
58	scottlong@example.com	art	{citizen,avoid}
59	washingtondaniel@example.org	tough	{even,audience}
60	browncrystal@example.net	perform	{yourself,probably,thought}
61	kwilson@example.com	kitchen	{blood,morning,concern,name}
62	jeremy63@example.org	face	{determine,major,safe}
63	andrewrobinson@example.com	around	{computer}
64	gonzalezbecky@example.org	sing	{meeting}
65	andrew65@example.com	view	{rate,identify,firm}
66	denise73@example.com	measure	{personal,mouth}
67	justin60@example.com	indeed	{visit}
68	rodneygreen@example.com	task	{wall,Mr,similar}
69	hlang@example.net	assume	{important,surface,letter}
70	mooreregina@example.net	soon	{participant,table}
71	petersonrachel@example.com	high	{magazine}
72	moralesstephanie@example.org	bag	{agent,art,truth,form}
73	mark15@example.org	positive	{really,space}
509	taylor29@example.com	baby	{radio,area}
74	fosterchristopher@example.net	might	{rise,minute,in}
75	lking@example.org	arm	{tax,attorney,growth}
76	kennethjones@example.org	agreement	{hit,small,house,try}
77	dean49@example.com	manage	{conference,than,next,national}
78	smithlogan@example.com	member	{down,door,start,wear}
79	gilmorephilip@example.org	far	{year,interesting,during}
80	martha78@example.net	or	{house,idea,air,fill}
81	andrewreed@example.net	how	{whom}
82	sherricobb@example.net	fear	{age}
83	uterry@example.com	guess	{boy}
84	stephanieandrews@example.net	couple	{appear,if}
85	stephenjones@example.org	who	{adult,PM,customer}
86	catherine41@example.com	center	{simple,threat}
87	ronaldleblanc@example.com	key	{account}
88	kenneth19@example.org	laugh	{as}
89	jprince@example.com	item	{add,future,budget}
90	pamela28@example.com	drug	{enjoy,family}
91	martinezwilliam@example.org	bed	{speech,soon,east,reduce}
92	kevinjennings@example.org	through	{economic,though,wonder,open}
93	lisayoung@example.com	party	{college}
94	timothy29@example.com	visit	{thing}
95	cruzpatricia@example.org	success	{appear,chair,contain,religious}
96	jasontaylor@example.org	key	{present,difference,middle}
97	anthonyharmon@example.org	because	{sort,industry,cell}
98	ujacobs@example.org	drop	{by}
99	kathrynhopkins@example.net	truth	{take}
100	hrobinson@example.org	writer	{matter,particularly,there}
101	clinetanya@example.net	thing	{not,society}
102	turnerashley@example.org	catch	{way,reality,firm,threat}
103	brandon28@example.org	foreign	{kid,no}
104	gentrymichael@example.com	suddenly	{shoulder,quality,make,certain}
105	jacksonamber@example.com	Republican	{treatment,son}
106	teresa25@example.org	feel	{run,lead}
107	ronaldmiller@example.net	expect	{fall,others}
108	lauramatthews@example.net	loss	{would}
109	deannaflores@example.net	school	{fight,bring}
110	kellywilliams@example.com	Mr	{science,strategy,great}
111	craig77@example.org	street	{us,yes,bank,treat}
112	charlesyoung@example.com	seem	{score,try,fire,thus}
113	darrenwells@example.net	how	{walk,finish,because,approach}
114	chaveznicholas@example.com	check	{anything}
115	wendyjackson@example.net	type	{still,energy}
116	frederick30@example.net	attorney	{simple}
117	rwalker@example.net	oil	{fear,call,church,left}
118	brussell@example.net	notice	{despite,dog,yet,sit}
119	xpugh@example.com	account	{writer,debate}
120	willie35@example.org	appear	{again,Mrs,enough,describe}
121	leejill@example.org	subject	{probably,push,hour,wait}
122	paulsmith@example.net	administration	{year,herself,indicate}
123	william81@example.net	free	{suddenly,tonight,drug,spend}
124	gonzalestina@example.net	force	{major,that}
125	qbarrett@example.com	friend	{buy,space,dinner}
126	mmercer@example.org	challenge	{happy}
127	jeanetteoneill@example.net	determine	{student,coach}
128	elizabethlong@example.org	discuss	{teach,nothing,before}
129	dsmith@example.com	boy	{poor,prove,ready,air}
130	murphydeanna@example.net	take	{relationship}
131	jsmith@example.net	truth	{spring,page}
132	raymondbecker@example.org	second	{discussion}
133	brownsean@example.com	bring	{herself,not,who}
134	scottmelissa@example.com	ready	{drive}
135	emcdonald@example.net	over	{myself}
136	kimberly35@example.org	hundred	{memory,information}
137	cassandra12@example.net	worker	{out,campaign,those}
138	leonardromero@example.org	see	{wall,network,project}
139	larsenandre@example.org	last	{view,reason,along,use}
140	gibsonemma@example.com	must	{they,professional}
141	igarner@example.com	reduce	{data}
142	freyes@example.org	plan	{learn,hospital}
143	potterthomas@example.com	about	{threat,pass,can}
144	ericaanderson@example.net	them	{late,green,break,most}
145	nbaker@example.com	adult	{catch,peace,fight,ahead}
146	hensleychristopher@example.net	marriage	{seat,special,fill,who}
147	lisaharper@example.com	mention	{cover,view,record}
148	stevencurry@example.net	scientist	{several,city}
149	iwoodard@example.org	pass	{defense,small,item}
150	tara52@example.net	rest	{support,any,improve,woman}
151	mullinseugene@example.org	interview	{worry,its,pass,believe}
152	smithmelanie@example.org	apply	{current}
153	simpsonandrew@example.com	apply	{admit,new,investment,agency}
154	hmclaughlin@example.com	themselves	{section,particular,money,exactly}
155	harrisbrandon@example.org	then	{although,difference}
156	cartergeorge@example.com	part	{player}
157	wisepaul@example.org	left	{keep,attorney}
158	coxnatalie@example.net	figure	{position,information,pass}
159	xfarrell@example.net	forget	{easy,vote}
160	williamsallen@example.net	draw	{phone,let,detail}
161	danielrowland@example.net	reality	{your,Mrs,music}
162	paul03@example.net	cause	{card,paper,race}
163	andersontaylor@example.org	miss	{help,few,their}
164	kingdavid@example.com	cover	{serve,sort}
165	vsullivan@example.net	college	{new}
166	acrosby@example.net	boy	{performance}
167	csloan@example.org	note	{seem}
168	nicholsonpatrick@example.org	customer	{hundred,game,enter,room}
169	bautistaethan@example.net	party	{actually,finish,value,yeah}
170	tammylane@example.org	however	{off,certainly,mother,class}
171	ajordan@example.net	those	{baby}
172	cheryllane@example.com	dream	{affect,prepare}
173	dmartin@example.com	just	{treat,write,whole}
174	cbrown@example.net	society	{serious}
175	dayelizabeth@example.net	collection	{author,brother}
176	jason01@example.net	walk	{cold,few}
177	gracemarquez@example.org	save	{choice,put}
178	kyle51@example.org	water	{mind,college,financial,though}
179	ian35@example.net	energy	{understand,partner,local,if}
180	christinesmith@example.net	against	{word,many,right}
181	danielmoore@example.net	most	{kitchen,difference}
182	sgay@example.com	arrive	{public,evening,shoulder}
183	marienichols@example.org	past	{shoulder}
184	rushkatelyn@example.com	rather	{lot,director,accept,degree}
185	taracook@example.com	production	{scene}
186	tiffanylambert@example.org	prevent	{trouble}
187	douglasgriffin@example.org	customer	{dog}
188	dayelizabeth@example.net	detail	{occur,about,start,do}
189	timothy21@example.net	security	{lawyer}
190	kevingolden@example.net	wonder	{whose,investment,require,ago}
191	erin33@example.net	about	{him,customer,deal,fish}
192	sabrina89@example.com	for	{career}
193	caitlin73@example.net	pass	{consumer,base,remember}
194	rhonda42@example.org	use	{himself}
195	xwatson@example.com	perhaps	{hair,family,practice}
196	stevenhawkins@example.org	himself	{type}
197	johnsonbrian@example.net	six	{charge,day}
198	martinallison@example.org	turn	{law}
199	deanna33@example.com	fight	{officer,force,size,himself}
200	kayla36@example.org	key	{marriage,picture,civil,young}
201	russellrandy@example.org	necessary	{Congress}
202	courtneyortega@example.org	military	{gun}
203	juarezmelanie@example.net	ground	{successful,public}
204	obrienstephen@example.com	hair	{hand}
205	kramirez@example.com	city	{indeed}
206	rdiaz@example.com	when	{compare,ball,fact}
207	daniellenelson@example.com	business	{condition,war}
208	steve92@example.org	candidate	{relate,player}
209	shawn83@example.net	walk	{certain}
210	sarahedwards@example.org	child	{paper}
211	josephsmith@example.com	finish	{size,tell,today}
212	sarahward@example.com	special	{natural,read}
213	christina28@example.net	watch	{very}
214	justinfarmer@example.com	action	{still}
215	danielbartlett@example.net	Congress	{visit}
216	cmurray@example.org	day	{rate,budget}
217	afields@example.com	natural	{outside,left,fund}
218	richardsondaniel@example.org	kitchen	{that,garden,group}
219	lrosario@example.net	wall	{cause,kind,only}
220	sandersjeffrey@example.org	admit	{charge}
221	duncancameron@example.net	once	{security,speak,night}
222	ochapman@example.org	opportunity	{return,design,this}
223	reneehall@example.org	door	{red,picture}
224	vparsons@example.com	heavy	{dinner,agreement}
225	jprice@example.net	usually	{military,commercial,language}
226	lcampbell@example.com	specific	{society}
227	ianderson@example.com	avoid	{food,least,sound,when}
228	stephensrodney@example.net	American	{go,kind,voice}
229	epena@example.org	include	{paper,agreement,cover}
230	akelley@example.org	stock	{wrong,all}
231	ugarcia@example.net	happy	{recognize,such,else,green}
232	vancechristina@example.net	bring	{attorney,then,soon}
233	jerrywilson@example.com	fly	{through,hold}
234	parkerjacob@example.org	course	{actually,response,hospital,data}
235	williamduarte@example.net	action	{our,oil}
236	chadherrera@example.org	we	{see,gun,land,manage}
237	john77@example.com	rather	{style,professional}
238	robert97@example.org	health	{system}
239	owalters@example.org	both	{gas,some}
240	wandacooper@example.com	contain	{expert,card,same}
241	moorechristina@example.net	media	{father,heart}
242	jason72@example.net	pressure	{Congress,performance}
243	hoffmanjuan@example.net	section	{with,truth}
244	snowkatherine@example.org	us	{decision,indeed}
245	hannaveronica@example.net	loss	{state,onto}
246	jordan90@example.net	appear	{language,deep,job}
247	kevin99@example.com	public	{myself,itself}
248	anne27@example.net	as	{sit}
249	matthew54@example.net	early	{effect,subject}
250	mcguiredaniel@example.com	American	{pay,size}
251	barrregina@example.org	paper	{free}
252	jackwalsh@example.net	one	{night,road,inside}
253	jeffreylittle@example.net	challenge	{tonight,executive}
254	kathrynstevens@example.org	mother	{near,response,dark,should}
255	bgreen@example.net	race	{wrong}
256	david79@example.com	quite	{wind}
257	dalewilson@example.net	professional	{worry,spend,recognize}
258	juliamiller@example.org	various	{both}
259	alyssa00@example.org	both	{ground,create,receive}
260	ann29@example.net	away	{finish,he}
261	anna14@example.com	none	{loss,decide}
262	angelasanchez@example.net	treat	{top,decade,back}
263	jessicastokes@example.org	hit	{current,future,work,science}
264	vbarnett@example.com	father	{Mr}
265	burgessann@example.net	interesting	{wall,cultural,amount}
266	robertbarnett@example.net	walk	{realize,something,your,time}
267	leon22@example.org	arm	{sort}
268	jjones@example.com	summer	{whose,firm}
269	carsonpatty@example.net	camera	{food}
270	greenenicholas@example.org	appear	{health,his}
271	jeffrey33@example.net	glass	{few,music,home}
272	monica92@example.com	stop	{single,professional,benefit,major}
273	qvillarreal@example.net	probably	{that}
274	ramirezmary@example.com	occur	{however}
275	oscarprince@example.com	rich	{market,model,everything,history}
276	tricia02@example.com	never	{executive}
277	crystalhowe@example.net	and	{spend,action,find,cost}
278	joshua04@example.com	remain	{room}
279	andreyoung@example.org	surface	{air,mother}
280	jessica02@example.net	future	{visit,key}
281	mark50@example.org	shoulder	{as}
282	gutierrezmarissa@example.com	focus	{of}
283	julie22@example.net	coach	{break,kind}
284	david46@example.org	night	{nor,thousand,attorney}
285	rachelmitchell@example.net	answer	{star}
286	michelleburnett@example.net	itself	{step,sure}
287	jonathanhenderson@example.net	watch	{actually,alone}
288	elijah70@example.net	material	{guy,police,run}
289	qpeters@example.com	around	{mother,increase}
290	lauren71@example.com	onto	{TV,bed}
291	mitchellwilson@example.net	performance	{move,win,they,figure}
292	jpalmer@example.org	discussion	{ok,detail,write}
293	christopheryoung@example.com	see	{be,stuff}
294	zberg@example.net	point	{bad}
295	amanda47@example.org	hold	{eat,artist,national}
296	collinswalter@example.com	anyone	{outside,southern,design,party}
297	youngsusan@example.net	arrive	{common,case,speech,child}
298	andreahoward@example.org	that	{computer,also,individual,name}
299	jerrysmith@example.com	run	{store,than,oil,serious}
300	dwerner@example.org	tend	{put,mind,behavior,four}
301	ann40@example.net	threat	{letter}
302	mullinsstephen@example.org	year	{sell,value,over,heart}
303	kathryn01@example.org	approach	{rock}
304	robertsdaniel@example.net	travel	{yes,level,trial,family}
305	cwest@example.org	step	{effort}
306	jacobtorres@example.org	anything	{marriage}
307	bdiaz@example.net	industry	{attention,commercial}
308	carol17@example.net	director	{without,information,while}
309	harrismichelle@example.net	former	{agent}
310	cmullins@example.net	radio	{so,rock,market,same}
311	mariechambers@example.com	partner	{north,wait,value,project}
312	adavis@example.net	worker	{address,now,not,build}
313	xjackson@example.com	leader	{situation}
314	paige83@example.net	side	{religious,memory,approach,another}
315	epeters@example.org	produce	{just,they,executive}
316	chad28@example.org	economy	{himself,police,expert,many}
317	ufernandez@example.com	often	{sign,something,sea}
318	ashleyjackson@example.org	meet	{lawyer,son}
319	hollybell@example.com	how	{two}
320	jonesmegan@example.org	skill	{cell}
321	vasquezandrea@example.org	around	{summer,upon,position}
322	ajacobs@example.org	development	{senior,myself}
323	john88@example.org	eat	{safe,local,decision}
324	jessica67@example.com	good	{next,wrong,a}
325	phillipsdavid@example.com	investment	{will,wonder,one}
326	rebeccalewis@example.org	foot	{already,since}
327	qsims@example.org	president	{safe,of}
328	matthewhernandez@example.org	degree	{main}
329	julie44@example.net	federal	{central}
330	chambersanita@example.org	create	{sport,production,yeah,beautiful}
331	macdonaldlisa@example.net	spend	{win,star}
332	moorekimberly@example.org	authority	{song,enough,you,need}
333	erik39@example.com	care	{give,behind}
334	mckinneyjoyce@example.net	speak	{thousand,great,collection}
335	lwade@example.net	shoulder	{goal,kind,community}
336	egriffin@example.net	field	{result,film}
337	elizabeth57@example.com	prove	{buy,bad}
338	jrobinson@example.org	ask	{green,investment,clearly,do}
339	kelly05@example.net	discuss	{might,consider,treat}
340	maydavid@example.net	million	{evidence,minute}
341	brooksjennifer@example.com	from	{rest,political,page}
342	bradley37@example.net	statement	{about,indeed,main,will}
343	annsingh@example.com	we	{change,theory}
344	sharonshort@example.net	seven	{drop,beat}
345	lisaevans@example.org	character	{summer,commercial}
346	emiller@example.org	clearly	{live,father}
347	lpotts@example.net	age	{they}
348	holderjames@example.net	charge	{tough}
349	williammitchell@example.com	car	{ahead,show,international,until}
350	josephparks@example.net	site	{think}
351	nbrown@example.com	seek	{always,conference,who}
352	romeroadam@example.org	police	{never,research,husband}
353	frank44@example.com	with	{myself,receive,artist,cup}
354	eugenehughes@example.net	little	{defense}
355	carolynmartinez@example.net	wife	{policy,nation,several,southern}
356	robert96@example.org	animal	{know,north}
357	juanespinoza@example.net	general	{that,offer}
358	robertthompson@example.org	modern	{ready,choose,product}
359	qacevedo@example.net	base	{try}
360	kflores@example.net	sea	{stop,little,Mr}
361	wallacebarbara@example.com	only	{set,believe}
362	jacksonwanda@example.org	home	{sell,guess,feel}
363	vtorres@example.org	everyone	{develop}
364	kgonzalez@example.com	enjoy	{fund,over}
365	pwood@example.org	personal	{discover,certain}
366	jholden@example.com	ability	{light}
367	kellyreeves@example.net	everyone	{cover,color,fund,entire}
368	rodriguezangela@example.org	build	{develop,kind,already}
369	brandon16@example.org	speak	{attention,keep,son,consumer}
370	foxantonio@example.net	partner	{thought,cup,compare}
371	lisapetersen@example.org	turn	{agent,step,outside}
372	taylormolly@example.net	that	{happy}
373	rowepamela@example.org	nor	{key,blue}
374	marymunoz@example.org	term	{hope}
375	michelle01@example.com	discussion	{director,benefit}
376	awoodard@example.org	someone	{trip,threat,they}
377	watsonmaria@example.org	section	{notice}
378	krista48@example.net	color	{main}
379	wilkersonanthony@example.org	throughout	{perform}
380	murphysusan@example.org	allow	{relationship,husband}
381	gonzalezmarc@example.net	tough	{measure,enough}
382	brooke97@example.org	short	{difficult,employee}
383	brittany70@example.org	meeting	{culture,dream,artist}
384	kyle83@example.net	be	{good,way,sound}
385	rossjohn@example.com	response	{forward,increase,stock,house}
386	bakerdouglas@example.net	each	{their}
387	zimmermanmichael@example.net	economic	{us,visit}
388	leblancjulia@example.com	laugh	{maintain,level,possible,strong}
389	scottjohnny@example.org	indeed	{news,change,difference}
390	markochoa@example.net	quality	{box,bad}
391	whitenathaniel@example.org	way	{interesting,data,financial,range}
392	robertscrystal@example.net	very	{huge}
393	sharonpatterson@example.net	visit	{do,consider,detail}
394	xgreene@example.org	reason	{situation,rich,agency}
395	cassandraturner@example.com	hit	{reveal,center,resource,wide}
396	whitejennifer@example.net	economic	{hair,campaign,face,civil}
397	robertjackson@example.net	base	{thing,include,attention}
398	lindsay60@example.com	meet	{guess,system,respond,first}
399	uflores@example.net	describe	{particular}
400	ujohnson@example.org	candidate	{under,against}
401	welchmelissa@example.com	information	{question,reach}
402	thomas33@example.org	fine	{window,response,move}
403	connie56@example.com	management	{site,she}
404	stacey54@example.org	skin	{on,environmental,account}
405	nwilson@example.net	garden	{edge,test,time,mind}
406	allensarah@example.org	resource	{about}
407	ericsullivan@example.com	interesting	{project,matter}
408	aroberts@example.com	office	{organization,base,no,growth}
409	jamescross@example.net	rest	{management}
410	josephsmith@example.com	sell	{ask,health,foreign}
411	amanda92@example.org	page	{general,interview,beat}
412	darren51@example.com	think	{each,effect,these}
413	davidsmith@example.com	thing	{never}
414	kevin56@example.com	red	{project,contain,state,energy}
415	joshua93@example.org	turn	{important}
416	robertrobinson@example.com	eight	{again}
417	prestongarcia@example.com	night	{economic,painting}
418	tgreen@example.org	score	{share,member,onto,professional}
419	barrerayvonne@example.net	thing	{ask,six}
420	samuel14@example.com	instead	{born,natural,notice,star}
421	ronalddaugherty@example.net	hair	{paper,born,factor}
422	lawrencehampton@example.com	theory	{husband,store,ok}
423	michael51@example.com	on	{eat,today,think,threat}
424	brent38@example.org	employee	{each,write,lead}
425	murphymichelle@example.net	identify	{may,watch,friend}
426	rclark@example.org	cover	{there,fact}
427	maria28@example.net	away	{fund,political,Congress,through}
428	davidsonheather@example.com	check	{new,effect,alone,thank}
429	jasonnavarro@example.org	between	{behavior,commercial,stuff,sea}
430	zbarry@example.org	money	{fact,company}
431	patricia88@example.net	change	{discussion,so}
432	clarkrobert@example.org	security	{generation,whether,suddenly,visit}
433	lopezmelissa@example.com	and	{shake,lose,Mrs,bank}
434	dbanks@example.org	trip	{behind}
435	jesse13@example.com	side	{away,history,me,newspaper}
436	josephgarcia@example.org	benefit	{early}
437	perrymiguel@example.net	order	{religious}
438	gzamora@example.org	free	{computer,firm}
439	oliviamartinez@example.org	allow	{modern,movie,drug}
440	shawn23@example.com	key	{environmental,form}
441	sarahbaker@example.com	red	{edge}
442	pdixon@example.com	least	{reflect}
443	qclark@example.com	however	{better,someone,case,pull}
444	vhernandez@example.net	least	{better,trip}
445	reyesjennifer@example.net	box	{garden}
446	josephgarcia@example.com	maybe	{case,field}
447	htownsend@example.org	although	{management,close,others}
448	aglenn@example.com	final	{entire}
449	jamietaylor@example.net	right	{green,unit,nature}
450	deborahrice@example.org	politics	{imagine,race}
451	djohnson@example.com	amount	{suggest,table}
452	chardy@example.com	group	{hear,condition,six,often}
453	qwaters@example.com	once	{institution}
454	bradleybuckley@example.org	house	{plant,rather}
455	megan41@example.com	position	{film,pretty,medical}
456	dominic73@example.com	pressure	{leg}
457	lanebrian@example.com	month	{building,left}
458	vgreen@example.com	response	{major}
459	blucas@example.net	own	{stage}
460	derek26@example.org	individual	{hour,cost}
461	franciscoscott@example.net	send	{apply,property}
462	mayers@example.net	economy	{enter,doctor,money}
463	carla87@example.net	street	{those,another}
464	courtneyhudson@example.org	drive	{work,hour}
465	peter84@example.org	whose	{media,economy,forget,sign}
466	victorfleming@example.com	even	{natural}
467	donnamitchell@example.com	career	{relate}
468	amanda19@example.net	firm	{discover,those,both}
469	smithruth@example.com	relationship	{box}
470	bradleycooley@example.com	hold	{analysis,reveal}
471	roypetersen@example.org	themselves	{which}
472	victoriataylor@example.com	side	{computer,factor,care,sister}
473	boothjames@example.net	big	{article,feel,especially,each}
474	garciakenneth@example.net	south	{management}
475	rrussell@example.net	reason	{place,indeed}
476	robertrobinson@example.org	election	{hot,opportunity,design}
477	wheelerlisa@example.com	activity	{position}
478	xgoodman@example.org	government	{spring,least,result,big}
479	tholland@example.net	wide	{onto,laugh,the}
480	gmiller@example.org	half	{such,contain}
481	jlewis@example.org	realize	{stand,look}
482	jason98@example.com	parent	{green,information,quality}
483	cody59@example.org	PM	{again}
484	alvarezjoseph@example.net	important	{off,live,break}
485	jacobsonjean@example.org	not	{total,manage,run}
486	barnesalexis@example.com	source	{team,ahead}
487	ashleyharris@example.org	would	{among}
488	jamie70@example.org	step	{organization}
489	wilsonmary@example.net	push	{large,suggest,treat}
490	robertwalker@example.net	its	{democratic,analysis}
491	charles46@example.org	treat	{with,his}
492	hmoss@example.org	student	{hard,almost}
493	rryan@example.org	face	{fire,south}
494	nicholas40@example.org	better	{reflect,while,apply,ever}
495	kdaugherty@example.com	former	{material,hot,prepare}
496	stacey88@example.net	occur	{agree,dark,modern,agreement}
497	jenniferbell@example.org	company	{various,could,later,sit}
498	mosleyadriana@example.org	arrive	{easy}
499	jmoore@example.net	trade	{him,also,set}
500	sgill@example.org	name	{old}
501	curryalec@example.org	friend	{sort,without,strong,budget}
502	suzanne62@example.com	save	{message,marriage,exist}
503	robert24@example.com	current	{attack,others,large,poor}
504	donna26@example.net	may	{may}
505	kaitlynmcintyre@example.org	determine	{director}
506	eric70@example.org	listen	{deep,according,shake}
507	blairjason@example.net	foot	{drive,quickly,security,then}
508	alexandriaparker@example.net	size	{against}
510	jeffreygarrison@example.com	cold	{wife,somebody}
511	sandersolivia@example.net	employee	{marriage}
512	melissa79@example.com	discussion	{list,notice,really,food}
513	imoore@example.org	seek	{identify}
514	nicholasprice@example.net	amount	{public,well}
515	michaelhenry@example.net	note	{establish}
516	wmartinez@example.org	understand	{democratic,live,throughout}
517	veronica10@example.org	truth	{best,lot,realize}
518	amandamarshall@example.net	customer	{spring}
519	mark29@example.net	avoid	{include}
520	parrishdale@example.net	hotel	{build,marriage,well}
521	mmatthews@example.com	method	{certain,for,environment}
522	dyersteven@example.org	growth	{social,major}
523	mirandajohnson@example.net	face	{statement,court}
524	erica69@example.net	hit	{hear,take}
525	kproctor@example.net	green	{various,pick,Mrs,instead}
526	oadams@example.net	window	{watch}
527	njohnson@example.org	stock	{past,apply,question,suffer}
528	lewisjose@example.org	well	{continue,forget,movie,involve}
529	wendyglass@example.org	article	{small}
530	wgoodman@example.net	wide	{minute}
531	jimenezamanda@example.org	herself	{everybody,fall,short}
532	angela76@example.net	those	{change,defense,entire,here}
533	pcantu@example.com	city	{local,prepare,drug}
534	james97@example.org	camera	{morning,return,manager,somebody}
535	mariagonzalez@example.org	rather	{you}
536	patriciasutton@example.com	city	{to,offer,soon,of}
537	jenniferjackson@example.com	pay	{live,brother,age}
538	timothy09@example.org	purpose	{improve,team,later,third}
539	courtneydelacruz@example.net	manager	{now}
540	fosterchristian@example.org	deep	{indicate,hope}
541	robert99@example.com	pressure	{oil,let,grow}
542	aprilanderson@example.net	nation	{pressure,west,those}
543	smithpatricia@example.net	wife	{edge,tax}
544	philip56@example.com	order	{opportunity}
545	matthew71@example.net	area	{sing,technology}
546	megan60@example.org	add	{develop,yourself,break}
547	xcastaneda@example.net	growth	{make,low,too,toward}
548	thaynes@example.net	article	{threat,bar,coach}
549	phamilton@example.net	thousand	{science,natural,see}
550	johnstonnicholas@example.org	even	{each,garden,Mr}
551	allisonwilliams@example.net	possible	{because,choose,way,which}
552	hkelly@example.org	style	{serious,fly}
553	cassandra50@example.net	sell	{everything,best}
554	jameshernandez@example.org	world	{picture,myself,if,note}
555	dannymiles@example.org	general	{much,car}
556	matthewtran@example.org	some	{morning}
557	vramirez@example.net	cover	{citizen}
558	kenneth68@example.org	customer	{these,chance}
559	bobbyesparza@example.com	friend	{model}
560	snyderjeffery@example.net	say	{face}
561	nhughes@example.org	meeting	{beat}
562	nicholas58@example.com	study	{window,back,arrive,key}
563	rsantos@example.com	likely	{evening}
564	flee@example.com	ground	{available,south}
565	ktucker@example.net	young	{ball,nation,spend}
566	joshua15@example.net	find	{degree,people}
567	hortonbrian@example.org	tonight	{big,become}
568	rubiojay@example.net	different	{series,continue,such,on}
569	lisanorman@example.com	need	{medical}
570	daniel44@example.org	turn	{middle,realize,rest,never}
571	pcarlson@example.net	firm	{fall}
572	umolina@example.com	entire	{role}
573	billy37@example.net	news	{season,Republican,at,science}
574	amanda27@example.com	door	{onto,friend,per}
575	ashleewhite@example.org	practice	{American,notice,heart,music}
576	smichael@example.org	company	{daughter,real}
577	ktrujillo@example.net	join	{school,just,quite}
578	donnacoleman@example.net	live	{player,artist}
579	aclark@example.com	oil	{house,writer}
580	aaron52@example.com	continue	{himself,race,class,floor}
581	olivia22@example.net	apply	{force,never,point}
582	lawrencechapman@example.org	tree	{but,decide}
583	joel15@example.com	man	{end}
584	justin05@example.org	check	{strong,chance,hit}
585	hcooper@example.com	country	{evidence,computer,song,total}
586	andersontyler@example.com	leg	{she,dinner}
587	jacobhamilton@example.net	reach	{girl,kind,everything,within}
588	allenmcdonald@example.com	event	{which,detail}
589	catherine16@example.net	allow	{whose,mean,soon}
590	trodriguez@example.net	while	{debate}
591	peggymills@example.org	reduce	{leg,claim}
592	erik96@example.org	recently	{mother,interesting}
593	ithomas@example.com	not	{wrong,fish,accept,peace}
594	harriscrystal@example.org	next	{audience,computer}
595	jamesgreene@example.com	institution	{professor}
596	dodsonaudrey@example.org	serve	{husband,direction,this,their}
597	aaron93@example.com	page	{five,local,ten}
598	bennettmark@example.org	machine	{subject,find,amount,anyone}
599	larryboyer@example.com	notice	{after,everyone,our,spring}
600	shelly07@example.net	mother	{tough,country}
601	hicksmartin@example.org	sister	{piece,cut}
602	richard48@example.net	too	{wife}
603	fjones@example.com	low	{very}
604	coleanna@example.com	industry	{improve,song}
605	kimberly09@example.com	he	{everybody,cold,help,lead}
606	pamelacummings@example.org	too	{gun,person}
607	kevin84@example.org	bring	{section,east,majority,finish}
608	christygonzales@example.com	whose	{reveal,almost,light}
609	dominiqueblackwell@example.net	cause	{on,large,citizen,record}
610	zacosta@example.org	see	{site}
611	anthony87@example.org	sea	{decision}
612	buckchristine@example.com	hold	{box}
613	underwoodamy@example.com	left	{grow,address,source}
614	ryandonna@example.org	size	{fall,son}
615	wheelerelizabeth@example.com	window	{particular,trouble}
616	anthony26@example.net	push	{under,answer,interview,leader}
617	meganwilson@example.org	rather	{until,hour,run}
618	jacobday@example.org	participant	{no,remember,home,answer}
619	markgallagher@example.net	bank	{among,best,better}
620	kimberly99@example.com	option	{create,as}
621	daniel08@example.net	this	{they,approach,source,minute}
622	millerjoseph@example.org	ability	{cup,eight,for,yard}
623	erinjohnson@example.net	left	{partner}
624	aaron39@example.net	ago	{term}
625	zachary16@example.com	dream	{fine,such}
626	aaronadams@example.net	toward	{no,pick,recent}
627	lisa23@example.org	bank	{example,share,remain,professional}
628	dcook@example.com	myself	{nature,field,production}
629	harrellbradley@example.org	wait	{professional,real,one,over}
630	lewismary@example.com	measure	{matter,evidence,avoid}
631	nicoleclark@example.net	concern	{same,fact,remember,address}
632	joel34@example.org	popular	{may,away,military,stop}
633	thomas19@example.com	deep	{hot,significant}
634	christiansmith@example.org	thank	{central,degree}
635	halljames@example.com	near	{industry,information,read,southern}
636	rebecca23@example.org	ever	{young,responsibility,school}
637	nicholas04@example.org	lay	{person,throughout,yeah}
638	vcaldwell@example.org	road	{full,mouth,instead}
639	hallmary@example.net	material	{charge,short,perform,wide}
640	orodriguez@example.org	responsibility	{church}
641	antoniosmith@example.net	tax	{board,whose,article}
642	mariagamble@example.com	like	{event}
643	thansen@example.com	building	{organization,natural,need}
644	sara48@example.org	major	{rock}
645	webbanthony@example.com	sign	{social,reason}
646	matthewthompson@example.com	lay	{within,many,everything}
647	jameslutz@example.org	see	{something,stand}
648	andreamiller@example.net	about	{save,peace,glass}
649	contrerasbrandon@example.com	offer	{smile,theory,environment,camera}
650	shafferbrittany@example.com	there	{everyone,marriage}
651	christina33@example.com	leave	{rich,necessary,leg,activity}
652	hfernandez@example.net	particular	{institution,create,then}
653	scardenas@example.com	teacher	{play,bring,teacher}
654	hickskeith@example.net	set	{detail}
655	omendoza@example.org	want	{perform,in}
656	huangvirginia@example.net	task	{plan,part}
657	keithvillanueva@example.net	show	{edge,particularly,ability}
658	jamesjensen@example.com	we	{try,too,bit,will}
659	torresdavid@example.net	specific	{cause,easy,little,special}
660	dberry@example.net	when	{eye,carry}
661	lnichols@example.org	move	{probably}
662	cameronhensley@example.org	maybe	{every,walk,security}
663	hjones@example.net	remember	{describe}
664	martincharles@example.com	series	{poor,of,single,image}
665	martinezrodney@example.net	state	{matter,so}
666	phillipstimothy@example.org	stuff	{ten,you,well,worker}
667	xgamble@example.org	decade	{sea,ready,help}
668	christopherhoward@example.com	PM	{fish,national,task,yourself}
669	martinezraymond@example.org	table	{chance,front,matter}
670	imiller@example.net	interest	{available}
671	weberjeremy@example.net	political	{meet,trouble}
672	michelle50@example.org	budget	{ability,property,defense,difference}
673	tracyking@example.net	from	{whose}
674	tyronequinn@example.org	final	{participant}
675	matthew16@example.org	put	{public}
676	amber32@example.org	lose	{possible,second}
677	belljulia@example.org	physical	{child,range}
678	vgonzalez@example.com	admit	{law}
679	efigueroa@example.org	every	{claim,factor,cut,add}
680	justinsims@example.net	tough	{politics,oil,protect}
681	brandonbell@example.com	life	{more,product}
682	laurawilkins@example.org	cut	{late,section}
683	angelica14@example.org	ago	{attorney}
684	larry31@example.net	stay	{operation}
685	pduncan@example.org	make	{arm,security,soldier}
686	eric57@example.org	energy	{family,big,address}
687	lauren81@example.com	report	{or}
688	angeljohnson@example.net	whatever	{audience,condition}
689	brianna65@example.org	smile	{develop,ten,against}
690	blairscott@example.org	eight	{away,sea,loss,morning}
691	teresacosta@example.com	parent	{fish,guy,simply,consider}
692	dana52@example.net	machine	{compare,than,speech}
693	omarprice@example.net	agreement	{likely}
694	obowman@example.net	indicate	{drop,force,bad}
695	gillespiejanet@example.net	business	{wide}
696	melissaalexander@example.org	little	{writer,theory,game,story}
697	michellegraves@example.com	authority	{much,service}
698	ugallegos@example.org	direction	{position,modern}
699	ccarroll@example.com	go	{talk,month}
700	kimberlywilliams@example.org	visit	{say,message,whatever}
701	millermary@example.net	table	{size,year,soldier,citizen}
702	lmichael@example.org	ago	{soon,ago,much}
703	paul11@example.net	cost	{event,east,want}
704	ritalynch@example.net	not	{believe}
705	james90@example.org	family	{next,energy,wrong}
706	michelle20@example.org	side	{similar,whom}
707	emcguire@example.net	child	{price,marriage}
708	mcclurechristopher@example.org	guy	{shake,which}
709	courtneywilcox@example.com	pretty	{next,summer,responsibility,fish}
710	tonya17@example.com	magazine	{style,business,suffer}
711	chuber@example.net	American	{buy,continue,collection,eye}
712	christopher77@example.com	forget	{forget,option,man,collection}
713	justinbradley@example.com	force	{garden,far}
714	michaelmoore@example.org	idea	{property,one}
715	omorris@example.com	she	{out,effect,this,music}
716	longmichael@example.org	huge	{into,minute}
717	kmeyers@example.com	leg	{book,kitchen,section}
718	colevanessa@example.net	policy	{realize,several}
719	reyesangela@example.net	idea	{energy,piece}
720	diana94@example.com	after	{rich,practice}
721	lisa39@example.com	standard	{fight,training,throughout}
722	davidyang@example.org	else	{allow}
723	hriley@example.com	I	{wear}
724	michaelpowell@example.com	possible	{close,senior}
725	marcuspitts@example.org	sort	{art}
726	catherinedaniel@example.com	scientist	{entire,wide,less}
727	sara08@example.com	good	{interest}
728	samantha35@example.com	official	{make,beyond}
729	fhayden@example.org	item	{participant,prepare,benefit,while}
730	crystalkelly@example.net	ten	{beat,miss,with,guy}
731	shawndavis@example.org	difficult	{discover}
732	teresavelez@example.com	note	{threat}
733	andrewstevens@example.org	one	{appear}
734	ifoster@example.com	account	{notice,energy}
735	wjones@example.com	know	{pass,little,against,citizen}
736	michellewilson@example.com	why	{air,involve,group,lose}
737	hansonjanet@example.net	success	{loss,agent,participant}
738	alecmartin@example.com	Democrat	{relate,part}
739	thompsonevelyn@example.org	sport	{improve,pattern}
740	joseph64@example.com	heavy	{standard,everything,reveal,entire}
741	collinsmark@example.net	wish	{read,inside}
742	nweaver@example.net	must	{improve,her}
743	umoon@example.org	reflect	{continue,under,eat}
744	joshuabuckley@example.org	today	{his,either,write,even}
745	christianwilliams@example.net	how	{force,site,another,actually}
746	kevinnelson@example.org	be	{she,cut,risk}
747	annette98@example.net	great	{on,small}
748	alexagibbs@example.com	exist	{exactly,her}
749	colleenhunter@example.org	from	{executive}
750	reverett@example.com	movement	{tax,source}
751	edavis@example.com	entire	{individual,watch}
752	williamswilliam@example.org	through	{TV}
753	michaelalexander@example.org	power	{I,discuss,far}
754	pwilliams@example.org	behavior	{prepare,subject}
755	molinakristy@example.com	several	{likely}
756	nallen@example.com	authority	{one,candidate,through}
757	canderson@example.net	network	{scene,audience,attack,business}
758	jeffreythompson@example.net	help	{situation,job}
759	henry89@example.net	put	{whose,that}
760	mestes@example.com	usually	{cup,rest,relate}
761	lisa93@example.org	above	{will,many}
762	ryanramos@example.net	but	{why,deal}
763	cassandra91@example.com	in	{far,American}
764	barbaraibarra@example.com	often	{happy,whatever,particular,parent}
765	erica48@example.net	state	{spring,however}
766	pzhang@example.net	behavior	{bad,cultural}
767	williamsdonna@example.com	television	{offer,would}
768	gordonheather@example.com	social	{control}
769	websterlauren@example.com	collection	{right,know,thought}
770	tiffany34@example.com	image	{audience,memory}
771	matthew41@example.com	none	{home,would,election,professional}
772	annbrown@example.org	mother	{tell,despite,look,heart}
773	bartonjeffrey@example.net	throw	{poor,either,know}
774	morgantina@example.org	film	{play,company}
775	autumnstewart@example.com	worry	{some}
776	aspears@example.net	middle	{month}
777	jacksonjulie@example.org	sister	{international}
778	panderson@example.net	light	{travel}
779	awhite@example.com	face	{particular,do,always}
780	fullerderek@example.org	tonight	{good,answer,specific,drive}
781	hstephens@example.net	money	{middle}
782	ujohnson@example.net	blue	{adult}
783	heather21@example.net	college	{able,sort,open}
784	hamiltonheidi@example.com	specific	{skill,both,once}
785	zachary83@example.org	into	{wear,often,quality}
786	uhernandez@example.org	determine	{be,change}
787	vegarebecca@example.com	would	{center,check}
788	paulmckee@example.org	high	{book,forget,best}
789	wrightnicholas@example.net	magazine	{around,these}
790	bfinley@example.net	character	{approach,thank}
791	tanya70@example.com	two	{half,see,if}
792	zwiley@example.net	cause	{customer,perhaps,rather}
793	autumnsnyder@example.org	all	{any,loss,board}
794	reyesjackie@example.org	receive	{vote,level,maintain}
795	olsonnicole@example.com	color	{discover}
796	guzmanjohn@example.org	expert	{instead}
797	jonesfernando@example.net	about	{not,into}
798	wharris@example.com	right	{conference,benefit}
799	ostafford@example.com	term	{summer,side,so,speech}
800	handerson@example.net	serious	{color,wife,lot,yard}
801	tmartin@example.com	plan	{then,local}
802	lpeterson@example.org	old	{since}
803	williamsalexandra@example.org	partner	{pick,customer,blue,risk}
804	amanda21@example.com	day	{expert,nice,during,write}
805	hle@example.org	create	{feeling,realize,firm,technology}
806	mauricehill@example.com	budget	{develop,which,huge}
807	njohnson@example.net	enough	{buy,successful,everybody}
808	daltonsmall@example.org	age	{truth,institution,newspaper,lose}
809	manderson@example.org	daughter	{money}
810	brandon01@example.net	truth	{already,article,girl}
811	benjaminwalker@example.org	research	{world}
812	anthony60@example.com	reach	{around}
813	ariel07@example.com	country	{research,pass,myself,see}
814	smithmitchell@example.org	camera	{skill,officer,old,television}
815	gjackson@example.net	action	{important,national,travel}
816	mjohnson@example.org	they	{bad,those,series,develop}
817	rebeccabrown@example.com	majority	{manager,wear}
818	luceroleslie@example.org	program	{natural,business,wear}
819	rsherman@example.net	type	{grow,part}
820	anthony80@example.net	media	{here}
821	markgarcia@example.com	see	{effort,social,often}
822	qbrown@example.net	group	{family}
823	odouglas@example.com	wall	{off,more,crime,season}
824	sherry54@example.org	nor	{fact}
825	edwardsstacey@example.org	other	{no,hundred,away,consumer}
826	danielmathews@example.com	life	{whole}
827	crodriguez@example.net	range	{travel,Republican,floor,amount}
828	rubenfrazier@example.com	at	{free,TV}
829	gabrielle43@example.net	article	{just,affect,act,a}
830	matthew31@example.org	far	{necessary,interview,fund}
831	laurarodriguez@example.com	major	{month}
832	davidmaxwell@example.org	possible	{recently,voice}
833	anthony43@example.org	help	{strong,almost}
834	sarahlee@example.com	approach	{some,ready}
835	christy23@example.net	since	{feeling,center,simply}
836	hensleyelizabeth@example.net	best	{class,brother}
837	davisamanda@example.org	there	{art,put,including}
838	hollywu@example.net	grow	{ago,again,win}
839	ibrown@example.org	direction	{entire}
840	teresaoneill@example.com	occur	{face,win,car,institution}
841	charlottehernandez@example.org	reality	{week,artist,according}
842	daniellewright@example.com	manager	{today}
843	amy67@example.org	never	{boy,entire,study,different}
844	ukent@example.com	at	{single}
845	gbowers@example.net	everybody	{newspaper,the,fact,deep}
846	rebeccachristian@example.com	sport	{just}
847	matthewbyrd@example.org	rather	{capital}
848	nwhite@example.org	science	{girl,drive}
849	rperkins@example.org	run	{concern,worker}
850	andrew58@example.net	want	{relationship}
851	brendacummings@example.net	wear	{exist,must,follow,environment}
852	sanchezjames@example.com	parent	{leave,condition,or,exactly}
853	zdunn@example.org	section	{full,benefit}
854	garywoodward@example.org	although	{sister}
855	kristina74@example.com	star	{bill,again}
856	johnsonkristin@example.org	recent	{drive,building}
857	deborah77@example.com	research	{identify,well,set,imagine}
858	johndorsey@example.net	various	{learn,figure,report}
859	sandra57@example.net	today	{computer,arrive,including}
860	jeffrey35@example.net	color	{challenge}
861	derek53@example.org	receive	{something,trouble}
862	mikewhite@example.net	outside	{choice,energy}
863	wongnicholas@example.org	skill	{scene}
864	karismith@example.org	current	{edge,ask}
865	chris17@example.com	a	{large,artist,today}
866	pwood@example.net	imagine	{stock,return,nature}
867	bdouglas@example.org	beyond	{sound,will,wait}
868	jfriedman@example.net	either	{who,chair,campaign,cut}
869	robertsjacqueline@example.com	month	{skill,throw,science}
870	wrightjessica@example.com	activity	{lot,religious,world,out}
871	michaelkeith@example.net	need	{professional,base,particularly}
872	jadams@example.net	call	{new,claim}
873	ryan87@example.org	challenge	{technology}
874	murrayjacqueline@example.net	former	{laugh,study,wait,seven}
875	nwells@example.com	guess	{brother,investment}
876	susan09@example.net	join	{inside,sort,conference}
877	julia57@example.net	party	{particularly}
878	rangelkaren@example.org	whether	{bit,that,chair}
879	psmith@example.org	page	{work,would}
880	jessicaestes@example.org	out	{hundred,blue,phone}
881	rodriguezbrian@example.org	others	{specific,few,common}
882	john73@example.net	city	{to,purpose,tax}
883	troy42@example.com	new	{bad,ahead}
884	martinezcalvin@example.org	kitchen	{also,body,describe}
885	stonejeffrey@example.com	box	{police,may,of}
886	tmitchell@example.com	thousand	{cut,themselves,class}
887	bennettsusan@example.com	anything	{chance,politics,beyond,every}
888	stephaniefinley@example.org	music	{in}
889	jasontanner@example.com	whose	{small,give,western,between}
890	jasonsmith@example.net	check	{really,reduce}
891	toddrodriguez@example.org	course	{themselves,the,start,car}
892	richardlorraine@example.org	it	{management,store}
893	jay05@example.org	across	{understand,provide}
894	rharrison@example.org	rest	{meeting,especially,third}
895	gsmith@example.net	maybe	{tree,drive,to,indeed}
896	thomas59@example.com	box	{edge,agency,resource,low}
897	powellsteven@example.org	expert	{thank}
898	sullivanapril@example.org	themselves	{even}
899	shamilton@example.org	let	{without,allow,teach}
900	hillerica@example.org	certainly	{vote,institution}
901	howardjoshua@example.net	page	{our,avoid,involve,decide}
902	courtney88@example.com	base	{difficult}
903	reynoldskristen@example.com	watch	{grow,note,return}
904	benjaminvasquez@example.org	possible	{south,reveal}
905	joshuashaw@example.net	outside	{table,all,state}
906	christina46@example.net	per	{report,certain,hear}
907	jeffersonsara@example.org	role	{else,information,high,present}
908	jennifer04@example.net	figure	{seem,personal,night,pretty}
909	tmiller@example.net	after	{tree,seven}
910	hannahmendoza@example.com	fear	{continue,figure,window}
911	ibaird@example.com	perform	{campaign,actually}
912	gbullock@example.net	exactly	{realize,such}
913	josesims@example.net	trouble	{civil,character,wrong,become}
914	jeffrey28@example.com	bed	{hospital,worry,sing}
915	gailjackson@example.com	nice	{politics}
916	jmiller@example.org	general	{often,study,drug}
917	fergusonpaul@example.net	reveal	{listen,their,bar,address}
918	wolfchristopher@example.org	sing	{individual,water,two}
919	troy80@example.com	anyone	{east}
920	nelsondavid@example.com	four	{ball,far}
921	andrew69@example.org	never	{writer,nature,probably,behind}
922	julie86@example.org	no	{thing,after,budget,follow}
923	hschmitt@example.net	fish	{such}
924	charles41@example.net	somebody	{character}
925	utran@example.com	girl	{statement,central,chance,low}
926	richardsonjonathan@example.net	decision	{near,natural,day,seven}
927	jbutler@example.org	out	{along}
928	michelle65@example.net	hear	{guess,performance}
929	owebb@example.com	after	{choose,huge,song,thank}
930	ashley86@example.com	authority	{benefit,animal,arrive}
931	olozano@example.org	check	{TV,manage,main,situation}
932	jennifer72@example.com	TV	{instead,former,stand,model}
933	grantdaniel@example.net	strong	{surface,western,note,Republican}
934	browngary@example.com	car	{road,fill,drop,leg}
935	julie05@example.com	reason	{response}
936	tinamurray@example.net	information	{discover,heavy,ten,strategy}
937	bwatkins@example.org	run	{six,far}
938	shirleyhuynh@example.com	believe	{claim,into}
939	carlsolis@example.org	because	{real,likely}
940	sarah76@example.net	source	{assume}
941	andrew69@example.net	television	{list,say,story,protect}
942	tracey35@example.com	total	{movie,local,career}
943	sarah81@example.com	hospital	{happy,home}
944	mckayamanda@example.org	agreement	{southern,month}
945	bday@example.net	authority	{PM,improve,magazine,on}
946	qford@example.com	challenge	{budget,office,lot}
947	cortezjordan@example.com	world	{hotel,father,none}
948	westjasmine@example.org	front	{seven,discover}
949	elizabeth34@example.net	end	{middle,house}
950	kerrmariah@example.org	notice	{tonight,manager}
951	jmiller@example.net	skin	{song,discuss,heart}
952	jenniferrogers@example.net	everyone	{hand,draw}
953	greerjessica@example.org	throughout	{experience}
954	hillvalerie@example.net	guess	{current}
955	murrayjonathan@example.net	third	{political,short}
956	daniel10@example.net	part	{ball,Mr,yes,spring}
957	sluna@example.com	best	{table,fast,stock,board}
958	ycarpenter@example.net	beyond	{keep}
959	zwalker@example.net	draw	{manager,hundred,send}
960	chungheather@example.net	base	{last,produce}
961	michelle24@example.org	almost	{hundred}
962	stephanie36@example.net	foot	{turn,inside,almost,your}
963	john09@example.net	sit	{goal}
964	toddjackson@example.org	discover	{store,despite,rule}
965	ymorrison@example.com	space	{soon,resource}
966	cchoi@example.net	smile	{enough,bed,federal,business}
967	tsanders@example.com	among	{house,blood}
968	samuelduke@example.net	account	{turn,lawyer,discover}
969	adrianrobbins@example.com	road	{move,real}
970	johnathancooper@example.com	which	{two,speak,much}
971	wbrown@example.com	society	{argue,newspaper}
972	edgarmeyers@example.org	second	{deal,family,provide,that}
973	justin21@example.com	thank	{challenge}
974	caldwelldaryl@example.net	word	{all}
975	jaclynday@example.org	country	{through}
976	russellangelica@example.net	leave	{thought,without,middle}
977	james62@example.net	method	{career,college,represent}
978	rcobb@example.org	bring	{bag}
979	coreyflores@example.net	popular	{into,per,American}
980	xrobinson@example.org	continue	{ten,join}
981	katrinapalmer@example.net	sound	{radio,wide,option,player}
982	cclark@example.net	window	{hand,treat}
983	umann@example.org	follow	{others}
984	mbarnes@example.org	brother	{recognize,deal,campaign,month}
985	curtiscameron@example.net	community	{senior}
986	brandonguerrero@example.com	first	{present,meeting,resource}
987	danielbaker@example.com	at	{like,development,according,course}
988	dbraun@example.org	research	{clear,operation,professional,him}
989	sarah97@example.org	production	{entire,summer,institution,show}
990	bautistacrystal@example.org	approach	{least,book}
991	zjohnson@example.org	miss	{own,act,anything,practice}
992	ortegaemma@example.net	final	{son,maybe,himself}
993	jason40@example.net	decide	{sometimes,improve,large,also}
994	hernandezdiana@example.org	coach	{indeed}
995	finleyrebecca@example.com	news	{economy,spring,surface,support}
996	gutierrezcody@example.com	compare	{produce,article,car,itself}
997	jessica98@example.net	training	{deal}
998	fhall@example.com	official	{to}
999	campbellalexander@example.org	choice	{network,know,pull}
1000	rwalter@example.com	son	{some,quality,big}
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (customer_id, loyalty_tier, contact_no) FROM stdin;
101	reach	{yourself,morning}
102	nothing	{add,week}
103	audience	{safe}
104	economy	{few,whether}
105	beyond	{western}
106	improve	{heavy}
107	side	{turn}
108	hit	{sit}
109	fill	{organization,can}
110	conference	{ahead}
111	voice	{stuff,already}
112	weight	{plant}
113	threat	{produce}
114	make	{teach}
115	inside	{community}
116	nature	{member}
117	fly	{debate,off}
118	onto	{next,parent}
119	more	{report}
120	believe	{staff}
121	generation	{east,food}
122	color	{community}
123	within	{apply}
124	exist	{many,a}
125	size	{pressure,other}
126	top	{develop}
127	respond	{enjoy,out}
128	physical	{politics,number}
129	society	{culture,order}
130	on	{town}
131	sign	{often,American}
132	president	{today,sea}
133	catch	{thing}
134	never	{soon,last}
135	theory	{though,trip}
136	commercial	{defense,walk}
137	region	{hair}
138	first	{watch}
139	such	{live,old}
140	across	{itself}
141	station	{owner}
142	leg	{future}
143	always	{executive}
144	war	{really,growth}
145	others	{fire,month}
146	no	{pattern,owner}
147	dream	{maintain,popular}
148	police	{evidence}
149	surface	{should}
150	bed	{deep,whole}
151	rich	{air}
152	heavy	{open}
153	control	{all}
154	long	{anyone}
155	adult	{police}
156	issue	{table,collection}
157	together	{sign,scientist}
158	pass	{prove,their}
159	market	{item,manage}
160	certain	{trial}
161	beautiful	{consumer}
162	thing	{voice,need}
163	success	{to}
164	name	{reason,drug}
165	throw	{miss,music}
166	walk	{member}
167	need	{state}
168	admit	{significant}
169	movement	{administration,financial}
170	join	{forward}
171	cold	{maybe,look}
172	by	{produce}
173	party	{memory,hold}
174	middle	{federal}
175	film	{piece}
176	situation	{debate}
177	think	{including}
178	also	{first}
179	beautiful	{not,perhaps}
180	risk	{try,their}
181	catch	{language,popular}
182	some	{plant,site}
183	skill	{professional,animal}
184	direction	{teach}
185	add	{world}
186	sport	{off,expect}
187	several	{development}
188	police	{music,hold}
189	democratic	{husband,old}
190	way	{approach}
191	five	{high}
192	line	{education}
193	no	{seem,peace}
194	cover	{play,executive}
195	after	{military,marriage}
196	page	{thought,data}
197	be	{suddenly}
198	to	{him}
199	front	{consider}
200	word	{plant}
201	statement	{when}
202	what	{man}
203	artist	{step}
204	purpose	{focus}
205	key	{consider,despite}
206	important	{direction}
207	find	{good}
208	single	{race,later}
209	ready	{attorney}
210	great	{fund,career}
211	series	{record}
212	market	{simple}
213	catch	{large,project}
214	four	{easy}
215	hospital	{business,nor}
216	another	{author}
217	get	{attorney,prepare}
218	yet	{air,north}
219	section	{far,me}
220	consider	{grow}
221	seek	{black,both}
222	despite	{past,receive}
223	hundred	{pattern,us}
224	none	{site,air}
225	commercial	{raise,anyone}
226	away	{bank}
227	analysis	{walk}
228	life	{human,while}
229	section	{billion,purpose}
230	do	{goal,production}
231	oil	{its,fast}
232	blue	{that}
233	heavy	{receive,vote}
234	but	{reflect,yeah}
235	important	{son}
236	night	{rock,eat}
237	anyone	{international,traditional}
238	view	{town}
239	PM	{address,interesting}
240	cup	{down}
241	later	{central,top}
242	ball	{attorney}
243	about	{in,mean}
244	identify	{ever,we}
245	actually	{local}
246	trouble	{speech}
247	even	{international}
248	town	{race,question}
249	charge	{beautiful,truth}
250	wrong	{drive,seat}
251	research	{become,cold}
252	side	{apply}
253	quality	{fast,move}
254	learn	{probably,human}
255	art	{matter}
256	clear	{company}
257	offer	{image}
258	describe	{perhaps}
259	new	{country}
260	wall	{hit}
261	employee	{talk}
262	majority	{goal}
263	perform	{church}
264	citizen	{step}
265	live	{individual,world}
266	decide	{water}
267	rate	{mean,determine}
268	herself	{according}
269	recently	{black,page}
270	authority	{anything,fact}
271	job	{now}
272	child	{race}
273	near	{hot,with}
274	summer	{machine}
275	over	{well}
276	student	{author}
277	finally	{action,democratic}
278	really	{song}
279	dog	{choose,back}
280	bring	{lot,item}
281	hard	{very,nature}
282	record	{upon,maintain}
283	during	{herself}
284	young	{before}
285	science	{floor,me}
286	country	{last,Congress}
287	plan	{military,knowledge}
288	exactly	{require,magazine}
289	ground	{particular,water}
290	person	{fly}
291	find	{father}
292	one	{share}
293	maintain	{majority}
294	suddenly	{today,fire}
295	you	{five}
296	than	{control}
297	light	{piece,result}
298	career	{heart,new}
299	think	{evening,owner}
300	forget	{everyone,customer}
301	ago	{car}
302	you	{several,enter}
303	officer	{court}
304	take	{thousand,cell}
305	sister	{my}
306	second	{until,sing}
307	Mr	{matter,across}
308	value	{money,range}
309	indeed	{particular}
310	heart	{open,put}
311	politics	{billion,will}
312	receive	{owner}
313	at	{firm}
314	base	{whether}
315	could	{teacher}
316	subject	{day}
317	read	{consumer}
318	yard	{series,western}
319	finally	{unit,cause}
320	between	{network}
321	pattern	{smile,relate}
322	indicate	{market,factor}
323	wonder	{cost,Republican}
324	stand	{least,compare}
325	despite	{ever}
326	shake	{thought}
327	catch	{area,local}
328	skin	{agreement}
329	fast	{strategy}
330	employee	{home}
331	high	{imagine}
332	piece	{top,cause}
333	artist	{attorney}
334	military	{help}
335	often	{find}
336	physical	{sometimes,inside}
337	picture	{industry}
338	eight	{east}
339	clear	{hit}
340	significant	{continue,accept}
341	truth	{what,yourself}
342	bar	{hair}
343	ready	{example}
344	player	{determine,five}
345	goal	{crime,full}
346	shake	{center}
347	century	{talk}
348	human	{she}
349	cold	{audience,deal}
350	worry	{religious,cultural}
351	maybe	{and,hope}
352	cover	{begin,guy}
353	green	{somebody}
354	staff	{shake,letter}
355	task	{maybe,find}
356	candidate	{whole}
357	perform	{wall}
358	southern	{couple}
359	heart	{worker,husband}
360	study	{prevent}
361	set	{region,claim}
362	east	{study}
363	believe	{game}
364	try	{stage,himself}
365	heavy	{none}
366	reason	{ability,onto}
367	economic	{prove}
368	director	{individual}
369	example	{age,step}
370	attention	{mind,clearly}
371	still	{wish}
372	final	{nothing}
373	notice	{worker}
374	town	{parent}
375	home	{energy,discover}
376	necessary	{she}
377	around	{sister,unit}
378	blood	{hope}
379	age	{last}
380	take	{better,near}
381	list	{senior,PM}
382	necessary	{side,reflect}
383	training	{law,reality}
384	daughter	{it}
385	political	{energy}
386	test	{order,kitchen}
387	effort	{television,indicate}
388	increase	{scene}
389	commercial	{environmental,since}
390	people	{brother,know}
391	yeah	{perform,camera}
392	image	{price,food}
393	share	{avoid,half}
394	single	{trip}
395	strategy	{something,fall}
396	memory	{where,along}
397	face	{benefit}
398	establish	{what}
399	identify	{face,feeling}
400	customer	{development,yourself}
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (primecustomer_id, renewal_date, subscription_addons) FROM stdin;
201	threat	{analysis,must,brother,issue}
202	from	{city}
203	single	{stage}
204	bit	{least,personal,charge,few}
205	usually	{sometimes,to,administration}
206	stop	{sign,school}
207	leader	{president,doctor}
208	third	{continue}
209	one	{almost,set}
210	friend	{worry,cut,year}
211	media	{ago,center}
212	paper	{actually,word,beautiful,office}
213	commercial	{story,opportunity}
214	beautiful	{those,finish,safe}
215	among	{walk,realize,home,partner}
216	yet	{hundred,build,explain}
217	officer	{treat,down}
218	toward	{wait,assume,budget,research}
219	south	{information}
220	security	{accept}
221	stay	{wide,score,million,senior}
222	test	{reveal}
223	establish	{during,wife,happy,may}
224	cost	{still,inside,less,education}
225	reveal	{contain,rise}
226	production	{tonight}
227	experience	{me,range,manage,realize}
228	situation	{because}
229	tend	{pressure}
230	focus	{good}
231	common	{look}
232	heavy	{down}
233	describe	{and,consider}
234	show	{law}
235	low	{or}
236	thing	{them,power,around}
237	him	{Democrat,very}
238	decide	{best}
239	kitchen	{join,sell,hold,bill}
240	traditional	{shake,it}
241	among	{spring,since}
242	have	{wear,case,condition,night}
243	decide	{receive,several,page}
244	national	{central,former,fast}
245	institution	{piece,mention}
246	place	{direction,compare}
247	face	{leave,lawyer,point,eye}
248	new	{note,rather,job,quality}
249	position	{weight,the}
250	born	{hotel,about}
251	same	{tonight,environmental,thank}
252	investment	{quality,form,late}
253	pass	{kitchen}
254	tonight	{issue}
255	size	{form}
256	blue	{role,grow}
257	piece	{summer,necessary,computer,what}
258	detail	{else,media}
259	base	{Mr,threat}
260	against	{along,ten,now}
261	shake	{girl}
262	bad	{service,total,try,writer}
263	be	{reveal,certain,politics,simply}
264	federal	{billion,investment,necessary,reduce}
265	onto	{six,evidence,moment}
266	not	{management}
267	American	{know,summer,challenge}
268	think	{voice,foot,catch,network}
269	rate	{leave}
270	guess	{our,back,seek}
271	prevent	{since,right,chair,either}
272	note	{state,his}
273	beyond	{play,floor,raise,rise}
274	section	{certainly}
275	customer	{mean,than,down}
276	believe	{former,beat}
277	if	{into,quickly,wonder}
278	fire	{off,write,stock,away}
279	his	{hard}
280	majority	{fish}
281	bed	{later}
282	wear	{happy,traditional,writer,wide}
283	not	{leave,spend,up,model}
284	today	{must}
285	hear	{voice}
286	fast	{agency,discuss,management,actually}
287	cost	{pattern,so,mouth}
288	final	{parent,degree,describe,southern}
289	benefit	{prevent}
290	drop	{director}
291	approach	{down}
292	when	{much,anyone,wait}
293	best	{church,sport,exactly}
294	draw	{material}
295	offer	{know,lead,radio,well}
296	hair	{big}
297	anyone	{both,movie,heart}
298	increase	{director,son,way,address}
299	approach	{social}
300	weight	{explain}
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (businesscustomer_id, company_name) FROM stdin;
301	kitchen
302	a
303	job
304	decision
305	accept
306	big
307	pass
308	cultural
309	try
310	hour
311	prove
312	debate
313	authority
314	authority
315	market
316	office
317	hundred
318	left
319	any
320	want
321	answer
322	like
323	subject
324	think
325	professional
326	set
327	trip
328	position
329	accept
330	threat
331	what
332	have
333	everybody
334	expect
335	true
336	single
337	open
338	church
339	energy
340	front
341	mission
342	pick
343	federal
344	make
345	require
346	speak
347	budget
348	might
349	Democrat
350	strategy
351	leave
352	black
353	spring
354	listen
355	movie
356	learn
357	kind
358	know
359	just
360	follow
361	everything
362	which
363	recent
364	world
365	shoulder
366	stage
367	surface
368	home
369	population
370	outside
371	front
372	when
373	moment
374	relate
375	common
376	response
377	teacher
378	hundred
379	movie
380	never
381	year
382	point
383	change
384	space
385	specific
386	truth
387	until
388	too
389	language
390	cause
391	economy
392	if
393	where
394	along
395	budget
396	research
397	drop
398	west
399	sort
400	always
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (employee_id, employee_no) FROM stdin;
401	rise
402	either
403	skin
404	past
405	state
406	well
407	food
408	six
409	father
410	exactly
411	debate
412	office
413	station
414	spring
415	production
416	reflect
417	keep
418	itself
419	cultural
420	until
421	approach
422	their
423	almost
424	develop
425	glass
426	director
427	chance
428	house
429	world
430	arm
431	be
432	child
433	seat
434	father
435	school
436	local
437	college
438	type
439	station
440	news
441	door
442	eat
443	author
444	throughout
445	article
446	check
447	prevent
448	campaign
449	rock
450	other
451	do
452	manager
453	center
454	public
455	level
456	throughout
457	perhaps
458	class
459	same
460	list
461	everybody
462	billion
463	attention
464	simply
465	cup
466	thought
467	early
468	seat
469	determine
470	year
471	process
472	find
473	concern
474	small
475	civil
476	simple
477	foreign
478	painting
479	leader
480	international
481	kid
482	scientist
483	he
484	might
485	themselves
486	responsibility
487	certainly
488	everything
489	event
490	paper
491	could
492	she
493	how
494	wide
495	military
496	realize
497	could
498	method
499	behavior
500	increase
501	white
502	power
503	happy
504	mouth
505	pull
506	store
507	ask
508	small
509	themselves
510	civil
511	city
512	democratic
513	trial
514	election
515	price
516	soldier
517	pay
518	night
519	bill
520	prove
521	risk
522	check
523	system
524	impact
525	billion
526	which
527	energy
528	at
529	dog
530	media
531	something
532	point
533	affect
534	number
535	though
536	stand
537	song
538	body
539	around
540	peace
541	statement
542	education
543	why
544	civil
545	blood
546	magazine
547	young
548	whole
549	member
550	her
551	face
552	language
553	bill
554	room
555	woman
556	kid
557	lead
558	treat
559	scientist
560	born
561	science
562	together
563	source
564	although
565	magazine
566	physical
567	group
568	so
569	system
570	day
571	star
572	give
573	it
574	son
575	of
576	name
577	community
578	city
579	range
580	level
581	any
582	bad
583	somebody
584	anything
585	strong
586	knowledge
587	though
588	phone
589	whose
590	statement
591	anyone
592	hot
593	ready
594	must
595	according
596	whose
597	fish
598	including
599	event
600	behavior
601	tax
602	matter
603	end
604	management
605	worker
606	between
607	together
608	somebody
609	same
610	reach
611	in
612	relate
613	fish
614	move
615	low
616	I
617	expert
618	believe
619	government
620	certainly
621	term
622	increase
623	amount
624	information
625	meeting
626	suggest
627	summer
628	paper
629	cause
630	federal
631	radio
632	sport
633	those
634	officer
635	could
636	action
637	else
638	behavior
639	quality
640	rule
641	with
642	recent
643	pattern
644	run
645	performance
646	international
647	simple
648	nor
649	exist
650	respond
651	light
652	social
653	everyone
654	glass
655	trip
656	interview
657	himself
658	pattern
659	research
660	tonight
661	air
662	interesting
663	upon
664	face
665	bar
666	short
667	save
668	it
669	test
670	boy
671	choice
672	south
673	hotel
674	table
675	although
676	summer
677	threat
678	forget
679	if
680	and
681	plan
682	father
683	down
684	lose
685	really
686	cut
687	beyond
688	cup
689	knowledge
690	drug
691	particular
692	section
693	political
694	behavior
695	dinner
696	money
697	somebody
698	tax
699	without
700	charge
701	Mr
702	none
703	teach
704	best
705	often
706	actually
707	tend
708	road
709	now
710	help
711	about
712	media
713	fish
714	subject
715	sort
716	chance
717	college
718	blood
719	why
720	social
721	financial
722	own
723	program
724	hit
725	relate
726	claim
727	serious
728	view
729	third
730	with
731	rise
732	right
733	over
734	any
735	finish
736	fly
737	action
738	operation
739	its
740	like
741	player
742	realize
743	strong
744	yes
745	amount
746	although
747	tonight
748	whole
749	name
750	usually
751	line
752	throughout
753	with
754	food
755	ten
756	event
757	reach
758	physical
759	have
760	receive
761	production
762	chance
763	to
764	always
765	event
766	difficult
767	human
768	major
769	within
770	main
771	catch
772	also
773	fine
774	account
775	there
776	degree
777	investment
778	poor
779	sense
780	worry
781	address
782	very
783	then
784	experience
785	pass
786	economy
787	light
788	worry
789	discussion
790	she
791	yet
792	again
793	peace
794	practice
795	receive
796	fly
797	before
798	yeah
799	tend
800	cell
801	laugh
802	military
803	goal
804	usually
805	glass
806	rule
807	weight
808	resource
809	entire
810	weight
811	focus
812	out
813	window
814	want
815	particular
816	film
817	almost
818	evening
819	part
820	voice
821	organization
822	whole
823	some
824	fight
825	south
826	discuss
827	exist
828	despite
829	see
830	score
831	spend
832	benefit
833	outside
834	take
835	base
836	figure
837	everything
838	house
839	cup
840	computer
841	democratic
842	modern
843	race
844	audience
845	production
846	knowledge
847	again
848	choose
849	argue
850	during
851	instead
852	knowledge
853	especially
854	close
855	water
856	hold
857	project
858	citizen
859	in
860	social
861	building
862	behavior
863	history
864	summer
865	though
866	anyone
867	range
868	chance
869	dog
870	structure
871	which
872	particular
873	clear
874	person
875	activity
876	during
877	way
878	heavy
879	purpose
880	newspaper
881	know
882	you
883	skill
884	seem
885	team
886	protect
887	read
888	campaign
889	rate
890	always
891	treat
892	president
893	and
894	middle
895	senior
896	onto
897	fish
898	school
899	discuss
900	staff
901	coach
902	could
903	director
904	positive
905	create
906	beat
907	way
908	PM
909	never
910	land
911	start
912	day
913	single
914	court
915	score
916	condition
917	field
918	seek
919	machine
920	set
921	your
922	try
923	bill
924	partner
925	sport
926	middle
927	anyone
928	rule
929	difference
930	common
931	ball
932	concern
933	employee
934	window
935	owner
936	nice
937	race
938	mean
939	something
940	section
941	simply
942	senior
943	why
944	also
945	at
946	accept
947	peace
948	else
949	many
950	happy
951	hour
952	within
953	meet
954	authority
955	within
956	would
957	appear
958	become
959	religious
960	water
961	glass
962	performance
963	deal
964	perform
965	forget
966	respond
967	day
968	memory
969	story
970	however
971	girl
972	consider
973	important
974	purpose
975	begin
976	back
977	democratic
978	say
979	common
980	young
981	street
982	threat
983	issue
984	environment
985	cost
986	box
987	deal
988	can
989	medical
990	blood
991	head
992	girl
993	compare
994	serve
995	spring
996	gas
997	activity
998	force
999	very
1000	question
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (corporateemployee_id, office_site) FROM stdin;
501	heart
502	its
503	across
504	mission
505	small
506	teacher
507	write
508	until
509	skin
510	management
511	father
512	sign
513	attack
514	military
515	least
516	voice
517	staff
518	billion
519	shoulder
520	third
521	wish
522	type
523	difference
524	nothing
525	arm
526	week
527	down
528	must
529	put
530	keep
531	bed
532	staff
533	recent
534	rate
535	mouth
536	ten
537	draw
538	improve
539	individual
540	action
541	police
542	use
543	interest
544	seat
545	brother
546	fear
547	including
548	old
549	may
550	throughout
551	particularly
552	action
553	ten
554	school
555	western
556	base
557	exist
558	cold
559	fast
560	appear
561	animal
562	kitchen
563	goal
564	issue
565	and
566	parent
567	weight
568	social
569	training
570	deal
571	attention
572	information
573	animal
574	media
575	field
576	family
577	including
578	often
579	candidate
580	audience
581	window
582	wrong
583	must
584	after
585	particularly
586	oil
587	east
588	sometimes
589	production
590	would
591	determine
592	off
593	guess
594	spring
595	fire
596	five
597	break
598	reveal
599	than
600	natural
601	statement
602	try
603	image
604	area
605	possible
606	they
607	rock
608	us
609	especially
610	land
611	include
612	staff
613	successful
614	goal
615	child
616	couple
617	green
618	about
619	statement
620	occur
621	well
622	since
623	mission
624	wrong
625	today
626	any
627	number
628	PM
629	main
630	fund
631	economic
632	offer
633	industry
634	sell
635	rule
636	bit
637	my
638	image
639	area
640	material
641	sister
642	business
643	along
644	society
645	throughout
646	respond
647	mouth
648	most
649	group
650	small
651	place
652	century
653	likely
654	always
655	partner
656	lead
657	ago
658	exist
659	three
660	watch
661	open
662	deal
663	interesting
664	present
665	house
666	society
667	quickly
668	manager
669	stuff
670	player
671	book
672	money
673	out
674	practice
675	summer
676	discussion
677	power
678	girl
679	we
680	us
681	political
682	clear
683	population
684	some
685	risk
686	only
687	consumer
688	information
689	next
690	oil
691	society
692	find
693	yard
694	recently
695	piece
696	check
697	reason
698	television
699	impact
700	throw
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (engineer_id, level) FROM stdin;
601	present
602	million
603	forward
604	figure
605	music
606	rule
607	goal
608	movie
609	which
610	say
611	price
612	hundred
613	tell
614	area
615	reality
616	these
617	whose
618	page
619	week
620	understand
621	shoulder
622	claim
623	forget
624	tax
625	else
626	our
627	during
628	drive
629	matter
630	past
631	great
632	top
633	beyond
634	get
635	station
636	day
637	remain
638	argue
639	speak
640	section
641	partner
642	fly
643	contain
644	woman
645	hour
646	meeting
647	indicate
648	safe
649	for
650	early
651	soldier
652	who
653	suddenly
654	second
655	black
656	who
657	fall
658	already
659	accept
660	nation
661	various
662	go
663	form
664	hold
665	method
666	on
667	fill
668	ten
669	save
670	popular
671	history
672	reason
673	consumer
674	though
675	perhaps
676	smile
677	school
678	age
679	air
680	world
681	about
682	true
683	know
684	law
685	ten
686	Republican
687	interview
688	likely
689	actually
690	few
691	try
692	reflect
693	gun
694	certain
695	large
696	sure
697	whose
698	every
699	child
700	different
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (supportagent_id, queue) FROM stdin;
701	task
702	fill
703	indeed
704	positive
705	collection
706	trade
707	performance
708	teach
709	hard
710	same
711	people
712	if
713	recent
714	democratic
715	turn
716	keep
717	really
718	reflect
719	pick
720	anyone
721	maintain
722	difficult
723	pattern
724	respond
725	onto
726	ask
727	goal
728	loss
729	where
730	or
731	magazine
732	position
733	question
734	as
735	building
736	number
737	paper
738	big
739	similar
740	fall
741	sell
742	reality
743	hair
744	plant
745	end
746	low
747	quickly
748	class
749	feel
750	finish
751	must
752	such
753	poor
754	argue
755	them
756	form
757	record
758	central
759	institution
760	bank
761	lead
762	each
763	there
764	stock
765	effort
766	rest
767	claim
768	conference
769	experience
770	bag
771	left
772	discover
773	situation
774	behind
775	create
776	final
777	type
778	hand
779	claim
780	seek
781	sign
782	case
783	particularly
784	others
785	PM
786	nature
787	low
788	cost
789	radio
790	audience
791	next
792	safe
793	create
794	past
795	south
796	him
797	security
798	forget
799	daughter
800	thousand
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (digitalproduct_id, delivery_type) FROM stdin;
201	after
202	race
203	reason
204	them
205	kind
206	leg
207	its
208	her
209	stock
210	production
211	memory
212	help
213	story
214	land
215	remember
216	section
217	might
218	whom
219	state
220	about
221	likely
222	law
223	stuff
224	range
225	bad
226	hundred
227	conference
228	peace
229	even
230	fill
231	around
232	station
233	story
234	state
235	indeed
236	become
237	range
238	sister
239	local
240	spend
241	time
242	star
243	practice
244	sit
245	model
246	specific
247	try
248	point
249	million
250	report
251	would
252	very
253	phone
254	impact
255	school
256	charge
257	side
258	manager
259	this
260	contain
261	some
262	recently
263	thought
264	manager
265	public
266	happy
267	describe
268	claim
269	economic
270	stock
271	same
272	task
273	small
274	learn
275	represent
276	respond
277	audience
278	eye
279	always
280	image
281	education
282	window
283	with
284	live
285	effort
286	building
287	case
288	time
289	manage
290	rest
291	sister
292	to
293	design
294	trade
295	bring
296	couple
297	school
298	garden
299	help
300	account
1901	stuff
1902	message
1903	low
1904	nature
1905	part
1906	language
1907	dark
1908	seem
1909	election
1910	mouth
1911	support
1912	whatever
1913	leg
1914	work
1915	on
1916	media
1917	its
1918	bed
1919	response
1920	interest
1921	goal
1922	hand
1923	mission
1924	value
1925	just
1926	I
1927	end
1928	behind
1929	learn
1930	trade
1931	week
1932	evening
1933	behind
1934	wall
1935	leave
1936	a
1937	lay
1938	act
1939	idea
1940	second
1941	over
1942	effect
1943	director
1944	understand
1945	education
1946	plant
1947	tonight
1948	page
1949	century
1950	set
1951	protect
1952	low
1953	deep
1954	senior
1955	win
1956	collection
1957	fear
1958	institution
1959	fly
1960	provide
1961	action
1962	star
1963	site
1964	effort
1965	administration
1966	oil
1967	decision
1968	eye
1969	thousand
1970	dinner
1971	hand
1972	mind
1973	describe
1974	relationship
1975	exactly
1976	major
1977	instead
1978	how
1979	marriage
1980	rise
1981	country
1982	thus
1983	large
1984	three
1985	candidate
1986	maybe
1987	tree
1988	those
1989	own
1990	federal
1991	realize
1992	since
1993	happen
1994	work
1995	science
1996	become
1997	group
1998	example
1999	season
2000	purpose
2001	part
2002	Republican
2003	top
2004	condition
2005	business
2006	side
2007	conference
2008	stop
2009	under
2010	stuff
2011	character
2012	when
2013	large
2014	paper
2015	meet
2016	huge
2017	wear
2018	very
2019	collection
2020	letter
2021	onto
2022	book
2023	herself
2024	how
2025	low
2026	life
2027	interest
2028	easy
2029	quickly
2030	activity
2031	agreement
2032	ever
2033	medical
2034	for
2035	level
2036	eat
2037	impact
2038	hour
2039	both
2040	window
2041	myself
2042	establish
2043	court
2044	gun
2045	respond
2046	goal
2047	here
2048	low
2049	garden
2050	operation
2051	surface
2052	job
2053	chair
2054	drop
2055	other
2056	impact
2057	film
2058	single
2059	unit
2060	magazine
2061	food
2062	would
2063	customer
2064	owner
2065	apply
2066	nation
2067	compare
2068	by
2069	page
2070	community
2071	away
2072	what
2073	character
2074	how
2075	month
2076	order
2077	threat
2078	stage
2079	sea
2080	nor
2081	air
2082	moment
2083	sure
2084	organization
2085	start
2086	card
2087	ok
2088	around
2089	run
2090	interview
2091	democratic
2092	husband
2093	staff
2094	tonight
2095	plant
2096	put
2097	sister
2098	former
2099	ability
2100	lose
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (fulfillmentassociate_id, shift) FROM stdin;
801	cut
802	bank
803	explain
804	once
805	defense
806	case
807	law
808	scientist
809	baby
810	down
811	pull
812	sign
813	while
814	strong
815	away
816	office
817	whose
818	with
819	industry
820	everyone
821	price
822	responsibility
823	production
824	can
825	why
826	art
827	successful
828	claim
829	issue
830	early
831	interest
832	drop
833	bag
834	perhaps
835	course
836	girl
837	full
838	figure
839	soldier
840	visit
841	newspaper
842	today
843	under
844	pull
845	likely
846	reach
847	human
848	nature
849	entire
850	chair
851	factor
852	another
853	Mr
854	sometimes
855	light
856	century
857	range
858	contain
859	country
860	skill
861	send
862	summer
863	material
864	develop
865	maintain
866	speech
867	next
868	option
869	include
870	guy
871	rather
872	support
873	generation
874	serve
875	even
876	free
877	indeed
878	single
879	say
880	plant
881	both
882	space
883	brother
884	book
885	analysis
886	specific
887	someone
888	friend
889	name
890	try
891	road
892	science
893	however
894	free
895	light
896	be
897	religious
898	either
899	perform
900	everything
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (categorymanager_id, department) FROM stdin;
901	also
902	teacher
903	important
904	let
905	defense
906	final
907	short
908	thus
909	represent
910	what
911	kitchen
912	president
913	wrong
914	information
915	specific
916	really
917	their
918	us
919	compare
920	work
921	modern
922	class
923	know
924	rate
925	alone
926	middle
927	task
928	movement
929	mind
930	bring
931	realize
932	heavy
933	bit
934	student
935	him
936	fine
937	write
938	present
939	station
940	ability
941	natural
942	policy
943	hot
944	back
945	anyone
946	yeah
947	degree
948	oil
949	however
950	body
951	generation
952	able
953	away
954	call
955	past
956	dark
957	despite
958	step
959	military
960	to
961	bar
962	box
963	office
964	quickly
965	message
966	while
967	court
968	recent
969	time
970	last
971	glass
972	cell
973	little
974	woman
975	collection
976	picture
977	among
978	sure
979	short
980	leader
981	notice
982	general
983	type
984	unit
985	authority
986	service
987	population
988	rather
989	worker
990	her
991	there
992	couple
993	experience
994	agency
995	early
996	allow
997	last
998	evening
999	account
1000	star
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (product_id, image_id, url, alt_text, sort_order) FROM stdin;
1839	406	speech	such	489
295	941	adult	west	955
344	659	nothing	blue	221
978	827	these	trouble	212
875	754	it	sister	843
557	588	fly	name	868
1155	499	discover	decision	925
1808	258	behavior	offer	900
1774	92	join	pretty	843
361	796	police	cover	714
978	831	citizen	pull	676
1236	993	worry	like	729
1377	99	need	message	583
1725	985	capital	decision	536
1906	330	environmental	which	867
1861	159	reality	window	537
2081	518	avoid	too	234
1782	213	suffer	pay	568
1547	132	high	the	928
964	405	cover	upon	997
1655	38	age	sit	31
641	417	give	song	971
1404	872	actually	benefit	44
55	473	office	short	593
2067	652	near	wide	517
1713	557	off	bank	409
156	694	usually	husband	769
1554	260	claim	serve	499
728	21	score	toward	964
1013	324	bit	over	67
1875	56	life	wait	63
1471	330	staff	continue	892
385	143	kitchen	moment	439
1358	892	strategy	since	291
1596	5	rich	turn	231
372	272	head	black	415
1732	482	language	management	416
298	798	memory	lose	609
210	793	side	usually	271
570	478	not	television	460
2064	949	benefit	entire	541
1945	768	within	because	815
393	611	own	believe	375
1992	175	language	discussion	973
1115	673	certain	use	580
2073	566	commercial	attorney	363
595	903	performance	no	221
855	383	position	expert	745
665	667	through	teacher	725
2038	67	model	political	334
798	94	as	mouth	532
1897	235	inside	structure	719
772	341	work	in	133
1397	360	east	pressure	241
1296	252	trouble	item	522
101	595	its	reveal	38
560	267	identify	see	782
1648	511	so	light	120
293	688	war	college	422
1647	100	some	end	859
453	936	scene	property	353
299	377	successful	language	550
1283	206	research	by	439
1468	174	deal	character	581
1411	72	evidence	bad	576
2024	289	these	final	482
1409	207	study	bill	338
1476	848	stand	look	792
1412	175	sure	until	906
2024	371	magazine	national	257
924	227	mother	compare	762
1054	341	policy	spring	681
510	128	fish	summer	143
324	135	why	bit	573
75	52	picture	reveal	392
976	133	word	off	348
236	476	throw	trial	99
565	399	none	clearly	150
1453	89	end	level	765
947	88	long	store	522
1266	304	military	religious	155
1568	998	research	suggest	910
812	593	move	while	454
751	522	adult	kitchen	785
551	935	year	speech	970
1192	538	great	life	791
1874	961	camera	high	709
2000	118	society	design	995
1174	18	institution	first	601
601	809	still	go	701
828	313	body	plant	647
588	427	democratic	look	945
1107	837	nearly	evidence	554
1272	737	will	ability	938
1121	840	across	option	48
595	578	catch	notice	194
1171	178	usually	interest	748
896	652	travel	gas	369
698	679	list	right	728
1765	114	anything	language	612
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (product_id, variant_id, price_override, barcode, is_active_variant) FROM stdin;
1086	222	1	trade	52
1357	176	432	occur	585
1359	998	145	training	961
521	524	479	reduce	504
630	972	842	space	152
42	910	262	bill	476
1858	602	347	organization	622
2098	427	242	like	850
1429	478	491	reach	507
527	193	341	car	197
810	869	343	discover	478
685	783	873	go	709
1165	268	697	cut	561
1396	459	736	opportunity	443
925	796	177	hope	606
663	523	584	song	839
1782	834	495	sit	759
1721	566	261	certain	927
1637	542	513	a	386
1203	535	863	fact	230
1807	876	316	onto	284
1506	591	390	reach	268
1396	614	630	positive	86
32	170	968	history	843
1427	564	688	relate	590
1053	554	896	couple	613
735	957	453	by	489
1892	326	77	character	840
386	228	682	sound	934
1000	364	352	know	554
97	559	176	painting	921
1080	651	899	when	780
1185	601	210	painting	212
630	582	652	fish	425
1171	994	471	experience	421
1556	697	863	above	30
1794	840	184	machine	130
1348	917	429	suggest	568
295	178	522	recognize	122
911	844	598	factor	101
566	635	478	similar	183
743	559	91	school	144
553	418	825	though	833
1639	196	354	contain	862
1997	924	652	view	790
3	805	475	appear	616
23	479	647	author	864
1272	105	345	simply	349
461	468	581	particular	700
1489	288	404	possible	340
479	310	141	person	266
582	151	185	play	192
1467	882	128	evening	946
1214	414	175	forward	732
1696	355	636	trip	542
926	408	931	see	118
1458	372	234	set	14
818	218	705	born	776
1463	81	30	wind	584
1404	363	396	body	120
968	629	769	cost	170
389	215	477	describe	966
1302	543	186	best	473
1255	496	231	by	401
578	13	127	buy	178
407	240	327	cultural	324
838	428	484	worker	143
663	280	592	describe	366
360	554	352	opportunity	508
961	290	737	around	298
592	373	883	my	507
617	779	616	notice	807
1352	238	52	program	573
1706	185	835	accept	497
1706	563	71	describe	197
906	190	910	by	582
523	329	136	expert	518
1007	763	53	point	201
1089	862	230	result	844
1017	894	674	born	230
1393	256	736	direction	760
1675	932	530	father	631
1936	240	863	ok	738
1012	388	601	our	681
916	946	678	inside	180
1483	394	516	film	160
873	583	542	month	131
1189	680	906	person	171
284	237	481	people	68
1526	920	61	fall	509
913	457	148	fill	518
127	856	402	great	115
627	169	903	yourself	200
1217	274	640	point	390
1643	44	38	nature	493
2025	991	657	good	83
1970	907	136	population	886
1983	218	866	we	636
575	2	275	character	767
593	243	156	career	735
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (product_id, price_id, starts_at, ends_at, price) FROM stdin;
338	690	prepare	just	484
1292	660	effort	dark	164
56	760	compare	week	197
1632	382	we	second	399
568	826	system	movie	799
1439	785	chance	law	74
1977	303	water	short	2
1726	122	huge	three	995
303	485	hair	street	127
1871	666	glass	do	228
1073	626	task	his	9
1477	386	explain	animal	592
687	163	thousand	share	651
1030	648	side	respond	260
267	620	human	meeting	978
113	140	concern	detail	102
1875	767	thank	particular	458
1206	288	bill	professional	620
1161	172	of	value	460
2024	200	cause	size	998
117	656	land	learn	72
1188	720	case	miss	904
1960	191	group	test	449
411	77	rich	unit	50
1032	918	once	Mr	858
985	444	we	magazine	195
102	540	institution	above	102
1513	447	avoid	American	938
1475	291	hour	responsibility	705
1177	431	guess	manage	45
635	775	green	cultural	335
1229	387	scientist	nice	509
1703	89	establish	star	333
980	55	as	radio	86
436	188	house	green	841
13	347	TV	name	434
669	456	five	story	912
897	921	six	staff	750
294	261	family	parent	208
1445	172	team	animal	441
1314	757	standard	item	881
1402	398	argue	father	777
804	716	matter	hundred	482
141	335	policy	professional	810
1340	57	surface	finally	80
1288	756	year	listen	59
374	444	it	officer	220
301	988	save	often	38
470	316	information	citizen	658
477	638	door	heavy	4
606	771	response	behind	694
995	462	impact	affect	162
403	655	region	discussion	896
692	669	effect	class	880
1381	230	big	yes	202
627	464	true	year	250
1939	235	space	off	664
996	376	ground	oil	59
1857	446	mouth	end	993
644	830	cup	rich	932
1869	765	beat	sit	9
1304	491	economy	picture	585
149	997	anything	woman	221
228	288	somebody	blood	174
1411	667	quickly	Republican	299
839	7	whole	several	811
141	571	step	matter	403
856	134	stay	beyond	738
1069	285	physical	feeling	651
1876	47	spring	allow	794
1661	199	audience	professional	394
706	990	up	alone	471
698	158	that	score	700
408	994	cell	arrive	160
975	465	live	eye	964
1106	929	produce	push	886
1012	976	she	friend	884
1105	581	use	social	144
1787	590	gas	thank	242
910	371	best	or	259
854	50	discussion	pattern	181
891	56	artist	beautiful	635
1378	49	director	pretty	308
978	560	usually	try	7
1114	956	one	national	469
630	442	commercial	ago	14
904	185	power	Republican	82
663	805	agree	everything	47
1577	490	seem	drug	852
2044	802	whose	someone	278
276	569	step	ten	865
816	924	film	standard	521
1217	229	instead	set	319
196	492	action	turn	24
1716	795	election	population	592
273	449	apply	level	207
111	839	election	top	152
1128	828	seven	author	180
472	326	stop	now	848
393	512	discover	want	711
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (tag_id, tag_name) FROM stdin;
1	it
2	take
3	worry
4	give
5	start
6	break
7	create
8	happen
9	feel
10	away
11	beyond
12	member
13	shake
14	window
15	investment
16	where
17	plant
18	great
19	task
20	require
21	girl
22	allow
23	old
24	short
25	allow
26	present
27	girl
28	wish
29	far
30	like
31	evidence
32	director
33	full
34	fast
35	rise
36	clear
37	experience
38	site
39	none
40	face
41	forward
42	parent
43	subject
44	cost
45	three
46	concern
47	possible
48	visit
49	a
50	help
51	religious
52	she
53	age
54	individual
55	defense
56	fall
57	here
58	spend
59	school
60	during
61	relationship
62	become
63	ago
64	season
65	her
66	window
67	history
68	very
69	beat
70	medical
71	perhaps
72	soon
73	two
74	their
75	dream
76	themselves
77	feeling
78	natural
79	likely
80	project
81	story
82	product
83	wait
84	expert
85	lose
86	read
87	away
88	lose
89	society
90	be
91	thought
92	lot
93	put
94	finally
95	throughout
96	four
97	fight
98	big
99	plan
100	rest
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	factor	heavy	East Bobbyberg	by	something	interest
376	758	land	be	East Melinda	walk	collection	strong
216	906	indicate	season	Jonesport	high	in	really
164	325	down	fast	South Jeffhaven	major	computer	share
328	812	guy	here	Jamesberg	choose	act	at
267	206	great	figure	Smithstad	heart	their	various
170	357	himself	reach	Evansshire	growth	hospital	likely
308	749	religious	wind	Perezview	beat	leave	cut
372	164	result	agency	Hamiltonmouth	design	option	church
113	857	science	but	North Vincentshire	foreign	thus	couple
127	712	consider	prevent	New Dominiqueview	commercial	different	this
287	403	old	tonight	North Carl	last	will	service
386	383	team	dark	Hamiltonborough	or	property	west
356	272	tonight	join	South Teresa	see	join	condition
300	991	opportunity	imagine	East Deborahhaven	yard	scene	attorney
382	120	real	practice	Anthonyfurt	identify	take	law
382	629	around	life	East Holly	next	strong	seat
285	753	break	need	South Markton	lawyer	author	may
196	152	strong	foreign	East Jasonville	statement	actually	they
342	836	hard	lead	New Amandahaven	network	know	conference
290	965	seem	through	Waltersfurt	point	suffer	agree
171	539	occur	office	East Sherry	thus	partner	politics
335	581	myself	success	Lake Jameston	explain	blue	they
326	230	than	concern	Maryland	notice	take	begin
139	212	bar	usually	Tracyfurt	believe	night	forward
329	696	form	beautiful	East Cheyenne	ready	north	administration
339	670	want	read	Evanbury	fire	model	story
152	323	accept	performance	Port Joseph	it	eye	arrive
288	378	argue	over	Gomezbury	past	attention	magazine
359	5	consider	teach	Cisnerosberg	people	go	radio
207	544	such	rather	West Deborahside	together	fast	month
396	774	local	east	Port John	recently	civil	eat
110	291	into	whether	West Rebeccachester	economy	always	view
382	149	respond	price	West Davidstad	decide	beautiful	among
266	698	single	baby	Zacharyside	everything	every	white
193	120	positive	civil	Victoriaborough	push	improve	adult
244	589	his	bar	East Frank	artist	sea	girl
195	637	bed	forget	Greeneshire	fear	final	right
246	782	science	customer	Laurenhaven	easy	provide	establish
254	836	young	seven	New Alexandria	music	there	will
293	230	include	guy	Theresahaven	very	Mrs	throw
385	861	on	late	Carolynburgh	natural	away	ten
229	226	position	reduce	Mollyport	story	walk	stand
390	422	laugh	industry	Port Samanthaland	option	laugh	news
113	800	rather	her	Port Williamburgh	about	somebody	interest
181	260	door	sense	East Danielle	method	attorney	he
125	400	say	beautiful	East Robert	eye	pass	care
207	938	state	fund	Port Anitaborough	those	exactly	since
173	948	knowledge	agent	South Gregory	student	our	night
377	772	last	hot	East James	stock	color	short
136	725	in	to	Freemanbury	alone	return	what
194	396	stop	visit	West Aliciafort	threat	professional	measure
237	367	plant	already	Sandrahaven	food	remain	price
198	917	tree	cover	Garciafort	case	store	hundred
255	359	agency	serve	Port Lynn	threat	enter	mention
129	290	newspaper	threat	Jacksonshire	song	cup	nearly
260	433	church	pick	Branchbury	sister	kind	provide
348	806	message	interest	North James	require	put	return
147	444	pull	indeed	Lake Brittanyland	same	evening	never
136	148	center	store	South Kristinburgh	stock	cut	again
297	810	customer	report	Phillipschester	social	describe	argue
392	611	six	similar	Wagnerville	good	something	result
297	410	institution	skin	East Jennafurt	water	alone	decide
272	531	sometimes	rest	Lake Jessebury	answer	participant	will
364	33	clearly	different	South Christopher	radio	morning	blood
287	539	population	bring	Millerberg	current	writer	light
255	79	leg	group	Thomaston	different	top	base
308	15	education	late	Rodriguezmouth	system	ground	give
149	807	director	benefit	Lewisburgh	dark	everybody	address
361	482	Mrs	camera	East Colefurt	defense	interview	expect
116	177	bit	cover	Port Angela	practice	arrive	almost
370	744	anyone	the	West Ronnie	religious	student	general
325	864	successful	to	Schwartzberg	factor	or	skill
217	794	especially	put	Hallberg	move	nature	water
351	862	near	quality	North Jasmine	car	leg	seem
244	26	prove	hope	Diaztown	bad	successful	growth
218	6	west	member	Christianberg	impact	his	you
129	226	peace	set	Maryton	executive	kitchen	middle
364	323	upon	loss	North Ryan	western	sort	wait
365	99	resource	success	West Kevinstad	lawyer	short	include
268	296	her	body	South Kennethshire	science	spend	popular
336	977	since	task	South Amandaton	property	leg	kind
186	80	modern	own	Lake Gailtown	economy	change	book
106	889	law	seat	West Thomas	information	gas	section
363	482	receive	sign	Port Kathleen	single	certain	main
365	180	support	teacher	Contrerastown	various	ask	cause
191	319	instead	product	Zacharyberg	perhaps	relationship	recently
222	289	fine	rest	East Morganview	play	yourself	involve
117	18	maintain	election	Robertsville	movement	admit	success
177	568	blue	actually	Brownbury	treat	government	management
309	142	pay	issue	East Theresahaven	create	of	data
250	744	name	sit	West Carolineshire	full	security	alone
175	596	read	strategy	West Brianborough	still	despite	probably
133	780	nature	senior	Loganfort	drug	common	at
335	952	determine	over	North Mark	will	or	example
372	102	explain	camera	Adamton	really	dinner	call
254	366	relationship	this	New Stevenport	his	truth	late
116	747	miss	large	Hartbury	federal	accept	degree
128	444	situation	American	Heatherchester	happy	sound	something
398	38	media	debate	Nicholasview	crime	remain	quickly
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	state	activity	8	980	local
259	195	last	final	398	242	medical
351	490	poor	film	445	698	tough
385	405	energy	side	452	467	daughter
124	992	husband	material	88	810	tonight
352	493	nation	project	299	498	per
234	159	identify	do	690	96	religious
253	999	owner	physical	696	670	morning
172	408	how	mother	781	183	his
391	795	side	themselves	963	188	culture
236	877	sort	manager	956	973	maintain
120	535	cup	little	942	18	mean
317	809	store	the	790	446	nation
191	187	animal	sea	533	833	reach
247	841	rise	cultural	470	51	free
311	880	professor	every	377	337	player
257	146	right	collection	239	648	with
206	496	on	begin	170	504	old
345	208	need	country	584	268	particular
189	266	official	now	465	48	your
354	336	direction	learn	77	494	sure
128	496	hope	many	50	374	end
139	500	energy	leg	371	19	student
377	940	young	buy	202	708	media
279	74	ground	shake	931	79	once
360	872	us	history	417	421	also
361	271	value	event	702	695	financial
165	683	beyond	spend	277	127	mean
398	231	scene	participant	912	756	move
243	486	test	now	808	142	response
292	575	still	job	896	528	community
178	362	space	rate	245	290	avoid
248	774	every	television	778	166	born
126	377	hit	oil	778	821	box
127	222	body	box	406	49	product
349	266	step	life	3	342	add
295	770	career	number	291	800	purpose
395	297	successful	list	209	306	race
383	970	month	speak	710	888	what
152	924	hope	me	291	905	bar
332	749	performance	design	455	975	month
311	794	although	responsibility	218	210	cultural
354	392	note	simple	39	818	mouth
202	571	social	Democrat	656	115	top
392	397	about	anything	355	787	baby
316	688	meet	population	69	754	soon
218	235	its	writer	649	538	live
185	745	foreign	lay	383	801	we
112	718	attention	change	328	999	chair
370	850	focus	site	559	305	military
230	777	spend	small	285	263	both
133	672	media	return	386	610	soon
190	399	activity	dog	791	36	floor
186	886	early	author	626	996	resource
343	903	against	instead	40	540	team
321	262	recognize	myself	899	61	physical
395	697	road	several	223	348	pay
133	286	country	statement	985	771	attention
396	306	blue	grow	99	945	past
179	966	sense	resource	533	699	generation
297	809	cut	arm	169	959	at
166	455	among	minute	267	17	hit
118	573	song	sing	33	344	wall
284	327	front	nice	55	193	approach
114	486	billion	understand	235	489	before
187	675	apply	commercial	909	669	everything
243	793	they	nothing	358	731	size
122	174	man	happy	734	603	country
178	691	move	fire	908	359	purpose
256	878	wall	happen	339	71	standard
309	52	girl	product	125	137	movement
261	210	itself	science	571	337	health
272	478	audience	to	388	319	when
206	800	at	capital	791	468	adult
275	382	glass	open	488	561	national
140	642	that	campaign	490	687	poor
128	979	difficult	great	858	413	design
242	40	old	form	572	563	also
382	664	speech	education	134	335	other
150	852	hotel	bed	423	3	unit
379	126	arrive	common	63	978	economic
380	256	company	black	210	699	natural
227	758	administration	whatever	658	392	throughout
350	754	region	management	540	756	picture
107	668	media	score	972	700	voice
222	139	past	not	48	891	those
308	876	position	moment	935	733	political
316	608	these	wear	911	396	science
365	356	customer	quality	997	461	perhaps
389	39	daughter	open	829	42	southern
263	86	property	nor	890	763	story
236	155	stay	idea	56	983	maintain
214	809	career	audience	101	11	pattern
110	790	and	good	914	325	yes
325	562	hotel	she	538	936	sit
321	203	I	strategy	475	463	beautiful
125	409	vote	pressure	14	56	prove
354	210	maybe	call	296	707	beat
326	883	down	note	280	327	six
330	599	wait	sister	871	577	tax
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (customer_id, updated_at) FROM stdin;
378	expect
238	his
335	fight
176	different
303	wall
113	information
282	social
198	tend
121	reality
275	bag
190	since
314	visit
400	of
206	top
367	bill
395	behavior
235	early
123	poor
197	significant
261	wonder
163	three
155	century
322	key
146	reduce
234	improve
290	official
360	draw
191	attorney
192	court
361	upon
377	recognize
317	across
186	forget
397	much
258	return
345	from
332	cold
106	big
180	prepare
139	real
343	charge
185	wait
299	woman
306	four
291	body
177	test
300	start
321	authority
359	teacher
239	wife
319	parent
308	far
388	individual
302	me
278	safe
279	by
134	magazine
233	once
170	spend
144	fire
136	process
273	from
375	air
229	lawyer
221	everything
307	Mrs
160	thing
277	lay
268	account
135	TV
223	measure
200	best
362	event
245	move
341	fact
247	suggest
212	stay
382	its
166	though
283	nothing
368	decide
358	often
143	use
141	federal
333	many
254	occur
137	place
353	public
385	expect
171	education
311	pull
248	within
349	part
110	again
344	among
257	lead
342	some
120	stage
380	smile
205	agree
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	maybe
145	327	Congress
263	947	necessary
391	729	high
321	567	suffer
239	99	worker
256	35	success
112	929	century
358	53	something
191	954	reality
227	363	short
294	342	spend
129	334	bank
205	660	friend
134	38	reflect
167	520	program
229	414	among
256	818	smile
117	669	test
164	817	market
251	678	blood
379	393	none
121	886	region
253	149	son
354	393	partner
315	877	exist
395	463	hour
395	756	while
180	487	a
112	943	management
285	127	area
227	225	majority
263	63	word
145	377	process
287	752	sign
317	603	heavy
149	989	investment
229	777	sea
114	803	appear
140	381	man
197	739	benefit
191	922	worry
343	728	north
290	216	only
155	932	catch
314	475	writer
376	879	board
309	128	within
292	902	course
290	55	around
249	736	west
124	528	crime
255	680	cover
298	791	throughout
107	227	responsibility
108	80	effect
124	382	newspaper
125	458	operation
181	929	wear
116	621	director
254	822	up
127	12	place
179	673	final
122	38	bit
231	413	discuss
229	870	some
132	434	practice
375	60	center
128	512	money
335	941	attack
120	673	yet
150	714	across
287	982	prove
193	600	tell
247	131	few
365	960	yes
242	962	girl
104	246	statement
226	255	college
375	632	chance
355	677	party
309	904	your
390	453	with
298	517	almost
307	127	our
257	280	sit
117	642	discussion
115	647	thank
356	947	do
328	129	send
344	275	check
321	935	sound
208	121	staff
224	795	season
372	533	economy
270	98	increase
134	610	new
365	595	themselves
333	65	country
316	894	minute
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, warranty_months) FROM stdin;
301	728
302	613
303	436
304	818
305	418
306	527
307	631
308	42
309	195
310	554
311	995
312	539
313	618
314	310
315	564
316	652
317	378
318	921
319	393
320	652
321	398
322	364
323	177
324	604
325	265
326	708
327	221
328	734
329	212
330	106
331	409
332	92
333	563
334	49
335	753
336	272
337	825
338	806
339	888
340	302
341	119
342	153
343	172
344	890
345	808
346	106
347	949
348	58
349	779
350	521
351	422
352	418
353	546
354	969
355	713
356	511
357	347
358	757
359	548
360	542
361	323
362	122
363	231
364	577
365	577
366	433
367	842
368	87
369	276
370	24
371	117
372	698
373	95
374	255
375	32
376	381
377	97
378	528
379	361
380	621
381	94
382	578
383	309
384	563
385	180
386	282
387	968
388	413
389	71
390	634
391	160
392	693
393	862
394	374
395	870
396	416
397	303
398	551
399	389
400	471
401	283
402	55
403	832
404	544
405	802
406	822
407	109
408	120
409	433
410	632
411	773
412	651
413	690
414	916
415	492
416	407
417	999
418	761
419	443
420	950
421	386
422	964
423	940
424	970
425	551
426	434
427	679
428	180
429	438
430	718
431	254
432	397
433	47
434	979
435	171
436	790
437	568
438	828
439	951
440	800
441	345
442	358
443	153
444	202
445	557
446	568
447	641
448	31
449	606
450	950
451	208
452	231
453	549
454	214
455	630
456	54
457	980
458	875
459	517
460	839
461	834
462	735
463	679
464	39
465	876
466	409
467	192
468	501
469	930
470	867
471	610
472	535
473	350
474	913
475	481
476	95
477	404
478	566
479	438
480	611
481	886
482	426
483	38
484	345
485	653
486	868
487	945
488	150
489	414
490	350
491	729
492	773
493	77
494	424
495	241
496	49
497	842
498	949
499	453
500	30
501	724
502	189
503	602
504	739
505	370
506	226
507	501
508	10
509	36
510	296
511	402
512	193
513	629
514	953
515	848
516	663
517	975
518	615
519	619
520	577
521	262
522	801
523	521
524	713
525	56
526	262
527	388
528	214
529	132
530	623
531	774
532	310
533	831
534	418
535	645
536	216
537	2
538	510
539	448
540	326
541	830
542	863
543	118
544	448
545	612
546	300
547	4
548	68
549	341
550	481
551	911
552	245
553	340
554	518
555	231
556	61
557	65
558	766
559	454
560	123
561	90
562	961
563	893
564	784
565	783
566	886
567	852
568	620
569	907
570	773
571	361
572	380
573	893
574	469
575	82
576	661
577	318
578	908
579	701
580	548
581	666
582	879
583	351
584	34
585	64
586	577
587	238
588	201
589	519
590	78
591	884
592	188
593	824
594	137
595	372
596	625
597	90
598	169
599	223
600	923
601	139
602	620
603	347
604	20
605	855
606	426
607	50
608	285
609	590
610	147
611	406
612	39
613	40
614	940
615	408
616	170
617	842
618	872
619	166
620	581
621	490
622	455
623	127
624	185
625	240
626	174
627	290
628	122
629	633
630	373
631	100
632	487
633	970
634	935
635	185
636	999
637	453
638	766
639	520
640	905
641	328
642	231
643	106
644	384
645	397
646	660
647	179
648	109
649	975
650	576
651	844
652	880
653	928
654	353
655	215
656	322
657	9
658	619
659	240
660	728
661	96
662	772
663	965
664	988
665	442
666	609
667	241
668	137
669	726
670	393
671	737
672	740
673	74
674	888
675	684
676	955
677	201
678	686
679	56
680	46
681	881
682	798
683	133
684	358
685	448
686	155
687	69
688	558
689	659
690	490
691	216
692	99
693	707
694	934
695	588
696	687
697	449
698	453
699	467
700	778
701	489
702	65
703	847
704	809
705	514
706	481
707	129
708	789
709	291
710	580
711	620
712	94
713	193
714	121
715	166
716	92
717	274
718	72
719	443
720	433
721	220
722	977
723	524
724	235
725	889
726	264
727	110
728	484
729	920
730	679
731	549
732	661
733	206
734	504
735	724
736	410
737	641
738	131
739	654
740	610
741	334
742	967
743	789
744	291
745	29
746	504
747	386
748	256
749	301
750	70
751	363
752	871
753	898
754	255
755	980
756	602
757	152
758	266
759	324
760	40
761	718
762	524
763	71
764	732
765	470
766	250
767	931
768	295
769	44
770	118
771	31
772	451
773	178
774	230
775	329
776	200
777	266
778	286
779	137
780	530
781	327
782	852
783	135
784	607
785	981
786	196
787	236
788	674
789	155
790	726
791	965
792	994
793	65
794	525
795	867
796	365
797	924
798	78
799	63
800	466
801	694
802	133
803	734
804	768
805	124
806	333
807	225
808	467
809	887
810	577
811	61
812	319
813	18
814	869
815	24
816	157
817	42
818	552
819	40
820	690
821	194
822	421
823	454
824	81
825	166
826	274
827	981
828	892
829	246
830	272
831	270
832	271
833	503
834	114
835	59
836	563
837	60
838	911
839	610
840	895
841	298
842	575
843	602
844	339
845	69
846	590
847	783
848	545
849	368
850	792
851	663
852	721
853	25
854	932
855	437
856	922
857	796
858	971
859	25
860	412
861	715
862	571
863	475
864	138
865	653
866	712
867	781
868	712
869	598
870	434
871	12
872	781
873	753
874	529
875	808
876	597
877	798
878	936
879	403
880	516
881	267
882	824
883	863
884	281
885	994
886	480
887	802
888	111
889	593
890	425
891	52
892	999
893	164
894	361
895	334
896	980
897	102
898	760
899	470
900	314
901	522
902	375
903	832
904	259
905	572
906	725
907	419
908	115
909	204
910	386
911	791
912	93
913	225
914	683
915	166
916	356
917	32
918	351
919	715
920	75
921	771
922	956
923	352
924	773
925	952
926	628
927	735
928	176
929	869
930	70
931	863
932	506
933	923
934	992
935	301
936	488
937	216
938	510
939	819
940	397
941	739
942	95
943	53
944	815
945	133
946	532
947	34
948	173
949	824
950	297
951	400
952	390
953	342
954	594
955	887
956	530
957	822
958	262
959	800
960	711
961	489
962	130
963	581
964	349
965	75
966	544
967	699
968	783
969	55
970	196
971	553
972	197
973	254
974	730
975	513
976	550
977	173
978	624
979	651
980	885
981	309
982	633
983	495
984	145
985	794
986	42
987	804
988	434
989	779
990	297
991	723
992	723
993	54
994	880
995	226
996	518
997	388
998	39
999	123
1000	6
1001	56
1002	131
1003	275
1004	923
1005	617
1006	555
1007	823
1008	699
1009	625
1010	562
1011	81
1012	673
1013	950
1014	815
1015	377
1016	341
1017	785
1018	166
1019	361
1020	549
1021	624
1022	672
1023	688
1024	385
1025	317
1026	439
1027	430
1028	518
1029	956
1030	950
1031	30
1032	399
1033	574
1034	663
1035	450
1036	150
1037	709
1038	714
1039	376
1040	226
1041	173
1042	658
1043	846
1044	778
1045	127
1046	778
1047	813
1048	554
1049	839
1050	328
1051	463
1052	475
1053	375
1054	384
1055	98
1056	315
1057	763
1058	991
1059	725
1060	990
1061	988
1062	904
1063	770
1064	40
1065	770
1066	581
1067	800
1068	949
1069	978
1070	571
1071	136
1072	199
1073	131
1074	280
1075	718
1076	965
1077	317
1078	774
1079	300
1080	9
1081	512
1082	609
1083	136
1084	228
1085	188
1086	907
1087	89
1088	210
1089	812
1090	586
1091	186
1092	704
1093	468
1094	682
1095	860
1096	530
1097	195
1098	355
1099	9
1100	685
1101	285
1102	167
1103	677
1104	961
1105	584
1106	442
1107	516
1108	580
1109	439
1110	545
1111	195
1112	727
1113	572
1114	1
1115	672
1116	818
1117	236
1118	97
1119	365
1120	875
1121	319
1122	315
1123	689
1124	732
1125	127
1126	936
1127	220
1128	477
1129	713
1130	76
1131	210
1132	190
1133	385
1134	227
1135	300
1136	773
1137	220
1138	432
1139	780
1140	383
1141	917
1142	597
1143	671
1144	138
1145	685
1146	729
1147	209
1148	836
1149	292
1150	114
1151	532
1152	522
1153	159
1154	422
1155	408
1156	170
1157	815
1158	619
1159	154
1160	757
1161	568
1162	100
1163	835
1164	368
1165	314
1166	292
1167	984
1168	524
1169	918
1170	393
1171	172
1172	19
1173	431
1174	827
1175	109
1176	811
1177	363
1178	484
1179	9
1180	443
1181	464
1182	54
1183	933
1184	85
1185	820
1186	617
1187	339
1188	571
1189	579
1190	396
1191	829
1192	1
1193	213
1194	942
1195	928
1196	404
1197	558
1198	482
1199	388
1200	625
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (customer_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
355	171	859	field	truth	chair	\N
296	872	668	until	today	visit	\N
349	256	177	nation	response	couple	\N
273	979	230	focus	best	Mr	\N
145	936	380	support	population	practice	\N
206	591	349	treat	much	time	\N
144	25	508	senior	actually	seven	\N
234	883	960	thousand	plant	else	\N
126	952	93	finish	table	level	\N
386	408	503	little	rich	move	\N
292	511	809	few	least	act	\N
370	551	833	bit	report	about	\N
113	204	284	order	girl	woman	\N
385	624	86	across	pull	identify	\N
217	188	618	arm	state	than	\N
151	619	507	become	couple	floor	\N
117	507	371	remember	some	ball	\N
127	244	23	inside	strong	close	\N
264	49	413	character	share	serious	\N
273	582	400	family	especially	shake	\N
334	906	742	other	however	example	\N
221	186	814	difference	evening	see	\N
381	270	564	believe	east	throughout	\N
265	523	959	bit	institution	major	\N
365	990	72	worry	individual	development	\N
167	508	149	product	pattern	none	\N
381	236	615	beat	see	response	\N
369	128	725	service	actually	about	\N
339	938	411	his	push	building	\N
161	269	446	her	receive	five	\N
365	36	686	develop	before	story	\N
385	308	954	world	store	step	\N
316	755	50	once	analysis	decide	\N
301	662	956	example	food	lose	\N
254	370	499	check	near	western	\N
196	798	99	player	might	woman	\N
187	17	208	we	rule	employee	\N
298	834	359	quickly	way	quickly	\N
108	128	218	by	newspaper	seek	\N
136	255	239	leg	western	identify	\N
298	550	300	voice	fire	cup	\N
317	897	785	shake	opportunity	million	\N
150	460	339	religious	send	stop	\N
244	780	971	without	fish	color	\N
256	613	789	student	establish	rule	\N
116	443	676	play	door	ask	\N
199	405	148	guy	something	investment	\N
319	366	861	beat	development	series	\N
369	887	314	game	tree	what	\N
310	951	34	thousand	easy	early	\N
120	57	379	out	kind	rather	\N
188	873	953	major	discussion	product	\N
345	433	290	wrong	present	that	\N
353	675	419	chance	remain	left	292
140	929	685	onto	husband	agent	1120
103	49	379	father	high	these	683
323	322	783	particular	hand	herself	593
386	532	79	develop	million	end	2059
274	888	55	just	practice	good	1054
391	714	804	firm	writer	personal	127
335	248	160	between	story	new	288
331	529	750	miss	spend	else	624
105	452	573	action	face	customer	30
245	7	220	father	amount	small	1034
400	660	235	later	girl	would	1823
165	773	180	now	few	quickly	169
289	477	191	Republican	parent	open	1893
193	235	953	story	power	reflect	1599
165	42	720	power	organization	under	197
309	328	136	also	medical	kid	615
199	723	205	fish	series	call	1485
239	772	152	success	whose	lot	1845
127	699	977	director	drop	herself	1662
148	383	554	writer	party	purpose	869
186	255	734	large	candidate	personal	375
325	241	221	small	treat	majority	1223
366	740	617	despite	throughout	travel	42
269	533	278	past	life	garden	977
274	449	358	adult	or	sort	1922
223	471	761	public	movement	test	9
225	529	685	group	instead	economy	2031
336	214	926	technology	section	behind	188
322	870	626	note	as	risk	428
294	815	98	bring	determine	able	914
202	356	30	onto	listen	idea	471
392	42	177	quite	marriage	sit	636
244	484	806	detail	behind	bring	1035
219	259	677	suddenly	treatment	challenge	1333
139	22	611	cover	against	grow	1300
286	946	525	organization	kind	region	567
272	424	949	economy	couple	easy	1488
377	587	191	down	teach	ball	771
195	629	393	focus	standard	not	1791
227	359	97	bar	lose	whether	1082
311	1000	462	price	woman	million	923
297	701	62	human	page	deep	486
230	759	374	thing	woman	too	1192
373	449	197	want	movement	benefit	1049
353	881	867	organization	reason	entire	1316
204	496	56	alone	return	shake	2080
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (user_id, session_id, started_at, device) FROM stdin;
7	445	visit	role
740	702	season	force
183	47	give	green
699	641	clear	bill
116	643	car	hair
238	748	cell	claim
113	858	game	carry
309	102	outside	person
946	38	natural	especially
461	322	much	employee
967	224	guess	course
619	747	item	Mr
518	578	feeling	all
586	63	produce	strategy
66	685	try	part
995	975	PM	second
648	671	my	various
318	72	public	popular
415	630	ground	third
803	783	meet	amount
208	813	game	shake
77	899	would	make
909	377	main	condition
772	361	success	thing
898	778	during	up
467	40	but	throughout
329	443	behavior	experience
382	748	world	catch
315	281	treat	cold
993	979	thank	part
921	421	sit	thank
357	1	expert	blood
102	577	current	surface
21	430	chance	administration
537	314	difficult	old
977	863	do	just
637	447	throw	firm
361	792	character	his
754	709	find	seven
169	717	building	key
837	128	late	case
346	49	outside	structure
246	457	box	we
266	713	morning	positive
730	848	skill	president
774	872	general	sing
492	268	idea	cost
197	636	beat	image
910	571	such	attack
384	489	together	my
148	931	force	million
375	1	car	try
921	316	cell	manager
753	264	gas	future
314	62	try	me
784	748	would	price
385	541	beat	where
222	366	reality	chair
413	672	seven	gas
751	65	country	meet
815	640	share	financial
801	607	deal	degree
836	7	per	main
458	367	establish	remain
734	152	mean	employee
724	28	pass	very
729	889	pull	state
362	437	study	probably
690	792	likely	training
579	10	eat	other
11	421	heavy	agree
718	82	foot	involve
294	12	remember	against
390	843	big	when
424	838	exactly	authority
636	528	news	property
695	301	eight	information
2	169	each	fish
929	254	return	once
202	463	usually	across
215	649	put	glass
465	840	development	century
398	789	group	vote
132	516	already	another
899	157	rule	story
808	893	city	home
240	87	discuss	building
815	294	official	since
114	66	sound	space
613	103	maintain	range
447	326	option	consumer
701	1000	peace	husband
265	35	note	process
822	905	its	arm
215	571	tend	nation
408	444	state	positive
466	11	class	old
382	657	perform	matter
358	557	do	here
761	891	side	continue
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
97	can	actually	\N	\N	\N
5	raise	in	187	\N	\N
7	meet	cell	299	\N	\N
16	environment	anyone	316	\N	\N
17	development	business	259	\N	\N
41	owner	difficult	261	\N	\N
43	newspaper	accept	228	\N	\N
48	address	without	273	\N	\N
77	kid	second	299	\N	\N
37	language	fall	170	292	575
71	part	great	163	191	187
52	international	force	292	236	877
36	employee	better	\N	321	203
79	church	watch	351	133	286
19	model	red	250	259	195
49	peace	when	\N	360	872
66	social	husband	364	177	348
32	song	later	191	311	794
81	whose	book	111	380	256
3	tend	make	360	128	979
22	trial	boy	\N	206	800
75	set	world	305	295	770
80	dog	relationship	\N	107	668
34	than	today	213	186	886
35	type	north	256	110	790
59	science	smile	\N	311	880
40	development	law	\N	218	235
56	about	prevent	265	206	496
1	build	side	394	218	235
28	western	suddenly	260	128	979
84	writer	sell	\N	361	271
25	beyond	let	389	127	222
78	campaign	tend	167	243	793
65	television	lay	\N	350	754
21	organization	environment	123	234	159
8	street	consider	283	385	405
4	fast	cover	\N	317	809
39	three	involve	190	377	940
64	myself	return	356	392	397
24	child	responsibility	363	275	382
27	campaign	stuff	179	187	675
87	husband	that	\N	316	608
9	movie	eat	360	317	809
94	support	lead	\N	150	852
10	debate	develop	338	259	195
12	hold	family	174	122	174
63	easy	final	\N	257	146
85	ok	remain	396	152	924
23	decision	recently	\N	227	758
73	buy	science	\N	321	262
58	she	significant	293	351	490
42	team	force	\N	172	408
13	public	share	160	214	809
92	shoulder	view	\N	248	774
70	direction	system	\N	150	852
18	level	baby	\N	236	155
57	seem	piece	188	187	675
46	show	store	\N	242	40
15	president	for	201	118	573
68	could	television	\N	243	486
29	now	serious	123	272	478
86	must	news	154	206	800
98	film	it	201	\N	\N
96	benefit	activity	236	272	478
95	member	way	299	172	408
93	carry	each	352	122	174
91	fish	smile	298	120	535
89	safe	traditional	204	382	664
61	plant	reach	150	256	878
74	teach	produce	265	222	139
62	eye	receive	314	202	571
38	answer	so	\N	392	397
6	southern	top	204	236	155
14	red	life	226	292	575
31	goal	health	\N	263	86
2	ground	my	116	234	159
83	fight	forget	338	126	377
100	fine	beyond	360	389	39
67	enjoy	painting	374	349	266
90	five	within	184	214	809
99	amount	easy	\N	120	535
60	professor	do	348	190	399
54	tonight	listen	224	122	174
55	risk	really	270	185	745
30	table	mother	391	398	231
76	style	stock	\N	311	880
47	gas	message	313	112	718
44	table	gas	249	107	668
51	close	be	312	379	126
53	recently	describe	371	330	599
11	position	country	\N	272	478
69	walk	feel	377	330	599
88	news	watch	\N	389	39
82	born	recently	203	133	672
45	raise	capital	293	349	266
26	leg	pretty	298	122	174
20	two	beyond	\N	380	256
72	goal	herself	128	248	774
50	region	get	396	185	745
33	born	argue	\N	107	668
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
53	418	year	various	live	process	\N
71	664	its	perform	item	ability	\N
11	424	kitchen	could	voice	must	\N
84	807	kind	manage	increase	scene	\N
64	183	price	down	audience	answer	\N
12	202	boy	already	maintain	others	40
2	192	it	option	these	guy	92
42	67	table	consumer	state	individual	47
67	944	go	happen	item	see	2
18	658	store	ability	feel	create	94
100	407	become	evidence	rich	special	74
59	83	training	build	black	cause	4
2	590	within	eat	science	west	25
68	291	I	long	against	mind	84
77	47	happen	truth	note	country	79
52	162	soldier	different	employee	car	94
78	853	many	suffer	phone	this	4
40	746	past	family	score	wrong	37
51	769	inside	degree	sometimes	remain	41
35	685	one	big	pass	plan	4
19	173	indicate	second	front	sea	51
21	410	TV	before	value	training	13
53	426	drop	community	member	involve	94
54	445	another	position	accept	involve	67
84	573	site	recent	region	item	82
100	317	begin	voice	art	away	85
72	342	almost	they	point	class	45
96	71	perhaps	leave	still	road	10
96	302	same	and	develop	series	80
14	42	do	cause	school	pressure	28
42	540	assume	prepare	challenge	suddenly	97
44	204	prepare	but	stand	structure	14
8	929	poor	commercial	others	respond	22
91	971	rather	laugh	education	local	56
50	682	article	within	war	wear	82
16	927	religious	day	better	blood	92
32	246	fill	book	understand	bit	33
87	925	hit	girl	rise	billion	62
48	120	visit	western	upon	control	97
37	388	candidate	economy	professor	thousand	85
32	170	event	somebody	newspaper	remember	54
15	93	outside	drive	especially	again	23
8	998	close	usually	school	black	32
66	796	public	head	west	total	73
92	47	provide	available	issue	hit	97
3	5	factor	throw	whose	write	53
86	599	itself	major	modern	record	84
40	30	return	brother	group	hold	86
88	886	provide	field	feel	song	68
75	839	collection	memory	analysis	southern	38
11	124	character	build	government	much	30
92	272	involve	source	tonight	detail	31
69	807	task	show	address	stop	26
21	578	good	ten	other	into	52
62	282	yourself	entire	hour	lead	28
75	476	can	material	should	financial	73
96	179	society	street	detail	only	42
94	198	from	adult	meet	product	84
80	639	wall	lay	program	per	94
38	137	party	perhaps	result	military	78
61	497	picture	win	address	discover	60
57	243	money	office	town	design	85
100	587	big	picture	goal	moment	87
16	479	here	their	issue	white	61
67	61	difference	at	only	wonder	86
6	534	summer	speech	sit	poor	82
49	658	young	onto	move	join	51
25	75	PM	ball	improve	account	50
27	234	will	the	expert	glass	43
72	513	book	with	stock	information	31
51	819	allow	music	sound	magazine	77
82	931	ever	ok	seven	build	19
46	550	son	purpose	like	thing	14
64	50	poor	arrive	suggest	thing	94
11	51	several	major	evidence	improve	26
61	239	soon	water	rate	language	40
21	946	without	she	lay	western	2
79	170	floor	rock	whose	gas	100
47	984	newspaper	single	phone	education	96
54	214	four	similar	assume	across	61
43	78	success	employee	air	in	36
35	562	song	describe	probably	operation	17
85	368	feel	bit	never	either	62
75	350	artist	artist	piece	south	40
93	416	strong	another	tonight	example	32
43	473	draw	follow	attorney	realize	16
73	231	determine	four	similar	fast	5
88	794	evening	tell	number	different	27
27	24	billion	meeting	lawyer	minute	41
66	52	result	work	group	outside	77
46	279	happy	degree	pick	much	65
33	610	focus	deep	nation	start	77
43	382	hospital	particularly	different	little	18
57	984	report	two	themselves	leader	3
60	769	around	ready	left	effect	60
17	293	bring	face	past	own	29
71	535	set	nor	front	final	95
65	19	key	keep	clearly	worker	95
83	891	science	bring	manage	something	85
55	342	fast	dream	focus	talk	19
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	game	finish	yard	high	method
2	financial	dream	political	international	future
3	sea	read	recent	suddenly	need
4	painting	believe	social	almost	difficult
5	air	former	and	government	weight
6	car	suffer	cell	recent	every
7	important	hotel	turn	your	lawyer
8	how	thing	yes	our	south
9	look	newspaper	medical	two	street
10	without	also	member	friend	lose
11	lay	rate	agree	difference	away
12	nature	nation	born	magazine	move
13	light	and	thought	simply	save
14	street	offer	page	after	cold
15	purpose	chair	remember	alone	close
16	daughter	reveal	at	religious	policy
17	remain	executive	pass	save	college
18	experience	social	moment	Democrat	amount
19	my	data	among	six	soon
20	size	station	so	could	early
21	analysis	western	should	prove	sing
22	memory	movie	stand	sea	more
23	yeah	price	describe	yeah	receive
24	same	wrong	garden	writer	get
25	question	sell	call	determine	already
26	another	kid	then	huge	instead
27	recently	three	artist	approach	question
28	man	my	everything	training	far
29	beat	avoid	dark	you	player
30	painting	chair	among	control	language
31	matter	memory	scene	raise	brother
32	set	friend	store	action	and
33	itself	customer	provide	suddenly	product
34	apply	relationship	responsibility	finally	wife
35	treatment	perhaps	tonight	end	live
36	any	he	what	tree	place
37	even	think	majority	travel	she
38	watch	film	focus	total	man
39	low	treat	instead	arm	time
40	right	surface	sit	sure	business
41	can	building	kid	few	weight
42	student	budget	walk	idea	reach
43	hospital	mention	movie	leave	side
44	visit	real	model	pattern	relate
45	if	firm	stage	head	mother
46	owner	available	southern	continue	rather
47	easy	maintain	compare	without	low
48	employee	community	bar	real	audience
49	should	defense	no	professor	try
50	argue	pattern	seven	that	should
51	board	region	free	reality	force
52	everybody	analysis	task	only	meeting
53	what	which	I	argue	letter
54	believe	role	interview	shoulder	if
55	investment	impact	maybe	rock	you
56	floor	talk	offer	do	training
57	thus	man	study	direction	energy
58	yet	interesting	forward	whose	perhaps
59	region	often	expert	recently	support
60	thing	throughout	sound	than	generation
61	where	television	responsibility	speech	far
62	seek	until	decide	amount	especially
63	produce	about	where	painting	occur
64	physical	those	place	when	way
65	special	day	lead	job	most
66	thought	kind	guy	partner	strong
67	look	growth	just	continue	federal
68	player	kid	free	own	actually
69	name	personal	with	style	most
70	note	ready	large	less	assume
71	away	phone	ahead	themselves	skin
72	tree	and	authority	recognize	leg
73	region	enjoy	pattern	book	little
74	likely	point	finish	company	can
75	board	particularly	decade	charge	particular
76	specific	there	easy	issue	none
77	news	industry	safe	ten	human
78	six	doctor	per	measure	top
79	woman	position	have	plant	tax
80	control	foreign	project	someone	note
81	hour	no	bill	research	little
82	up	this	race	measure	keep
83	smile	family	present	exactly	store
84	late	gun	agency	bill	story
85	probably	know	gas	way	money
86	small	around	line	others	little
87	leg	design	throughout	east	environment
88	item	of	rate	worker	save
89	size	size	stay	maintain	blue
90	us	administration	attention	view	democratic
91	grow	consider	together	war	arrive
92	animal	task	responsibility	son	us
93	study	knowledge	hospital	save	happy
94	weight	discussion	region	pattern	reality
95	eat	official	opportunity	somebody	window
96	evening	former	score	remember	hold
97	happen	perhaps	from	prepare	enough
98	by	sense	wife	seat	laugh
99	affect	be	indeed	whose	movement
100	paper	upon	center	against	list
\.


--
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (promotion_id, coupon_code, max_uses, per_user_limit, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (warehouse_id, warehouse_name, region) FROM stdin;
1	everyone	effect
2	list	again
3	do	change
4	own	true
5	movement	rather
6	behind	strategy
7	too	hospital
8	body	natural
9	finish	fear
10	operation	trial
11	my	rule
12	continue	up
13	various	billion
14	trade	more
15	cell	identify
16	PM	apply
17	toward	special
18	five	suddenly
19	animal	different
20	west	court
21	operation	manage
22	appear	oil
23	entire	want
24	fly	response
25	get	always
26	positive	PM
27	church	best
28	low	environment
29	agency	condition
30	design	floor
31	arm	dog
32	program	over
33	feeling	lawyer
34	prove	well
35	degree	well
36	of	degree
37	somebody	free
38	town	political
39	yard	economic
40	again	even
41	carry	executive
42	hand	away
43	loss	continue
44	wait	out
45	ago	than
46	together	better
47	spend	agent
48	compare	smile
49	everybody	hand
50	individual	suffer
51	glass	news
52	agree	step
53	computer	couple
54	three	book
55	I	police
56	measure	hot
57	have	after
58	school	day
59	usually	left
60	there	do
61	professional	always
62	during	pick
63	necessary	eat
64	need	mouth
65	bad	social
66	feeling	white
67	generation	probably
68	door	the
69	public	war
70	scene	night
71	close	sell
72	resource	main
73	side	likely
74	final	some
75	law	effect
76	worry	organization
77	rest	condition
78	TV	nor
79	person	already
80	executive	leg
81	own	yourself
82	letter	catch
83	campaign	table
84	adult	remain
85	pull	job
86	play	modern
87	too	I
88	short	enough
89	safe	explain
90	require	however
91	various	discussion
92	care	collection
93	push	resource
94	your	exactly
95	beyond	possible
96	teacher	life
97	attack	act
98	seek	someone
99	value	approach
100	hand	city
\.


--
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (warehouse_id, bin_id, code) FROM stdin;
58	789	end
40	943	fund
72	244	size
65	777	career
3	398	trade
59	180	campaign
57	823	fill
94	989	today
69	35	writer
2	134	debate
39	489	property
79	496	business
81	661	economic
83	790	already
71	727	run
5	766	treatment
58	253	seven
26	74	inside
2	441	pattern
19	5	figure
8	549	let
35	331	international
9	227	sense
1	556	network
18	99	along
45	961	him
82	205	sometimes
36	493	story
23	845	support
96	679	discussion
60	639	person
19	991	term
69	325	purpose
21	995	this
51	961	position
76	214	customer
39	611	score
87	677	world
33	469	reduce
57	140	these
24	180	represent
21	511	moment
53	765	collection
42	173	however
80	791	community
18	272	federal
70	665	author
93	676	several
83	24	board
52	818	democratic
69	279	fall
84	954	south
23	557	understand
46	750	focus
96	112	war
69	257	over
6	180	eight
82	709	story
55	25	specific
9	661	his
3	591	big
70	9	matter
60	552	election
56	375	fund
78	789	prepare
19	922	over
23	57	yeah
2	378	when
93	602	late
84	831	area
91	85	strategy
8	126	plan
19	159	institution
3	262	young
29	586	fall
95	580	your
25	693	teach
10	353	start
53	353	why
95	506	throughout
50	521	few
25	276	down
93	565	himself
25	742	able
53	812	direction
31	390	with
28	103	begin
52	694	include
31	325	crime
70	951	quite
48	826	all
5	213	watch
21	329	evening
39	635	physical
59	103	fact
2	192	building
97	732	industry
70	377	address
26	163	word
36	796	peace
\.


--
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (supplier_id, supplier_name) FROM stdin;
1	player
2	night
3	thousand
4	environmental
5	election
6	make
7	year
8	that
9	popular
10	game
11	morning
12	cost
13	clear
14	hope
15	carry
16	special
17	behavior
18	total
19	sure
20	win
21	low
22	hundred
23	enough
24	right
25	be
26	plant
27	stock
28	camera
29	ready
30	production
31	finish
32	box
33	add
34	language
35	finish
36	consumer
37	ago
38	total
39	American
40	to
41	deep
42	purpose
43	huge
44	table
45	character
46	morning
47	between
48	inside
49	under
50	tough
51	record
52	student
53	get
54	until
55	explain
56	hand
57	figure
58	treat
59	near
60	final
61	field
62	design
63	direction
64	tax
65	stand
66	exist
67	even
68	season
69	push
70	maintain
71	name
72	television
73	personal
74	dream
75	though
76	law
77	trouble
78	finally
79	find
80	need
81	week
82	hope
83	land
84	happen
85	step
86	reach
87	price
88	several
89	his
90	add
91	happen
92	parent
93	mother
94	country
95	money
96	on
97	room
98	assume
99	a
100	least
\.


--
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	robert40@example.net	soon
25	386	allenmichael@example.com	want
72	443	karen25@example.com	world
40	212	david58@example.org	TV
9	290	michael74@example.com	effort
64	515	davidpatterson@example.org	well
60	233	dustinadams@example.com	fly
80	742	bsmith@example.org	suffer
7	892	mgoodwin@example.org	garden
34	333	kenneth04@example.com	when
51	589	dianemcclain@example.net	couple
95	865	gcook@example.org	anything
20	946	jillian71@example.org	off
84	346	scott11@example.org	also
43	463	cheyenne59@example.org	school
22	535	jonathan50@example.com	minute
13	825	ortiztimothy@example.org	western
59	130	jasmine21@example.com	young
20	962	diazcameron@example.org	live
1	393	randydavis@example.net	fear
22	135	rnichols@example.net	big
14	570	glennanthony@example.net	cover
82	212	janetdavis@example.com	woman
81	882	shanebenitez@example.org	arrive
15	927	vclark@example.net	other
8	797	amyclayton@example.org	list
74	778	dhopkins@example.org	tough
63	229	fdickerson@example.org	key
70	408	dunncharles@example.com	beautiful
92	357	lindsaymoreno@example.com	know
38	93	kimwilson@example.com	seven
29	378	jason28@example.org	husband
96	25	fischerkayla@example.org	up
13	270	juliafinley@example.org	rich
36	297	joseph03@example.net	ten
71	318	woodsdustin@example.org	effect
24	442	fcampbell@example.org	class
89	502	martinpatrick@example.org	see
42	883	patriciahardy@example.org	either
49	288	youngjames@example.net	add
71	790	cgarner@example.com	decade
52	928	ericgeorge@example.net	difference
27	428	josephmartin@example.com	cause
45	73	icox@example.com	agreement
90	547	greenthomas@example.org	spend
58	312	lisa81@example.com	son
40	406	gharper@example.org	computer
45	725	hblanchard@example.net	tree
85	30	bradychristian@example.org	general
37	133	denise58@example.net	appear
15	766	banderson@example.com	full
42	243	pricebrian@example.net	field
86	910	smithcynthia@example.org	almost
32	529	kbailey@example.com	ok
76	704	fholmes@example.com	bring
44	144	ashley41@example.net	base
77	999	clinejacob@example.com	significant
6	968	mkey@example.com	spend
45	172	kevin84@example.com	floor
75	258	meredithruiz@example.org	perhaps
68	952	bob57@example.org	month
83	880	taylorroger@example.net	teacher
52	730	reynoldsrebecca@example.org	toward
8	743	ericapineda@example.net	quickly
80	232	ulevy@example.org	return
39	909	meagan32@example.com	food
44	996	hhernandez@example.net	stuff
44	527	swhite@example.net	on
96	617	casekaren@example.net	report
95	869	lisa24@example.com	town
6	3	christinegill@example.net	exactly
53	952	wevans@example.net	report
37	838	hweaver@example.net	southern
1	102	schmidtmorgan@example.net	upon
18	599	ehobbs@example.net	country
37	112	uedwards@example.com	detail
6	280	brightrandy@example.net	how
7	884	kevintodd@example.net	camera
78	489	pattersonbruce@example.net	hit
64	54	martinezlauren@example.org	herself
27	878	ashleyward@example.com	threat
25	756	angela71@example.net	responsibility
7	865	zbaker@example.net	something
45	288	pbutler@example.net	space
48	526	collinscarol@example.net	senior
29	329	morrowguy@example.com	interesting
42	505	natalie97@example.org	camera
5	606	emilymurphy@example.org	recently
81	820	stephen70@example.net	the
18	132	barberbenjamin@example.com	large
73	194	justin03@example.net	federal
84	241	francoeric@example.com	maintain
92	56	jhenderson@example.com	decision
12	36	shannonbass@example.net	heavy
7	196	natasha01@example.com	hear
97	368	hollandcarol@example.net	in
53	803	muellerveronica@example.net	data
93	162	acarter@example.net	during
25	831	allisonlee@example.com	none
100	214	brianluna@example.org	entire
\.


--
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (computer_id, cpu, ram_gb) FROM stdin;
401	southern	956
402	car	102
403	nor	44
404	north	521
405	turn	582
406	single	486
407	recognize	576
408	power	796
409	size	901
410	open	446
411	bar	836
412	however	625
413	customer	117
414	run	350
415	behavior	919
416	model	734
417	go	994
418	call	483
419	tell	452
420	eat	273
421	never	425
422	human	188
423	air	160
424	television	261
425	idea	713
426	certain	930
427	risk	245
428	structure	385
429	not	242
430	have	517
431	official	408
432	admit	92
433	for	531
434	beat	880
435	firm	610
436	where	548
437	marriage	172
438	task	206
439	all	156
440	woman	739
441	assume	951
442	drive	394
443	according	977
444	season	73
445	indicate	440
446	relate	472
447	could	958
448	section	765
449	budget	612
450	reach	248
451	question	678
452	report	305
453	might	299
454	across	723
455	agree	382
456	method	849
457	call	946
458	very	446
459	own	520
460	even	970
461	during	734
462	believe	124
463	heart	494
464	while	654
465	ball	421
466	assume	279
467	body	573
468	yeah	220
469	performance	250
470	talk	433
471	term	515
472	hot	370
473	ground	928
474	purpose	152
475	avoid	45
476	modern	410
477	try	275
478	site	971
479	citizen	312
480	each	604
481	space	622
482	likely	401
483	factor	588
484	organization	956
485	always	380
486	now	553
487	discuss	165
488	standard	918
489	reduce	325
490	character	873
491	detail	65
492	face	993
493	dream	726
494	despite	86
495	check	216
496	check	756
497	inside	557
498	security	304
499	size	834
500	administration	324
501	feeling	603
502	born	997
503	scene	134
504	watch	273
505	book	986
506	past	948
507	against	34
508	guess	236
509	south	969
510	society	249
511	nature	968
512	really	701
513	trouble	486
514	foreign	108
515	political	725
516	social	431
517	control	863
518	office	697
519	get	483
520	sell	784
521	decide	318
522	say	469
523	ready	455
524	to	641
525	read	658
526	police	770
527	serious	16
528	agree	734
529	officer	800
530	unit	349
531	collection	785
532	particular	301
533	play	888
534	Congress	961
535	and	230
536	easy	637
537	house	730
538	follow	175
539	either	568
540	training	962
541	poor	562
542	song	319
543	similar	514
544	certainly	382
545	task	528
546	campaign	945
547	couple	689
548	light	57
549	nature	804
550	thus	205
551	government	240
552	second	994
553	value	335
554	offer	656
555	record	181
556	continue	814
557	ground	853
558	car	294
559	bank	206
560	where	59
561	would	976
562	debate	293
563	save	255
564	chair	200
565	baby	896
566	hold	696
567	concern	851
568	range	665
569	risk	284
570	camera	852
571	threat	324
572	data	131
573	law	562
574	wish	661
575	teach	833
576	beat	323
577	pattern	80
578	will	461
579	natural	324
580	chance	36
581	building	365
582	play	872
583	kitchen	670
584	beautiful	278
585	decade	253
586	mention	413
587	system	965
588	practice	100
589	might	912
590	job	319
591	government	893
592	machine	525
593	discuss	76
594	nature	792
595	rule	189
596	race	244
597	I	452
598	state	589
599	whose	324
600	collection	54
601	happen	500
602	push	326
603	site	426
604	until	185
605	our	838
606	bad	974
607	military	119
608	seek	366
609	produce	289
610	focus	361
611	road	461
612	must	748
613	example	532
614	step	533
615	real	14
616	class	608
617	hundred	362
618	space	91
619	more	138
620	house	346
621	recently	9
622	least	671
623	school	323
624	necessary	825
625	parent	568
626	low	533
627	drive	690
628	skin	436
629	kitchen	909
630	huge	856
631	himself	552
632	such	460
633	he	1000
634	arrive	358
635	factor	899
636	agreement	951
637	alone	344
638	put	480
639	property	99
640	challenge	910
641	skill	150
642	including	806
643	president	716
644	though	574
645	sometimes	499
646	election	596
647	her	103
648	high	552
649	miss	694
650	dream	607
651	thus	550
652	need	609
653	chance	635
654	lot	369
655	which	806
656	something	407
657	involve	399
658	experience	803
659	available	68
660	deep	893
661	able	828
662	experience	349
663	investment	961
664	yard	992
665	who	138
666	fast	141
667	crime	710
668	certain	546
669	realize	142
670	available	487
671	fall	247
672	adult	714
673	assume	817
674	agree	410
675	parent	288
676	born	769
677	expert	67
678	simply	404
679	read	177
680	mind	441
681	firm	242
682	value	351
683	future	706
684	other	121
685	anyone	974
686	matter	296
687	form	769
688	hotel	618
689	down	617
690	player	853
691	than	607
692	wonder	364
693	number	670
694	myself	988
695	present	440
696	city	610
697	without	225
698	else	547
699	man	303
700	today	991
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
6	recently	career	\N
11	cell	majority	\N
12	support	life	\N
21	a	executive	\N
27	through	wind	\N
32	paper	again	\N
36	season	feeling	\N
46	building	list	\N
48	one	than	\N
51	role	store	\N
63	owner	same	\N
72	option	concern	\N
87	but	partner	\N
30	station	own	25
97	character	note	38
24	likely	military	93
34	Congress	bar	69
4	time	piece	25
73	but	inside	94
8	believe	paper	57
93	set	care	6
86	some	past	85
17	option	card	38
90	approach	me	85
18	side	treatment	77
66	enjoy	information	21
49	include	minute	85
16	must	anything	2
81	throughout	friend	3
20	hear	environment	77
69	just	eye	57
5	like	buy	10
85	character	almost	24
76	tree	see	18
95	finish	total	66
79	moment	yourself	73
67	condition	be	72
50	business	spring	44
84	happen	life	77
45	station	until	14
96	usually	car	96
60	heavy	you	57
94	debate	weight	93
65	answer	hold	24
56	late	month	68
35	person	detail	62
39	home	out	90
82	specific	our	74
2	can	phone	53
15	toward	key	84
89	any	ever	35
42	brother	sit	16
61	detail	receive	73
74	certainly	hour	33
7	window	finish	24
64	manage	recently	43
10	drop	reflect	59
80	son	analysis	4
33	particularly	sure	24
25	others	public	13
43	source	school	21
83	room	dog	61
75	budget	movement	91
13	think	meeting	66
59	far	property	38
68	born	answer	31
9	seem	learn	44
99	poor	big	64
55	into	language	12
1	you	create	90
40	customer	dark	29
14	use	former	7
92	machine	truth	58
26	ability	mouth	15
77	despite	someone	34
52	even	although	35
57	state	hit	49
78	season	meet	33
54	painting	customer	83
22	arrive	recognize	49
53	early	letter	16
19	mission	effect	92
62	before	economic	94
98	type	music	30
70	why	early	7
71	form	walk	21
47	require	find	31
100	authority	husband	35
29	per	friend	15
3	able	early	99
23	purpose	collection	98
41	market	strong	97
91	church	reach	63
37	animal	show	27
88	anyone	whole	97
58	center	prevent	81
44	natural	growth	43
38	along	current	30
28	true	teacher	68
31	feel	effect	3
\.


--
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	social	among
2	part	loss
3	second	certain
4	thank	who
5	yard	today
6	protect	window
7	matter	scene
8	success	continue
9	key	heavy
10	security	occur
11	drop	medical
12	raise	pick
13	suggest	also
14	hold	grow
15	store	account
16	also	difference
17	husband	despite
18	us	wonder
19	throw	prepare
20	our	natural
21	garden	attorney
22	right	song
23	policy	fear
24	experience	present
25	off	finish
26	mother	case
27	letter	why
28	game	friend
29	again	night
30	painting	wall
31	ready	get
32	sea	interview
33	great	eight
34	grow	fact
35	bar	state
36	official	cell
37	herself	partner
38	reveal	push
39	middle	audience
40	alone	account
41	drug	her
42	serious	write
43	wear	company
44	relationship	have
45	and	of
46	which	ask
47	lose	black
48	politics	feeling
49	size	security
50	still	successful
51	day	brother
52	shake	society
53	price	this
54	whole	computer
55	contain	score
56	catch	record
57	buy	only
58	matter	everyone
59	production	itself
60	use	peace
61	speak	evidence
62	baby	happy
63	use	owner
64	always	score
65	relationship	true
66	little	least
67	sit	discover
68	vote	wish
69	somebody	different
70	accept	mouth
71	data	find
72	speech	card
73	TV	reason
74	onto	central
75	everyone	any
76	early	white
77	indicate	today
78	dream	use
79	face	little
80	no	plan
81	he	college
82	many	the
83	media	goal
84	after	box
85	its	enter
86	evidence	sing
87	more	win
88	hospital	million
89	prepare	cup
90	least	our
91	big	could
92	Republican	fish
93	until	bag
94	too	standard
95	on	team
96	really	PM
97	discover	customer
98	protect	education
99	physical	skill
100	environment	mention
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

COPY public.relation_56 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_57; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_57 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_58; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_58 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_59; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_59 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (desktop_id, form_factor) FROM stdin;
501	everything
502	so
503	perform
504	reason
505	sometimes
506	nation
507	may
508	amount
509	drop
510	material
511	story
512	start
513	senior
514	change
515	generation
516	read
517	read
518	upon
519	positive
520	pattern
521	little
522	example
523	record
524	focus
525	agreement
526	worker
527	reflect
528	sense
529	thousand
530	development
531	popular
532	coach
533	major
534	American
535	true
536	someone
537	compare
538	happen
539	charge
540	key
541	hospital
542	decision
543	sing
544	imagine
545	laugh
546	onto
547	short
548	throw
549	together
550	into
551	seek
552	say
553	result
554	explain
555	establish
556	say
557	pattern
558	other
559	true
560	or
561	factor
562	pay
563	expert
564	father
565	people
566	the
567	buy
568	watch
569	account
570	state
571	music
572	sign
573	half
574	want
575	pull
576	want
577	be
578	might
579	hold
580	area
581	bag
582	practice
583	professor
584	life
585	plant
586	find
587	become
588	break
589	couple
590	nearly
591	total
592	let
593	interesting
594	road
595	interesting
596	level
597	statement
598	concern
599	report
600	standard
\.


--
-- Data for Name: relation_60; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_60 (purchaseorder_id, product_id) FROM stdin;
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
801	after	\N
802	sit	\N
803	talk	\N
804	of	\N
805	factor	\N
808	energy	\N
809	fire	\N
812	those	\N
813	present	\N
815	guy	\N
819	she	\N
820	wind	\N
823	specific	\N
825	stay	\N
834	cold	\N
835	street	\N
836	full	\N
837	accept	\N
838	name	\N
839	music	\N
840	spring	\N
841	boy	\N
843	fill	\N
844	meet	\N
845	be	\N
848	avoid	\N
851	box	\N
852	walk	\N
857	case	\N
858	vote	\N
859	moment	\N
860	them	\N
861	woman	\N
862	begin	\N
867	play	\N
868	maintain	\N
871	yeah	\N
874	rest	\N
875	understand	\N
876	company	\N
878	worry	\N
879	garden	\N
882	offer	\N
883	her	\N
885	same	\N
886	home	\N
889	small	\N
890	blood	\N
893	course	\N
894	son	\N
896	this	\N
898	who	\N
806	room	1063
807	assume	1018
810	ability	1001
811	game	1034
814	little	1060
816	pay	1090
817	fill	1019
818	tax	1022
821	Republican	1081
822	program	1052
824	establish	1026
826	play	1071
827	want	1032
828	stock	1082
829	least	1018
830	even	1045
831	choice	1044
832	ok	1091
833	wind	1037
842	fly	1064
846	knowledge	1036
847	build	1091
849	continue	1063
850	price	1066
853	fine	1009
854	bit	1078
855	easy	1081
856	do	1098
863	before	1018
864	again	1041
865	order	1043
866	discussion	1038
869	information	1050
870	morning	1014
872	never	1056
873	without	1037
877	human	1064
880	raise	1046
881	lose	1093
884	report	1078
887	bring	1034
888	must	1100
891	reveal	1071
892	day	1011
895	serious	1066
897	where	1075
899	may	1070
900	human	1044
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

COPY public.temp_category_products (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, category_products_category_id) FROM stdin;
1430	\N	\N	\N	\N	\N	\N	4
1395	\N	\N	\N	\N	\N	\N	58
1340	\N	\N	\N	\N	\N	\N	39
605	\N	\N	\N	\N	\N	\N	55
1926	\N	\N	\N	\N	\N	\N	53
1509	\N	\N	\N	\N	\N	\N	73
1482	\N	\N	\N	\N	\N	\N	54
932	\N	\N	\N	\N	\N	\N	98
1801	\N	\N	\N	\N	\N	\N	56
946	\N	\N	\N	\N	\N	\N	50
788	\N	\N	\N	\N	\N	\N	23
2054	\N	\N	\N	\N	\N	\N	95
1677	\N	\N	\N	\N	\N	\N	69
146	\N	\N	\N	\N	\N	\N	79
87	\N	\N	\N	\N	\N	\N	49
811	\N	\N	\N	\N	\N	\N	25
349	\N	\N	\N	\N	\N	\N	25
1510	\N	\N	\N	\N	\N	\N	10
1838	\N	\N	\N	\N	\N	\N	83
111	\N	\N	\N	\N	\N	\N	60
1498	\N	\N	\N	\N	\N	\N	86
209	\N	\N	\N	\N	\N	\N	87
1750	\N	\N	\N	\N	\N	\N	68
487	\N	\N	\N	\N	\N	\N	74
272	\N	\N	\N	\N	\N	\N	42
432	\N	\N	\N	\N	\N	\N	30
292	\N	\N	\N	\N	\N	\N	94
870	\N	\N	\N	\N	\N	\N	92
1537	\N	\N	\N	\N	\N	\N	98
1147	\N	\N	\N	\N	\N	\N	50
1110	\N	\N	\N	\N	\N	\N	97
1504	\N	\N	\N	\N	\N	\N	10
180	\N	\N	\N	\N	\N	\N	37
1002	\N	\N	\N	\N	\N	\N	14
1106	\N	\N	\N	\N	\N	\N	16
1149	\N	\N	\N	\N	\N	\N	50
1883	\N	\N	\N	\N	\N	\N	3
154	\N	\N	\N	\N	\N	\N	27
760	\N	\N	\N	\N	\N	\N	79
385	\N	\N	\N	\N	\N	\N	52
1038	\N	\N	\N	\N	\N	\N	72
297	\N	\N	\N	\N	\N	\N	59
1434	\N	\N	\N	\N	\N	\N	51
1613	\N	\N	\N	\N	\N	\N	33
1117	\N	\N	\N	\N	\N	\N	11
1751	\N	\N	\N	\N	\N	\N	31
283	\N	\N	\N	\N	\N	\N	51
643	\N	\N	\N	\N	\N	\N	13
1475	\N	\N	\N	\N	\N	\N	66
947	\N	\N	\N	\N	\N	\N	37
2080	\N	\N	\N	\N	\N	\N	58
1753	\N	\N	\N	\N	\N	\N	85
1804	\N	\N	\N	\N	\N	\N	37
15	\N	\N	\N	\N	\N	\N	33
78	\N	\N	\N	\N	\N	\N	56
1668	\N	\N	\N	\N	\N	\N	68
449	\N	\N	\N	\N	\N	\N	60
1105	\N	\N	\N	\N	\N	\N	31
1492	\N	\N	\N	\N	\N	\N	45
2056	\N	\N	\N	\N	\N	\N	42
375	\N	\N	\N	\N	\N	\N	30
896	\N	\N	\N	\N	\N	\N	45
424	\N	\N	\N	\N	\N	\N	85
512	\N	\N	\N	\N	\N	\N	3
1347	\N	\N	\N	\N	\N	\N	33
447	\N	\N	\N	\N	\N	\N	82
1066	\N	\N	\N	\N	\N	\N	65
1752	\N	\N	\N	\N	\N	\N	16
2084	\N	\N	\N	\N	\N	\N	97
1217	\N	\N	\N	\N	\N	\N	62
1735	\N	\N	\N	\N	\N	\N	98
232	\N	\N	\N	\N	\N	\N	86
2095	\N	\N	\N	\N	\N	\N	42
832	\N	\N	\N	\N	\N	\N	39
408	\N	\N	\N	\N	\N	\N	7
24	\N	\N	\N	\N	\N	\N	5
47	\N	\N	\N	\N	\N	\N	35
1231	\N	\N	\N	\N	\N	\N	70
548	\N	\N	\N	\N	\N	\N	51
1439	\N	\N	\N	\N	\N	\N	52
1488	\N	\N	\N	\N	\N	\N	23
1293	\N	\N	\N	\N	\N	\N	74
1010	\N	\N	\N	\N	\N	\N	11
348	\N	\N	\N	\N	\N	\N	43
822	\N	\N	\N	\N	\N	\N	34
1045	\N	\N	\N	\N	\N	\N	1
371	\N	\N	\N	\N	\N	\N	41
1795	\N	\N	\N	\N	\N	\N	39
1718	\N	\N	\N	\N	\N	\N	97
799	\N	\N	\N	\N	\N	\N	30
742	\N	\N	\N	\N	\N	\N	66
1416	\N	\N	\N	\N	\N	\N	14
145	\N	\N	\N	\N	\N	\N	50
115	\N	\N	\N	\N	\N	\N	58
757	\N	\N	\N	\N	\N	\N	86
600	\N	\N	\N	\N	\N	\N	65
1212	\N	\N	\N	\N	\N	\N	48
389	\N	\N	\N	\N	\N	\N	43
436	\N	\N	\N	\N	\N	\N	35
754	\N	\N	\N	\N	\N	\N	62
523	\N	\N	\N	\N	\N	\N	28
1545	\N	\N	\N	\N	\N	\N	65
1714	\N	\N	\N	\N	\N	\N	83
583	\N	\N	\N	\N	\N	\N	46
670	\N	\N	\N	\N	\N	\N	7
1335	\N	\N	\N	\N	\N	\N	52
1666	\N	\N	\N	\N	\N	\N	53
382	\N	\N	\N	\N	\N	\N	70
1113	\N	\N	\N	\N	\N	\N	85
789	\N	\N	\N	\N	\N	\N	41
1281	\N	\N	\N	\N	\N	\N	61
1903	\N	\N	\N	\N	\N	\N	4
2012	\N	\N	\N	\N	\N	\N	16
613	\N	\N	\N	\N	\N	\N	43
1131	\N	\N	\N	\N	\N	\N	78
1374	\N	\N	\N	\N	\N	\N	58
161	\N	\N	\N	\N	\N	\N	59
1450	\N	\N	\N	\N	\N	\N	91
2068	\N	\N	\N	\N	\N	\N	96
690	\N	\N	\N	\N	\N	\N	81
1151	\N	\N	\N	\N	\N	\N	68
772	\N	\N	\N	\N	\N	\N	14
1491	\N	\N	\N	\N	\N	\N	34
7	\N	\N	\N	\N	\N	\N	18
1184	\N	\N	\N	\N	\N	\N	28
1936	\N	\N	\N	\N	\N	\N	1
39	\N	\N	\N	\N	\N	\N	88
1845	\N	\N	\N	\N	\N	\N	86
665	\N	\N	\N	\N	\N	\N	88
1268	\N	\N	\N	\N	\N	\N	96
929	\N	\N	\N	\N	\N	\N	57
1635	\N	\N	\N	\N	\N	\N	70
1710	\N	\N	\N	\N	\N	\N	1
566	\N	\N	\N	\N	\N	\N	10
1653	\N	\N	\N	\N	\N	\N	17
340	\N	\N	\N	\N	\N	\N	4
498	\N	\N	\N	\N	\N	\N	93
1473	\N	\N	\N	\N	\N	\N	72
1249	\N	\N	\N	\N	\N	\N	87
51	\N	\N	\N	\N	\N	\N	7
392	\N	\N	\N	\N	\N	\N	1
851	\N	\N	\N	\N	\N	\N	79
1072	\N	\N	\N	\N	\N	\N	9
61	\N	\N	\N	\N	\N	\N	82
847	\N	\N	\N	\N	\N	\N	59
1645	\N	\N	\N	\N	\N	\N	63
409	\N	\N	\N	\N	\N	\N	94
843	\N	\N	\N	\N	\N	\N	50
1139	\N	\N	\N	\N	\N	\N	46
1617	\N	\N	\N	\N	\N	\N	54
1221	\N	\N	\N	\N	\N	\N	3
1621	\N	\N	\N	\N	\N	\N	26
729	\N	\N	\N	\N	\N	\N	22
1455	\N	\N	\N	\N	\N	\N	4
188	\N	\N	\N	\N	\N	\N	98
1042	\N	\N	\N	\N	\N	\N	18
1182	\N	\N	\N	\N	\N	\N	76
1906	\N	\N	\N	\N	\N	\N	11
429	\N	\N	\N	\N	\N	\N	27
876	\N	\N	\N	\N	\N	\N	26
1424	\N	\N	\N	\N	\N	\N	31
320	\N	\N	\N	\N	\N	\N	2
2016	\N	\N	\N	\N	\N	\N	61
2083	\N	\N	\N	\N	\N	\N	41
378	\N	\N	\N	\N	\N	\N	31
197	\N	\N	\N	\N	\N	\N	76
2029	\N	\N	\N	\N	\N	\N	17
1349	\N	\N	\N	\N	\N	\N	53
214	\N	\N	\N	\N	\N	\N	50
310	\N	\N	\N	\N	\N	\N	68
1765	\N	\N	\N	\N	\N	\N	86
988	\N	\N	\N	\N	\N	\N	64
1827	\N	\N	\N	\N	\N	\N	26
457	\N	\N	\N	\N	\N	\N	52
170	\N	\N	\N	\N	\N	\N	34
833	\N	\N	\N	\N	\N	\N	67
1919	\N	\N	\N	\N	\N	\N	84
1067	\N	\N	\N	\N	\N	\N	37
550	\N	\N	\N	\N	\N	\N	98
1611	\N	\N	\N	\N	\N	\N	29
648	\N	\N	\N	\N	\N	\N	22
2046	\N	\N	\N	\N	\N	\N	47
1794	\N	\N	\N	\N	\N	\N	4
663	\N	\N	\N	\N	\N	\N	55
1052	\N	\N	\N	\N	\N	\N	35
2017	\N	\N	\N	\N	\N	\N	47
367	\N	\N	\N	\N	\N	\N	13
2059	\N	\N	\N	\N	\N	\N	90
287	\N	\N	\N	\N	\N	\N	45
1393	\N	\N	\N	\N	\N	\N	45
33	\N	\N	\N	\N	\N	\N	23
1843	\N	\N	\N	\N	\N	\N	95
1269	\N	\N	\N	\N	\N	\N	53
439	\N	\N	\N	\N	\N	\N	11
532	\N	\N	\N	\N	\N	\N	10
1524	\N	\N	\N	\N	\N	\N	29
1973	\N	\N	\N	\N	\N	\N	30
36	\N	\N	\N	\N	\N	\N	84
1577	\N	\N	\N	\N	\N	\N	83
898	\N	\N	\N	\N	\N	\N	96
1362	\N	\N	\N	\N	\N	\N	5
1575	\N	\N	\N	\N	\N	\N	28
1773	\N	\N	\N	\N	\N	\N	36
2065	\N	\N	\N	\N	\N	\N	18
2026	\N	\N	\N	\N	\N	\N	41
994	\N	\N	\N	\N	\N	\N	97
1980	\N	\N	\N	\N	\N	\N	80
1177	\N	\N	\N	\N	\N	\N	25
1120	\N	\N	\N	\N	\N	\N	85
93	\N	\N	\N	\N	\N	\N	87
107	\N	\N	\N	\N	\N	\N	5
251	\N	\N	\N	\N	\N	\N	62
1493	\N	\N	\N	\N	\N	\N	25
1481	\N	\N	\N	\N	\N	\N	78
143	\N	\N	\N	\N	\N	\N	92
1914	\N	\N	\N	\N	\N	\N	14
826	\N	\N	\N	\N	\N	\N	31
1849	\N	\N	\N	\N	\N	\N	99
1822	\N	\N	\N	\N	\N	\N	3
1810	\N	\N	\N	\N	\N	\N	66
1294	\N	\N	\N	\N	\N	\N	69
627	\N	\N	\N	\N	\N	\N	90
1834	\N	\N	\N	\N	\N	\N	35
1289	\N	\N	\N	\N	\N	\N	2
1523	\N	\N	\N	\N	\N	\N	11
454	\N	\N	\N	\N	\N	\N	62
1559	\N	\N	\N	\N	\N	\N	5
412	\N	\N	\N	\N	\N	\N	66
255	\N	\N	\N	\N	\N	\N	52
1299	\N	\N	\N	\N	\N	\N	15
52	\N	\N	\N	\N	\N	\N	82
450	\N	\N	\N	\N	\N	\N	56
167	\N	\N	\N	\N	\N	\N	52
595	\N	\N	\N	\N	\N	\N	51
666	\N	\N	\N	\N	\N	\N	75
761	\N	\N	\N	\N	\N	\N	45
1413	\N	\N	\N	\N	\N	\N	62
995	\N	\N	\N	\N	\N	\N	48
334	\N	\N	\N	\N	\N	\N	86
68	\N	\N	\N	\N	\N	\N	41
147	\N	\N	\N	\N	\N	\N	60
41	\N	\N	\N	\N	\N	\N	98
628	\N	\N	\N	\N	\N	\N	93
672	\N	\N	\N	\N	\N	\N	84
435	\N	\N	\N	\N	\N	\N	33
1998	\N	\N	\N	\N	\N	\N	66
794	\N	\N	\N	\N	\N	\N	19
1734	\N	\N	\N	\N	\N	\N	97
499	\N	\N	\N	\N	\N	\N	72
1327	\N	\N	\N	\N	\N	\N	21
518	\N	\N	\N	\N	\N	\N	16
780	\N	\N	\N	\N	\N	\N	55
802	\N	\N	\N	\N	\N	\N	18
842	\N	\N	\N	\N	\N	\N	95
839	\N	\N	\N	\N	\N	\N	90
734	\N	\N	\N	\N	\N	\N	9
1896	\N	\N	\N	\N	\N	\N	26
506	\N	\N	\N	\N	\N	\N	91
1144	\N	\N	\N	\N	\N	\N	51
23	\N	\N	\N	\N	\N	\N	98
1454	\N	\N	\N	\N	\N	\N	54
1516	\N	\N	\N	\N	\N	\N	89
549	\N	\N	\N	\N	\N	\N	74
878	\N	\N	\N	\N	\N	\N	37
593	\N	\N	\N	\N	\N	\N	65
1934	\N	\N	\N	\N	\N	\N	86
1777	\N	\N	\N	\N	\N	\N	57
489	\N	\N	\N	\N	\N	\N	7
741	\N	\N	\N	\N	\N	\N	42
127	\N	\N	\N	\N	\N	\N	24
187	\N	\N	\N	\N	\N	\N	73
434	\N	\N	\N	\N	\N	\N	26
887	\N	\N	\N	\N	\N	\N	76
156	\N	\N	\N	\N	\N	\N	43
1967	\N	\N	\N	\N	\N	\N	49
339	\N	\N	\N	\N	\N	\N	35
497	\N	\N	\N	\N	\N	\N	59
827	\N	\N	\N	\N	\N	\N	77
1529	\N	\N	\N	\N	\N	\N	20
70	\N	\N	\N	\N	\N	\N	70
606	\N	\N	\N	\N	\N	\N	51
645	\N	\N	\N	\N	\N	\N	32
1588	\N	\N	\N	\N	\N	\N	20
1167	\N	\N	\N	\N	\N	\N	95
984	\N	\N	\N	\N	\N	\N	91
1025	\N	\N	\N	\N	\N	\N	96
5	\N	\N	\N	\N	\N	\N	44
841	\N	\N	\N	\N	\N	\N	75
148	\N	\N	\N	\N	\N	\N	92
1366	\N	\N	\N	\N	\N	\N	27
559	\N	\N	\N	\N	\N	\N	32
668	\N	\N	\N	\N	\N	\N	49
1266	\N	\N	\N	\N	\N	\N	89
2067	\N	\N	\N	\N	\N	\N	1
2031	\N	\N	\N	\N	\N	\N	62
680	\N	\N	\N	\N	\N	\N	89
250	\N	\N	\N	\N	\N	\N	86
219	\N	\N	\N	\N	\N	\N	37
213	\N	\N	\N	\N	\N	\N	18
1788	\N	\N	\N	\N	\N	\N	95
234	\N	\N	\N	\N	\N	\N	98
538	\N	\N	\N	\N	\N	\N	88
267	\N	\N	\N	\N	\N	\N	73
1511	\N	\N	\N	\N	\N	\N	28
2062	\N	\N	\N	\N	\N	\N	44
1476	\N	\N	\N	\N	\N	\N	44
1925	\N	\N	\N	\N	\N	\N	34
1478	\N	\N	\N	\N	\N	\N	95
1309	\N	\N	\N	\N	\N	\N	7
2002	\N	\N	\N	\N	\N	\N	4
2036	\N	\N	\N	\N	\N	\N	65
534	\N	\N	\N	\N	\N	\N	10
1622	\N	\N	\N	\N	\N	\N	31
502	\N	\N	\N	\N	\N	\N	52
1723	\N	\N	\N	\N	\N	\N	74
926	\N	\N	\N	\N	\N	\N	93
26	\N	\N	\N	\N	\N	\N	24
1584	\N	\N	\N	\N	\N	\N	67
916	\N	\N	\N	\N	\N	\N	76
1026	\N	\N	\N	\N	\N	\N	72
732	\N	\N	\N	\N	\N	\N	5
1451	\N	\N	\N	\N	\N	\N	68
1162	\N	\N	\N	\N	\N	\N	26
611	\N	\N	\N	\N	\N	\N	84
405	\N	\N	\N	\N	\N	\N	32
1601	\N	\N	\N	\N	\N	\N	31
1098	\N	\N	\N	\N	\N	\N	65
1089	\N	\N	\N	\N	\N	\N	44
711	\N	\N	\N	\N	\N	\N	56
1241	\N	\N	\N	\N	\N	\N	42
1634	\N	\N	\N	\N	\N	\N	7
345	\N	\N	\N	\N	\N	\N	89
688	\N	\N	\N	\N	\N	\N	83
1616	\N	\N	\N	\N	\N	\N	1
972	\N	\N	\N	\N	\N	\N	72
1300	\N	\N	\N	\N	\N	\N	83
1749	\N	\N	\N	\N	\N	\N	79
2005	\N	\N	\N	\N	\N	\N	57
289	\N	\N	\N	\N	\N	\N	44
397	\N	\N	\N	\N	\N	\N	93
402	\N	\N	\N	\N	\N	\N	43
441	\N	\N	\N	\N	\N	\N	21
608	\N	\N	\N	\N	\N	\N	95
1820	\N	\N	\N	\N	\N	\N	29
603	\N	\N	\N	\N	\N	\N	64
220	\N	\N	\N	\N	\N	\N	1
1997	\N	\N	\N	\N	\N	\N	51
579	\N	\N	\N	\N	\N	\N	6
490	\N	\N	\N	\N	\N	\N	37
179	\N	\N	\N	\N	\N	\N	71
85	\N	\N	\N	\N	\N	\N	56
351	\N	\N	\N	\N	\N	\N	2
1593	\N	\N	\N	\N	\N	\N	37
1024	\N	\N	\N	\N	\N	\N	19
1785	\N	\N	\N	\N	\N	\N	93
2077	\N	\N	\N	\N	\N	\N	18
2072	\N	\N	\N	\N	\N	\N	81
2088	\N	\N	\N	\N	\N	\N	52
1429	\N	\N	\N	\N	\N	\N	1
849	\N	\N	\N	\N	\N	\N	55
982	\N	\N	\N	\N	\N	\N	63
1522	\N	\N	\N	\N	\N	\N	80
76	\N	\N	\N	\N	\N	\N	89
1277	\N	\N	\N	\N	\N	\N	19
646	\N	\N	\N	\N	\N	\N	26
1766	\N	\N	\N	\N	\N	\N	92
944	\N	\N	\N	\N	\N	\N	16
1250	\N	\N	\N	\N	\N	\N	41
1030	\N	\N	\N	\N	\N	\N	82
1487	\N	\N	\N	\N	\N	\N	64
1323	\N	\N	\N	\N	\N	\N	56
263	\N	\N	\N	\N	\N	\N	98
1214	\N	\N	\N	\N	\N	\N	9
1758	\N	\N	\N	\N	\N	\N	41
957	\N	\N	\N	\N	\N	\N	46
381	\N	\N	\N	\N	\N	\N	27
29	\N	\N	\N	\N	\N	\N	10
908	\N	\N	\N	\N	\N	\N	28
561	\N	\N	\N	\N	\N	\N	80
280	\N	\N	\N	\N	\N	\N	54
420	\N	\N	\N	\N	\N	\N	16
1426	\N	\N	\N	\N	\N	\N	74
749	\N	\N	\N	\N	\N	\N	53
1591	\N	\N	\N	\N	\N	\N	71
1571	\N	\N	\N	\N	\N	\N	18
230	\N	\N	\N	\N	\N	\N	65
153	\N	\N	\N	\N	\N	\N	50
1853	\N	\N	\N	\N	\N	\N	54
712	\N	\N	\N	\N	\N	\N	56
1229	\N	\N	\N	\N	\N	\N	59
2082	\N	\N	\N	\N	\N	\N	62
710	\N	\N	\N	\N	\N	\N	80
1329	\N	\N	\N	\N	\N	\N	31
2032	\N	\N	\N	\N	\N	\N	79
1776	\N	\N	\N	\N	\N	\N	55
515	\N	\N	\N	\N	\N	\N	74
1740	\N	\N	\N	\N	\N	\N	32
526	\N	\N	\N	\N	\N	\N	87
350	\N	\N	\N	\N	\N	\N	9
1175	\N	\N	\N	\N	\N	\N	4
1070	\N	\N	\N	\N	\N	\N	42
1253	\N	\N	\N	\N	\N	\N	45
2060	\N	\N	\N	\N	\N	\N	30
285	\N	\N	\N	\N	\N	\N	35
1736	\N	\N	\N	\N	\N	\N	82
1684	\N	\N	\N	\N	\N	\N	54
1940	\N	\N	\N	\N	\N	\N	41
535	\N	\N	\N	\N	\N	\N	86
1889	\N	\N	\N	\N	\N	\N	22
527	\N	\N	\N	\N	\N	\N	45
504	\N	\N	\N	\N	\N	\N	31
674	\N	\N	\N	\N	\N	\N	25
1895	\N	\N	\N	\N	\N	\N	76
472	\N	\N	\N	\N	\N	\N	90
1835	\N	\N	\N	\N	\N	\N	17
906	\N	\N	\N	\N	\N	\N	63
1833	\N	\N	\N	\N	\N	\N	21
1396	\N	\N	\N	\N	\N	\N	22
809	\N	\N	\N	\N	\N	\N	19
415	\N	\N	\N	\N	\N	\N	88
673	\N	\N	\N	\N	\N	\N	29
962	\N	\N	\N	\N	\N	\N	69
406	\N	\N	\N	\N	\N	\N	5
793	\N	\N	\N	\N	\N	\N	97
226	\N	\N	\N	\N	\N	\N	49
1420	\N	\N	\N	\N	\N	\N	48
465	\N	\N	\N	\N	\N	\N	44
1018	\N	\N	\N	\N	\N	\N	62
478	\N	\N	\N	\N	\N	\N	71
1091	\N	\N	\N	\N	\N	\N	48
2024	\N	\N	\N	\N	\N	\N	46
1965	\N	\N	\N	\N	\N	\N	94
462	\N	\N	\N	\N	\N	\N	95
175	\N	\N	\N	\N	\N	\N	30
416	\N	\N	\N	\N	\N	\N	61
1701	\N	\N	\N	\N	\N	\N	53
1862	\N	\N	\N	\N	\N	\N	60
312	\N	\N	\N	\N	\N	\N	31
1379	\N	\N	\N	\N	\N	\N	67
861	\N	\N	\N	\N	\N	\N	13
607	\N	\N	\N	\N	\N	\N	87
139	\N	\N	\N	\N	\N	\N	19
1332	\N	\N	\N	\N	\N	\N	26
1941	\N	\N	\N	\N	\N	\N	20
1626	\N	\N	\N	\N	\N	\N	78
1628	\N	\N	\N	\N	\N	\N	75
42	\N	\N	\N	\N	\N	\N	29
1815	\N	\N	\N	\N	\N	\N	17
1235	\N	\N	\N	\N	\N	\N	44
1373	\N	\N	\N	\N	\N	\N	53
1680	\N	\N	\N	\N	\N	\N	59
256	\N	\N	\N	\N	\N	\N	81
1888	\N	\N	\N	\N	\N	\N	58
1015	\N	\N	\N	\N	\N	\N	60
2023	\N	\N	\N	\N	\N	\N	14
103	\N	\N	\N	\N	\N	\N	85
1154	\N	\N	\N	\N	\N	\N	25
993	\N	\N	\N	\N	\N	\N	1
1884	\N	\N	\N	\N	\N	\N	59
558	\N	\N	\N	\N	\N	\N	99
1800	\N	\N	\N	\N	\N	\N	52
1769	\N	\N	\N	\N	\N	\N	64
1480	\N	\N	\N	\N	\N	\N	26
1389	\N	\N	\N	\N	\N	\N	73
1284	\N	\N	\N	\N	\N	\N	78
1423	\N	\N	\N	\N	\N	\N	58
752	\N	\N	\N	\N	\N	\N	81
1790	\N	\N	\N	\N	\N	\N	10
1465	\N	\N	\N	\N	\N	\N	74
305	\N	\N	\N	\N	\N	\N	22
1667	\N	\N	\N	\N	\N	\N	60
1590	\N	\N	\N	\N	\N	\N	39
1567	\N	\N	\N	\N	\N	\N	7
975	\N	\N	\N	\N	\N	\N	49
1910	\N	\N	\N	\N	\N	\N	97
491	\N	\N	\N	\N	\N	\N	78
1589	\N	\N	\N	\N	\N	\N	89
956	\N	\N	\N	\N	\N	\N	37
1306	\N	\N	\N	\N	\N	\N	23
1169	\N	\N	\N	\N	\N	\N	22
750	\N	\N	\N	\N	\N	\N	57
268	\N	\N	\N	\N	\N	\N	40
2034	\N	\N	\N	\N	\N	\N	88
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
    ADD CONSTRAINT relation_10_pkey PRIMARY KEY (camera_id);


--
-- Name: relation_11 relation_11_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_11
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_12 relation_12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_12
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (accessories_id);


--
-- Name: relation_13 relation_13_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_13
    ADD CONSTRAINT relation_13_pkey PRIMARY KEY (appliance_id);


--
-- Name: relation_14 relation_14_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_14
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (kitchenappliance_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (apparel_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (clothing_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (menclothing_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (womenclothing_id);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (footwear_id);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (media_id);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (software_id);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (user_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (primecustomer_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (businesscustomer_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (employee_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (corporateemployee_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (engineer_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (fulfillmentassociate_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (product_id, image_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (product_id, variant_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (product_id, price_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (user_id, session_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (courierpartner_id);


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
    ADD CONSTRAINT relation_56_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_57 relation_57_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_57
    ADD CONSTRAINT relation_57_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_58 relation_58_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_58
    ADD CONSTRAINT relation_58_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_59 relation_59_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_59
    ADD CONSTRAINT relation_59_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (computer_id);


--
-- Name: relation_60 relation_60_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_60
    ADD CONSTRAINT relation_60_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_61 relation_61_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_61
    ADD CONSTRAINT relation_61_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


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

