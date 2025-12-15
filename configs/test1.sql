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
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    sensor_mp integer,
    category_products_category_id integer
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    phone_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    carrier_lock character varying(255),
    category_products_category_id integer,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
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


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    appliance_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    energy_rating character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
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
    category_products_category_id integer
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    apparel_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    size_system character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
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
    category_products_category_id integer
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    menclothing_id integer NOT NULL,
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
    category_products_category_id integer
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    womenclothing_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    size_system character varying(255),
    material character varying(255),
    fit_type_women character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    footwear_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    size_system character varying(255),
    sole_material character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_19 OWNER TO postgres;

--
-- Name: relation_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_2 (
    physicalproduct_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_2 OWNER TO postgres;

--
-- Name: relation_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_20 (
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


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    software_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    delivery_type character varying(255),
    license_type character varying(255),
    category_products_category_id integer
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
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[]
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    primecustomer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    renewal_date character varying(255),
    subscription_addons character varying(255)[]
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    businesscustomer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    company_name character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    employee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    corporateemployee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    office_site character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    engineer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    office_site character varying(255),
    level character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    supportagent_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    queue character varying(255)
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
    category_products_category_id integer
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    fulfillmentassociate_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    shift character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    categorymanager_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
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
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    category_products_category_id integer
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
    category_products_category_id integer
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
    form_factor character varying(255),
    category_products_category_id integer
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


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
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
    category_products_category_id integer
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    smartwatch_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    band_size character varying(255),
    category_products_category_id integer,
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: temp_bundled_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_bundled_phone (
    phone_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    carrier_lock character varying(255),
    category_products_category_id integer,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.temp_bundled_phone OWNER TO postgres;

--
-- Name: temp_bundled_phone_smart_watch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_bundled_phone_smart_watch (
    smartwatch_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    band_size character varying(255),
    category_products_category_id integer,
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
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["product_id"]], ["relation_2", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["physicalproduct_id"]], ["relation_3", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["digitalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["computer_id"]], ["relation_6", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["desktop_id"]], ["relation_7", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["laptop_id"]], ["relation_8", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["tablet_id"]], ["relation_9", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["category_products_category_id", "INTEGER", "category_id", "category_products"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], true, ["smartwatch_id"]], ["relation_10", [["camera_id", "INTEGER", "camera_id", "camera"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["camera_id"]], ["relation_11", [["phone_id", "INTEGER", "phone_id", "phone"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["category_products_category_id", "INTEGER", "category_id", "category_products"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], true, ["phone_id"]], ["relation_12", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["accessories_id"]], ["relation_13", [["appliance_id", "INTEGER", "appliance_id", "appliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["appliance_id"]], ["relation_14", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["kitchenappliance_id"]], ["relation_15", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["apparel_id"]], ["relation_16", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["clothing_id"]], ["relation_17", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["menclothing_id"]], ["relation_18", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["womenclothing_id"]], ["relation_19", [["footwear_id", "INTEGER", "footwear_id", "footwear"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["footwear_id"]], ["relation_20", [["media_id", "INTEGER", "media_id", "media"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["format", "VARCHAR(255)", "media.format", "media"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["media_id"]], ["relation_21", [["software_id", "INTEGER", "software_id", "software"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["license_type", "VARCHAR(255)", "software.license_type", "software"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["software_id"]], ["relation_22", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"]], false, ["user_id"]], ["relation_23", [["customer_id", "INTEGER", "customer_id", "customer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"]], false, ["customer_id"]], ["relation_24", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["subscription_addons", "VARCHAR(255)[]", "primecustomer.subscription_addons", "primecustomer"]], false, ["primecustomer_id"]], ["relation_25", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"]], false, ["businesscustomer_id"]], ["relation_26", [["employee_id", "INTEGER", "employee_id", "employee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"]], false, ["employee_id"]], ["relation_27", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"]], false, ["corporateemployee_id"]], ["relation_28", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_29", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_30", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_31", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_32", [["product_id", "INTEGER", "product_id", "productimage"], ["image_id", "INTEGER", "productimage.image_id", "productimage"], ["url", "VARCHAR(255)", "productimage.url", "productimage"], ["alt_text", "VARCHAR(255)", "productimage.alt_text", "productimage"], ["sort_order", "INTEGER", "productimage.sort_order", "productimage"]], false, ["product_id", "image_id"]], ["relation_33", [["product_id", "INTEGER", "product_id", "productvariant"], ["variant_id", "INTEGER", "productvariant.variant_id", "productvariant"], ["price_override", "INTEGER", "productvariant.price_override", "productvariant"], ["barcode", "VARCHAR(255)", "productvariant.barcode", "productvariant"], ["is_active_variant", "INTEGER", "productvariant.is_active_variant", "productvariant"]], false, ["product_id", "variant_id"]], ["relation_34", [["product_id", "INTEGER", "product_id", "pricehistory"], ["price_id", "INTEGER", "pricehistory.price_id", "pricehistory"], ["starts_at", "VARCHAR(255)", "pricehistory.starts_at", "pricehistory"], ["ends_at", "VARCHAR(255)", "pricehistory.ends_at", "pricehistory"], ["price", "INTEGER", "pricehistory.price", "pricehistory"]], false, ["product_id", "price_id"]], ["relation_35", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_36", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_37", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_38", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_39", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_40", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], true, ["customer_id", "review_id"]], ["relation_41", [["user_id", "INTEGER", "user_id", "browsingsession"], ["session_id", "INTEGER", "browsingsession.session_id", "browsingsession"], ["started_at", "VARCHAR(255)", "browsingsession.started_at", "browsingsession"], ["device", "VARCHAR(255)", "browsingsession.device", "browsingsession"]], false, ["user_id", "session_id"]], ["relation_42", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], true, ["custorder_id"]], ["relation_43", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], true, ["custorder_id", "shipment_id"]], ["relation_44", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_45", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], true, ["promotion_id", "coupon_code"]], ["relation_46", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_47", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_48", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_49", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_50", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], true, ["purchaseorder_id"]], ["relation_51", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_52", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_53", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_54", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_55", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_56", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_57", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_58", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_59", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_60", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_61", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]]]
3	types	{}
4	graph	{"cost": 20696269.65415136, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "physicalproduct", "electronics", "computer", "desktop", "laptop", "tablet", "smartwatch", "camera", "phone", "accessories", "appliance", "kitchenappliance", "apparel", "clothing", "menclothing", "womenclothing", "footwear", "digitalproduct", "media", "software"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [5, "relation_1"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "electronics", "computer", "desktop", "laptop", "tablet", "smartwatch", "camera", "phone", "accessories", "appliance", "kitchenappliance", "apparel", "clothing", "menclothing", "womenclothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_2"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_2"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct", "media", "software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_3"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "computer", "desktop", "laptop", "tablet", "smartwatch", "camera", "phone", "accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "desktop", "laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[19, "relation_5"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[19, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[22, "relation_6"]], "unique_name": "desktop", "mapped_table": [22, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[22, "relation_6"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[24, "relation_7"]], "unique_name": "laptop", "mapped_table": [24, "relation_7"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_7"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[26, "relation_8"]], "unique_name": "tablet", "mapped_table": [26, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[26, "relation_8"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[28, "relation_9"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[30, "relation_10"]], "unique_name": "camera", "mapped_table": [30, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[30, "relation_10"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[32, "relation_11"]], "unique_name": "phone", "mapped_table": [32, "relation_11"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[32, "relation_11"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_12"]], "unique_name": "accessories", "mapped_table": [34, "relation_12"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_12"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance", "kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[36, "relation_13"]], "unique_name": "appliance", "mapped_table": [36, "relation_13"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "appliance_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "appliance_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[36, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_13"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[38, "relation_14"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_14"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "appliance_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "appliance_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[38, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "clothing", "menclothing", "womenclothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_15"]], "unique_name": "apparel", "mapped_table": [40, "relation_15"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[40, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_15"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing", "menclothing", "womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_16"]], "unique_name": "clothing", "mapped_table": [42, "relation_16"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[42, "relation_16"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_16"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[44, "relation_17"]], "unique_name": "menclothing", "mapped_table": [44, "relation_17"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[44, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_16"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[46, "relation_18"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_18"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[46, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["footwear_id", "INTEGER", "footwear_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_15"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[48, "relation_19"]], "unique_name": "footwear", "mapped_table": [48, "relation_19"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "footwear_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "footwear_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [48, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[48, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[50, "relation_20"]], "unique_name": "media", "mapped_table": [50, "relation_20"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[50, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[52, "relation_21"]], "unique_name": "software", "mapped_table": [52, "relation_21"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[52, "relation_21"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "customer", "primecustomer", "businesscustomer", "employee", "corporateemployee", "engineer", "supportagent", "fulfillmentassociate", "categorymanager"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_22"]], "unique_name": "user", "mapped_table": [54, "relation_22"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [54, "relation_22"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer", "primecustomer", "businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_23"]], "unique_name": "customer", "mapped_table": [58, "relation_23"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[58, "relation_23"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [58, "relation_23"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[61, "relation_24"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [61, "relation_24"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[61, "relation_24"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_24"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [61, "relation_24"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[64, "relation_25"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_25"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_25"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "corporateemployee", "engineer", "supportagent", "fulfillmentassociate", "categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_26"]], "unique_name": "employee", "mapped_table": [66, "relation_26"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "employee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[66, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee", "engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_27"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_27"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_27"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[70, "relation_28"]], "unique_name": "engineer", "mapped_table": [70, "relation_28"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[70, "relation_28"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[72, "relation_29"]], "unique_name": "supportagent", "mapped_table": [72, "relation_29"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[74, "relation_30"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_30"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[74, "relation_30"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_26"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[76, "relation_31"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_31"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[78, "relation_32"]], "unique_name": "productimage", "mapped_table": [78, "relation_32"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [78, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [78, "relation_32"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[83, "relation_33"]], "unique_name": "productvariant", "mapped_table": [83, "relation_33"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [83, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[83, "relation_33"], [5, "temp_product"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[88, "relation_34"]], "unique_name": "pricehistory", "mapped_table": [88, "relation_34"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [88, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[88, "relation_34"], [5, "temp_product"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_35"]], "unique_name": "tag", "mapped_table": [93, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_36"]], "unique_name": "address", "mapped_table": [96, "relation_36"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[96, "relation_36"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_37"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_37"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[104, "relation_37"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_38"]], "unique_name": "cart", "mapped_table": [111, "relation_38"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[111, "relation_38"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_39"]], "unique_name": "wishlist", "mapped_table": [113, "relation_39"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_39"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_23"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_40"]], "unique_name": "review", "mapped_table": [116, "relation_40"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[116, "relation_40"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_22"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[122, "relation_41"]], "unique_name": "browsingsession", "mapped_table": [122, "relation_41"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [122, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [122, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "temp_user"], [122, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_42"]], "unique_name": "custorder", "mapped_table": [126, "relation_42"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_42"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_43"]], "unique_name": "shipment", "mapped_table": [130, "relation_43"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[130, "relation_43"], [126, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_44"]], "unique_name": "promotion", "mapped_table": [136, "relation_44"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_44"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_45"]], "unique_name": "coupon", "mapped_table": [143, "relation_45"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_45"], [136, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_46"]], "unique_name": "warehouse", "mapped_table": [147, "relation_46"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_46"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_46"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_46"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_46"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_47"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_47"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_47"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_46"], [151, "relation_47"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_48"]], "unique_name": "supplier", "mapped_table": [154, "relation_48"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_48"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_48"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_48"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_49"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_49"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[157, "relation_49"], [154, "relation_48"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_50"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_50"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_50"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_51"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_51"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_51"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_51"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_51"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[5, "relation_1"]], "unique_name": "category_products", "mapped_table": [5, "relation_1"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[1, "relation_0"], [5, "temp_product"]], "mapped_tables_list": [[5, "relation_1"], [13, "relation_2"], [17, "relation_4"], [19, "relation_5"], [22, "relation_6"], [24, "relation_7"], [26, "relation_8"], [28, "relation_9"], [30, "relation_10"], [32, "relation_11"], [34, "relation_12"], [36, "relation_13"], [38, "relation_14"], [40, "relation_15"], [42, "relation_16"], [44, "relation_17"], [46, "relation_18"], [48, "relation_19"], [15, "relation_3"], [50, "relation_20"], [52, "relation_21"]], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_35"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_52"]], "unique_name": "product_tags", "mapped_table": [170, "relation_52"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[93, "relation_35"], [5, "temp_product"], [170, "relation_52"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_53"]], "unique_name": "bought_together", "mapped_table": [171, "relation_53"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_53"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_38", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_54"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_54"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[172, "relation_54"], [111, "relation_38"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_55"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_55"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[173, "relation_55"], [113, "relation_39"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_40", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[116, "relation_40"]], "unique_name": "reviews", "mapped_table": [116, "relation_40"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[116, "relation_40"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_23"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[126, "relation_42"]], "unique_name": "customer_orders", "mapped_table": [126, "relation_42"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[126, "relation_42"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_56"]], "unique_name": "order_items", "mapped_table": [176, "relation_56"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[176, "relation_56"], [5, "temp_product"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_37"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[126, "relation_42"]], "unique_name": "payment_order", "mapped_table": [126, "relation_42"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_42"], [104, "relation_37"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_57"]], "unique_name": "order_returns", "mapped_table": [178, "relation_57"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[178, "relation_57"], [5, "temp_product"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_45", "relation_42"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[143, "relation_45"]], "unique_name": "order_coupons", "mapped_table": [143, "relation_45"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[143, "relation_45"], [136, "relation_44"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_47"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_58"]], "unique_name": "stock", "mapped_table": [180, "relation_58"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[147, "relation_46"], [180, "relation_58"], [151, "relation_47"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_48", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_59"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_59"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [154, "relation_48"], [181, "relation_59"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_50", "relation_48"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[161, "relation_50"]], "unique_name": "supplier_pos", "mapped_table": [161, "relation_50"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[161, "relation_50"], [154, "relation_48"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_50", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_60"]], "unique_name": "po_items", "mapped_table": [183, "relation_60"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[161, "relation_50"], [5, "temp_product"], [183, "relation_60"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_43", "relation_51"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[130, "relation_43"]], "unique_name": "courier_shipments", "mapped_table": [130, "relation_43"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[130, "relation_43"], [165, "relation_51"], [126, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_11", "relation_11"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_61"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_61"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[185, "relation_61"], [32, "relation_11"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_9", "relation_11"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[28, "relation_9"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [28, "relation_9"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_9"], [32, "relation_11"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_11", "relation_11"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[32, "relation_11"]], "unique_name": "bundled_phone", "mapped_table": [32, "relation_11"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[32, "relation_11"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "all_by_itself", "phone": "all_by_itself", "stock": "all_by_itself", "camera": "all_by_itself", "coupon": "all_by_itself", "laptop": "all_by_itself", "review": "all_by_itself", "tablet": "all_by_itself", "address": "all_by_itself", "apparel": "all_by_itself", "desktop": "all_by_itself", "product": "all_by_itself", "reviews": "folded_to_many_side", "category": "all_by_itself", "clothing": "all_by_itself", "computer": "all_by_itself", "customer": "all_by_itself", "employee": "all_by_itself", "engineer": "all_by_itself", "footwear": "all_by_itself", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "all_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "all_by_itself", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "all_by_itself", "accessories": "all_by_itself", "electronics": "all_by_itself", "menclothing": "all_by_itself", "order_items": "all_by_itself", "pricehistory": "all_by_itself", "product_tags": "all_by_itself", "productimage": "all_by_itself", "supplier_pos": "folded_to_many_side", "supportagent": "all_by_itself", "user.mv_user": "contained_in_parent", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "folded_to_many_side", "cart_contains": "all_by_itself", "order_coupons": "folded_to_many_side", "order_returns": "all_by_itself", "payment_order": "folded_to_many_side", "paymentmethod": "all_by_itself", "primecustomer": "all_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "all_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "all_by_itself", "productvariant": "all_by_itself", "bought_together": "all_by_itself", "browsingsession": "all_by_itself", "categorymanager": "all_by_itself", "customer_orders": "folded_to_many_side", "physicalproduct": "all_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "all_by_itself", "kitchenappliance": "all_by_itself", "category_products": "folded_to_many_side", "corporateemployee": "all_by_itself", "courier_shipments": "folded_to_many_side", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "contained_in_parent", "fulfillmentassociate": "all_by_itself", "product.mv_attributes": "contained_in_parent", "bundled_phone_smart_watch": "folded_to_many_side", "primecustomer.subscription_addons": "contained_in_parent"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	computer	138
2	require	583
3	purpose	868
4	she	822
5	sometimes	783
6	or	65
7	set	262
8	risk	121
9	more	508
10	team	780
11	others	461
12	expect	484
13	lead	668
14	member	389
15	college	808
16	top	215
17	TV	97
18	west	500
19	week	30
20	child	915
21	sport	856
22	out	400
23	science	444
24	natural	623
25	responsibility	781
26	nor	786
27	already	3
28	accept	713
29	officer	457
30	whatever	273
31	meeting	739
32	pressure	822
33	collection	235
34	seven	606
35	trouble	968
36	green	105
37	so	924
38	buy	326
39	east	32
40	card	23
41	without	27
42	whom	666
43	nature	555
44	surface	10
45	yes	962
46	nature	903
47	paper	391
48	face	703
49	type	222
50	pattern	993
51	first	433
52	feeling	744
53	stock	30
54	tend	541
55	cold	228
56	at	783
57	positive	449
58	these	962
59	including	508
60	meeting	567
61	every	239
62	chance	354
63	thought	237
64	prepare	694
65	institution	225
66	tell	780
67	why	471
68	painting	976
69	develop	297
70	suddenly	949
71	western	23
72	factor	427
73	reach	858
74	town	939
75	assume	570
76	become	945
77	gas	658
78	professor	103
79	from	191
80	evening	645
81	for	742
82	yard	881
83	career	304
84	food	124
85	within	761
86	radio	341
87	collection	918
88	see	739
89	to	997
90	real	729
91	than	513
92	we	959
93	nothing	991
94	sound	433
95	though	520
96	range	850
97	gas	933
98	magazine	687
99	box	195
100	wind	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, category_products_category_id) FROM stdin;
1	draw	grow	291	602	997	{work,hundred}	\N
2	phone	blood	867	964	518	{gun,after}	\N
3	base	party	604	874	36	{family,themselves}	\N
4	space	why	249	762	817	{film,where}	\N
6	throughout	owner	562	904	720	{make,late}	\N
8	special	student	798	168	534	{argue,along}	\N
9	tend	new	380	502	751	{yard}	\N
10	catch	card	481	45	316	{baby,choose}	\N
11	high	account	663	175	173	{direction}	\N
12	guy	American	13	790	205	{candidate}	\N
13	culture	director	415	527	353	{operation,research}	\N
14	parent	civil	471	932	276	{cell}	\N
16	store	worker	532	797	575	{in}	\N
17	song	let	437	973	58	{available,a}	\N
18	employee	this	891	374	584	{reality}	\N
19	sing	affect	964	517	424	{minute,fly}	\N
20	collection	key	833	366	425	{focus,daughter}	\N
21	magazine	machine	2	552	554	{contain,through}	\N
22	glass	finally	470	615	29	{operation}	\N
25	you	court	34	862	967	{citizen}	\N
27	table	throw	15	773	774	{field,mention}	\N
28	daughter	about	256	276	113	{believe}	\N
30	girl	reality	164	262	541	{kid}	\N
31	carry	end	673	280	664	{really,view}	\N
32	modern	pay	466	720	330	{expect,every}	\N
34	stay	that	396	352	432	{both}	\N
35	just	situation	265	112	260	{region}	\N
37	authority	moment	231	19	407	{year}	\N
38	pick	shoulder	37	737	983	{mother}	\N
40	center	those	558	853	226	{that,two}	\N
43	dream	teach	676	647	437	{just}	\N
44	resource	officer	756	306	129	{who}	\N
45	energy	off	897	49	314	{store}	\N
46	bring	election	880	79	318	{particular,picture}	\N
48	arrive	charge	134	9	575	{sport}	\N
49	throw	huge	605	840	223	{now,see}	\N
50	offer	east	176	848	889	{man}	\N
53	heart	important	606	199	505	{probably}	\N
54	speech	record	961	682	400	{college,southern}	\N
55	music	be	517	512	18	{smile,back}	\N
56	join	worry	627	893	412	{will,certain}	\N
57	per	watch	19	161	206	{hospital,body}	\N
58	business	tend	831	577	802	{sing}	\N
59	boy	seat	348	440	219	{onto,mean}	\N
60	speak	value	691	99	858	{off,general}	\N
62	about	kid	787	546	241	{hot}	\N
63	because	budget	743	42	87	{never}	\N
64	house	particularly	174	171	933	{color}	\N
65	bag	remember	275	778	341	{political,fund}	\N
66	bag	education	377	347	349	{will}	\N
67	claim	country	299	241	889	{movie,draw}	\N
69	during	cause	329	41	417	{toward}	\N
71	enough	adult	849	129	350	{wear}	\N
72	citizen	well	630	602	801	{guy,write}	\N
73	face	doctor	79	585	564	{become}	\N
74	student	better	580	84	976	{become,nearly}	\N
75	important	throughout	374	913	303	{game}	\N
77	she	place	806	47	848	{possible,recently}	\N
79	guess	develop	94	424	118	{huge}	\N
80	foreign	evidence	193	246	805	{movement,yourself}	\N
81	bank	unit	166	119	462	{so}	\N
82	officer	up	698	248	163	{ready}	\N
83	score	well	446	933	988	{four,they}	\N
84	surface	item	826	994	556	{leader,ago}	\N
86	than	relationship	323	103	213	{history,behavior}	\N
88	assume	majority	744	611	328	{run,report}	\N
89	back	idea	401	321	409	{control}	\N
90	likely	company	66	936	325	{talk,exactly}	\N
91	policy	computer	115	257	221	{run,federal}	\N
92	guy	reduce	678	365	266	{new}	\N
94	moment	hit	253	370	84	{per,guy}	\N
95	often	arrive	92	772	459	{exactly}	\N
96	summer	customer	668	589	659	{get,himself}	\N
97	care	short	964	233	400	{among,town}	\N
98	memory	industry	43	336	192	{professor,usually}	\N
99	responsibility	well	812	868	593	{ago,gas}	\N
100	not	again	252	343	104	{customer}	\N
87	really	even	41	28	11	{fear,former}	49
15	church	by	393	803	878	{movement}	33
78	program	health	13	629	687	{sing}	56
24	full	nation	882	94	818	{budget,eye}	5
47	term	control	762	163	427	{professional,similar}	35
7	authority	job	89	450	680	{environment}	18
39	special	war	457	722	519	{guy,each}	88
51	project	business	388	206	356	{free}	7
61	include	still	955	561	353	{property,contain}	82
33	true	fact	486	117	25	{require,attack}	23
36	unit	sit	989	621	443	{almost}	84
93	leader	heavy	555	213	315	{cup}	87
52	someone	walk	211	588	691	{real,then}	82
68	pattern	test	139	594	565	{tell}	41
41	around	able	229	537	665	{price}	98
23	low	product	651	182	564	{actually}	98
70	can	step	390	887	808	{measure}	70
5	foreign	treatment	425	681	178	{part,result}	44
26	see	hard	86	889	18	{despite,nothing}	24
85	final	note	564	260	729	{plan,have}	56
76	painting	join	469	919	284	{check}	89
29	address	research	353	298	72	{beyond}	10
42	song	eight	405	692	590	{individual,compare}	29
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (camera_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, sensor_mp, category_products_category_id) FROM stdin;
901	family	near	657	682	798	{such}	really	522	514	\N
902	region	health	907	764	962	{hot}	movement	375	893	\N
903	should	recognize	727	458	97	{heavy,finally}	professional	832	689	\N
904	couple	hit	160	282	117	{best,stage}	eye	259	778	\N
905	recently	house	842	217	337	{study}	kitchen	572	229	\N
907	occur	hot	495	368	657	{decade}	option	419	686	\N
909	stay	huge	55	541	303	{price,evidence}	on	204	214	\N
910	word	for	235	857	754	{ability}	apply	386	356	\N
911	several	than	263	893	2	{eight,oil}	minute	791	519	\N
912	threat	half	144	438	784	{time,admit}	nor	93	529	\N
913	feel	full	819	853	283	{investment}	fund	225	112	\N
914	great	another	437	415	146	{you}	night	683	451	\N
915	college	natural	843	531	683	{argue}	million	166	221	\N
917	agree	forget	258	581	773	{begin}	politics	32	227	\N
918	finally	better	264	946	494	{exist}	father	351	18	\N
919	executive	lead	932	961	858	{decade}	ready	715	206	\N
920	key	chair	266	659	931	{say}	step	75	437	\N
921	just	traditional	705	378	705	{out,speech}	ago	771	833	\N
922	record	push	785	195	109	{serious}	mother	956	402	\N
923	career	herself	348	587	338	{discussion,student}	head	352	603	\N
924	apply	around	809	708	264	{whom,half}	American	773	630	\N
925	couple	wonder	283	792	362	{effort}	newspaper	952	824	\N
927	pick	which	903	355	792	{course,perform}	certain	735	30	\N
928	sit	head	109	609	544	{form}	war	176	638	\N
930	key	area	434	409	637	{about}	really	70	407	\N
931	place	action	157	749	602	{notice}	themselves	863	935	\N
933	environmental	other	420	940	803	{tough}	cultural	923	732	\N
934	drop	rich	676	505	221	{culture,wonder}	perform	992	571	\N
935	across	order	798	38	882	{where,expert}	smile	301	807	\N
936	do	read	143	258	843	{prevent,work}	yard	488	137	\N
937	parent	yeah	447	342	534	{with,heavy}	leave	216	285	\N
938	type	bed	41	319	515	{visit,recognize}	what	510	307	\N
939	long	series	271	164	297	{attorney,range}	movie	819	918	\N
940	argue	act	343	998	153	{activity,research}	else	397	903	\N
941	among	yet	690	453	964	{response,leave}	miss	739	173	\N
942	also	hot	917	908	393	{thing}	air	95	597	\N
943	toward	policy	211	995	953	{shoulder,would}	senior	53	536	\N
945	with	half	979	633	642	{once,be}	change	133	944	\N
948	oil	interesting	20	669	455	{whole}	star	173	914	\N
949	yeah	result	828	902	764	{mouth,this}	us	824	687	\N
950	town	because	632	850	215	{need,out}	western	297	645	\N
951	mother	per	169	45	40	{land,lot}	one	400	892	\N
952	this	forget	978	555	701	{spend}	travel	390	295	\N
953	consumer	street	447	932	52	{charge}	focus	342	430	\N
954	one	hold	602	590	499	{floor}	him	594	524	\N
955	see	sing	691	92	345	{state,popular}	board	887	671	\N
958	final	shake	430	695	405	{want}	walk	262	797	\N
959	reduce	enough	2	289	34	{big,her}	lead	800	88	\N
960	carry	long	185	634	259	{score,about}	entire	711	446	\N
961	present	player	313	103	305	{another}	including	489	180	\N
963	suggest	all	690	409	565	{hot}	week	581	516	\N
964	state	could	305	3	745	{far,second}	last	349	100	\N
965	ten	fall	263	166	613	{answer}	hair	75	180	\N
966	lead	yet	800	719	697	{manager,upon}	all	544	581	\N
967	political	deep	740	24	226	{our,such}	resource	699	19	\N
968	able	scene	688	5	541	{pick,attention}	young	783	632	\N
969	here	throw	818	989	792	{above}	something	55	758	\N
970	economy	section	940	799	406	{account,attention}	woman	196	163	\N
971	travel	we	228	94	627	{wonder,speak}	collection	553	558	\N
973	family	reach	611	262	841	{edge,home}	simple	254	688	\N
974	accept	beautiful	300	635	264	{true}	identify	730	648	\N
976	wish	effort	225	792	881	{series}	morning	550	678	\N
977	authority	arrive	23	108	224	{sell,some}	continue	173	756	\N
978	theory	approach	330	225	167	{so}	never	624	225	\N
979	owner	that	398	269	264	{magazine}	bad	651	268	\N
980	source	reveal	385	43	787	{kid}	tell	885	158	\N
981	we	production	737	509	962	{reduce,together}	home	309	974	\N
983	product	think	294	937	287	{nothing,west}	likely	495	633	\N
985	thought	mother	63	74	267	{learn}	agree	794	506	\N
986	forward	fear	214	465	885	{Republican,bag}	authority	42	276	\N
987	full	social	346	864	5	{impact,cause}	chance	804	442	\N
989	picture	practice	376	956	624	{sell,watch}	radio	779	199	\N
990	thank	million	760	443	883	{whether,assume}	similar	297	911	\N
991	wife	newspaper	99	83	980	{how}	decide	723	346	\N
992	do	account	936	375	583	{rule,age}	age	723	392	\N
996	lose	ball	99	710	356	{defense,husband}	wind	518	451	\N
997	trip	yourself	830	789	888	{energy}	start	388	646	\N
998	page	guess	966	496	577	{crime}	social	39	516	\N
999	bar	your	204	697	256	{common}	set	123	281	\N
1000	smile	real	996	967	571	{certain}	him	6	381	\N
932	speak	own	486	687	956	{whole,sister}	perhaps	506	102	98
946	laugh	test	11	353	248	{space,only}	director	532	445	50
947	order	leader	961	730	247	{represent}	center	34	343	37
929	official	bill	773	231	792	{respond,defense}	chance	869	301	57
988	assume	decision	836	893	930	{peace,quite}	including	434	773	64
994	president	huge	623	206	116	{somebody}	sing	880	705	97
995	sense	PM	490	393	178	{American}	beautiful	226	635	48
984	wife	use	157	804	595	{key,money}	common	145	400	91
926	stand	smile	946	865	448	{special}	allow	628	484	93
916	political	drug	280	375	858	{the,world}	safe	356	765	76
972	grow	decision	343	873	682	{front,west}	rock	197	520	72
982	none	career	872	376	416	{surface,party}	movement	633	203	63
944	administration	away	764	313	42	{now,able}	officer	815	112	16
957	community	personal	855	973	497	{continue}	system	822	655	46
908	ball	to	352	438	922	{best,role}	front	115	257	28
906	street	century	963	630	8	{nature}	best	725	861	63
962	store	area	837	261	562	{section}	so	130	44	69
993	appear	oil	127	860	895	{author,state}	because	54	445	1
975	unit	modern	273	371	593	{civil,gas}	politics	513	657	49
956	technology	hot	184	800	967	{management}	pull	530	971	37
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (phone_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, carrier_lock, category_products_category_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1001	relate	rich	293	852	853	{along}	sport	56	year	\N	\N
1003	mention	yes	69	736	161	{past,range}	according	275	hard	\N	\N
1004	face	sister	784	830	134	{person}	begin	923	hair	\N	\N
1005	already	forward	198	945	783	{cultural}	total	617	bag	\N	\N
1006	little	top	427	222	801	{near,note}	dog	555	doctor	\N	\N
1007	figure	late	869	502	178	{heart}	top	823	box	\N	\N
1008	sport	hot	511	249	209	{our}	suggest	699	shake	\N	\N
1011	house	along	266	990	67	{now,though}	chair	81	daughter	\N	\N
1013	according	answer	581	481	444	{different}	reveal	950	radio	\N	\N
1014	fill	many	130	568	604	{during}	force	815	movement	\N	\N
1016	can	open	230	455	692	{artist,arm}	tend	341	training	\N	\N
1019	product	ten	680	738	478	{a,win}	picture	361	mother	\N	\N
1021	can	well	289	613	214	{affect}	hair	624	trouble	\N	\N
1022	difference	reason	226	290	109	{live}	whole	672	left	\N	\N
1023	themselves	relate	233	867	435	{behavior}	our	688	campaign	\N	\N
1027	financial	recognize	13	777	468	{among,fact}	eat	430	finish	\N	\N
1028	return	visit	250	664	108	{direction}	name	518	hear	\N	\N
1029	sing	common	53	757	392	{necessary}	any	956	tonight	\N	\N
1032	performance	provide	950	661	609	{create,report}	government	399	gun	\N	\N
1033	wall	consumer	986	244	531	{think}	news	574	lot	\N	\N
1034	after	argue	643	45	989	{picture}	stand	663	call	\N	\N
1035	consider	such	859	324	37	{attorney}	mention	450	exist	\N	\N
1036	bad	most	862	720	183	{cup,officer}	alone	150	human	\N	\N
1037	recently	blood	148	258	517	{condition,same}	work	709	although	\N	\N
1039	recently	move	970	393	859	{woman,student}	recognize	376	voice	\N	\N
1040	choice	discussion	216	39	543	{similar,happen}	shoulder	226	me	\N	\N
1041	to	ten	987	493	977	{instead}	remember	173	loss	\N	\N
1043	show	what	713	306	952	{know,where}	camera	846	affect	\N	\N
1046	know	increase	993	789	584	{physical}	wonder	778	herself	\N	\N
1047	drive	for	38	639	323	{chance}	movie	813	clear	\N	\N
1048	final	help	541	667	183	{mean,practice}	once	554	listen	\N	\N
1049	from	for	83	420	739	{data}	than	839	factor	\N	\N
1050	sell	current	558	45	811	{reveal}	level	328	the	\N	\N
1051	mission	in	959	684	955	{stock,glass}	although	463	official	\N	\N
1053	both	American	862	823	88	{suggest,dream}	senior	375	century	\N	\N
1054	six	study	11	292	217	{over,center}	become	384	we	\N	\N
1055	pay	everyone	855	984	641	{discover}	leg	98	month	\N	\N
1056	bag	how	457	816	863	{no,rich}	keep	315	measure	\N	\N
1057	leave	fine	717	178	307	{a}	cut	763	about	\N	\N
1058	table	traditional	338	934	341	{finish}	fly	991	step	\N	\N
1059	while	lead	42	53	983	{hundred}	economy	725	carry	\N	\N
1060	outside	today	187	616	474	{front,push}	great	990	order	\N	\N
1061	physical	wish	731	38	273	{recognize,view}	join	988	minute	\N	\N
1062	current	share	68	736	656	{follow}	contain	904	suggest	\N	\N
1063	high	agree	933	886	13	{minute}	full	770	laugh	\N	\N
1064	data	beat	424	356	277	{another,relate}	rate	40	prevent	\N	\N
1065	share	others	396	114	313	{study,item}	may	770	skin	\N	\N
1009	American	move	156	251	922	{on}	example	625	become	\N	1024
1012	call	visit	365	541	286	{tell}	strategy	673	say	\N	1004
1017	this	road	686	581	188	{rate}	hold	785	worry	\N	1086
1020	movement	floor	160	469	206	{wide,each}	computer	549	some	\N	1071
1031	south	six	497	378	563	{avoid,five}	another	30	guy	\N	1005
1044	stage	there	860	824	791	{music}	husband	778	seven	\N	1010
1068	together	race	487	726	783	{him}	class	949	major	\N	\N
1069	new	put	909	906	359	{oil}	believe	978	again	\N	\N
1071	tree	expert	660	892	564	{price}	stuff	136	ok	\N	\N
1073	project	adult	133	141	623	{including}	way	131	experience	\N	\N
1074	thank	thought	794	35	611	{while,range}	should	280	with	\N	\N
1075	draw	law	361	8	921	{agent}	anything	718	bad	\N	\N
1076	those	skill	856	9	66	{challenge,realize}	necessary	965	yard	\N	\N
1077	know	if	734	444	732	{hold,whom}	policy	317	already	\N	\N
1078	others	lead	702	137	402	{these,throughout}	social	774	buy	\N	\N
1080	set	politics	906	487	191	{network,property}	street	9	list	\N	\N
1081	home	three	319	236	712	{student}	drop	512	again	\N	\N
1082	often	yet	62	803	8	{to}	or	609	often	\N	\N
1084	side	pressure	729	402	825	{history,buy}	across	228	can	\N	\N
1086	hour	woman	741	224	166	{side}	risk	907	behind	\N	\N
1087	decision	strong	925	940	339	{space,pretty}	prepare	89	practice	\N	\N
1088	have	floor	125	955	823	{light}	somebody	210	hand	\N	\N
1090	whose	employee	795	723	85	{million,by}	with	586	sell	\N	\N
1093	raise	right	896	948	506	{guess}	war	468	city	\N	\N
1094	system	attorney	442	224	65	{finish}	PM	682	somebody	\N	\N
1095	sell	about	650	258	337	{wide,power}	boy	860	boy	\N	\N
1096	rich	necessary	378	596	335	{situation,man}	bed	530	in	\N	\N
1099	college	newspaper	710	123	459	{decade,exist}	because	9	baby	\N	\N
1100	matter	just	231	977	312	{health,throughout}	value	685	write	\N	\N
1002	against	key	956	320	673	{order}	deep	131	result	14	\N
1066	show	middle	255	235	531	{lawyer,theory}	likely	581	stuff	65	\N
1010	music	suddenly	629	718	983	{officer}	decade	562	yourself	11	\N
1045	always	sea	926	929	219	{around,color}	child	127	agent	1	\N
1072	hand	control	411	143	626	{together,growth}	paper	199	education	9	\N
1042	soon	firm	243	202	543	{why,condition}	free	658	least	18	\N
1067	anyone	must	271	11	6	{large}	leave	800	court	37	\N
1052	play	true	766	196	915	{cold,reality}	base	475	unit	35	\N
1025	ability	better	209	652	716	{one}	would	317	beat	96	\N
1026	letter	water	765	307	637	{task}	stop	439	tree	72	\N
1098	a	write	915	422	356	{have,really}	should	355	space	65	\N
1089	safe	population	337	815	574	{response,dog}	yourself	812	probably	44	\N
1024	still	show	858	308	505	{card}	age	385	probably	19	\N
1030	where	under	855	18	527	{fall,billion}	expert	950	lot	82	\N
1070	several	board	613	951	866	{sound}	be	571	consider	42	\N
1018	prepare	meeting	940	50	377	{modern,level}	top	166	what	62	\N
1091	business	technology	365	966	915	{watch}	event	186	magazine	48	\N
1015	magazine	tell	906	446	760	{traditional,more}	number	377	speak	60	\N
1079	office	support	369	803	459	{product,Congress}	technology	300	wrong	\N	1092
1083	chance	perform	475	3	1000	{forward}	enjoy	136	section	\N	1040
1085	how	and	608	873	865	{hotel,control}	certainly	188	available	\N	1055
1092	through	go	633	105	363	{scene}	inside	704	young	\N	1022
1097	between	soldier	636	614	667	{true}	interview	195	down	\N	1093
1038	sure	human	96	525	127	{resource}	civil	714	often	72	1097
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (accessories_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, accessory_type, category_products_category_id) FROM stdin;
1101	soon	view	975	695	144	{ready}	decision	285	appear	\N
1102	third	statement	723	522	631	{public}	fire	167	door	\N
1103	rate	government	864	594	318	{indeed}	him	677	door	\N
1104	career	voice	114	273	654	{skin}	bed	961	buy	\N
1107	worker	care	56	145	505	{education,region}	us	516	heart	\N
1108	rock	benefit	299	763	385	{tonight}	analysis	580	camera	\N
1109	Republican	water	448	133	702	{dream}	help	439	out	\N
1111	current	environmental	534	190	64	{market}	wind	195	recent	\N
1112	analysis	toward	20	356	244	{nation}	tax	727	short	\N
1114	myself	start	425	170	804	{wish}	boy	1	nothing	\N
1115	surface	little	225	967	523	{likely}	within	672	after	\N
1116	chair	movie	160	881	562	{blue}	tonight	818	tree	\N
1118	could	assume	370	341	749	{carry}	along	97	consider	\N
1119	alone	movement	262	900	996	{PM,piece}	remain	365	majority	\N
1121	take	simple	690	470	39	{wife,inside}	specific	319	worry	\N
1122	put	house	952	308	692	{whose,try}	light	315	mission	\N
1123	speech	today	813	395	495	{evidence,may}	there	689	manager	\N
1124	buy	American	123	600	977	{whole}	turn	732	friend	\N
1125	sell	owner	109	435	76	{evening}	major	127	share	\N
1126	station	star	646	10	252	{when,seven}	meet	936	loss	\N
1127	I	fill	73	968	218	{six,base}	fish	220	partner	\N
1128	herself	west	931	304	293	{become,section}	hotel	477	sign	\N
1129	hundred	space	714	572	587	{gun}	travel	713	hundred	\N
1130	project	control	474	386	86	{quickly}	us	76	attack	\N
1132	available	though	738	303	835	{form,grow}	begin	190	security	\N
1133	control	Republican	658	622	946	{teach,film}	small	385	last	\N
1134	seven	money	865	873	746	{evening,PM}	mention	227	recent	\N
1135	between	region	253	944	506	{his}	personal	300	accept	\N
1136	strategy	four	275	486	506	{surface,structure}	tend	773	onto	\N
1137	deep	bill	113	608	740	{budget}	two	220	fear	\N
1138	effect	rise	706	458	398	{police}	series	432	current	\N
1140	next	method	719	700	396	{professor,civil}	people	383	support	\N
1141	option	natural	539	146	820	{laugh}	case	917	them	\N
1142	reduce	future	525	730	164	{than}	wide	597	night	\N
1143	week	need	795	218	778	{thank,work}	myself	671	five	\N
1145	family	else	22	725	463	{matter,occur}	test	685	force	\N
1146	large	who	691	593	354	{air,phone}	environment	729	would	\N
1148	recently	cause	685	473	592	{answer,either}	offer	836	charge	\N
1150	significant	first	284	889	455	{environmental}	tell	114	rise	\N
1152	design	customer	841	912	859	{keep}	change	522	trip	\N
1153	onto	go	926	934	328	{until}	forward	159	school	\N
1155	notice	money	864	31	691	{beat,course}	main	408	right	\N
1156	base	call	231	140	74	{concern}	data	170	theory	\N
1157	discover	stage	480	617	745	{boy,population}	community	815	red	\N
1158	area	sound	816	945	226	{special,class}	goal	619	beyond	\N
1159	happen	special	401	275	9	{from,similar}	middle	154	listen	\N
1160	finally	bill	124	760	442	{somebody,mention}	mouth	757	hospital	\N
1161	pull	dark	687	309	706	{what,important}	majority	568	piece	\N
1163	improve	bank	918	792	170	{age,put}	sea	835	start	\N
1164	history	gas	444	114	949	{one}	among	368	try	\N
1165	vote	campaign	663	326	315	{go}	under	314	key	\N
1166	suffer	because	822	463	33	{like,list}	all	292	material	\N
1168	quite	simply	768	281	173	{member,song}	there	524	drug	\N
1170	big	loss	713	37	132	{science}	star	393	game	\N
1171	artist	piece	331	348	853	{add,instead}	because	172	money	\N
1172	stay	check	300	28	773	{list,building}	drop	19	report	\N
1173	attack	need	557	654	628	{talk}	until	431	front	\N
1174	recent	talk	553	847	476	{say}	attack	827	present	\N
1176	more	never	128	895	589	{show}	water	811	despite	\N
1178	art	campaign	600	34	848	{wide,in}	military	484	in	\N
1179	expert	young	889	556	327	{senior}	figure	9	camera	\N
1180	service	movie	131	484	483	{do,sell}	nor	443	quickly	\N
1181	training	act	647	528	104	{general,food}	morning	464	Republican	\N
1183	next	woman	921	911	434	{forget}	follow	933	herself	\N
1185	challenge	range	468	371	114	{same,scene}	have	820	leg	\N
1186	different	factor	677	104	892	{conference}	than	617	outside	\N
1187	mother	teacher	326	163	893	{offer}	sell	339	as	\N
1188	surface	those	790	84	214	{hold,add}	as	571	court	\N
1189	page	degree	598	976	68	{green,civil}	couple	579	public	\N
1190	process	piece	473	834	513	{various,international}	situation	396	green	\N
1191	section	per	373	536	789	{soon,order}	continue	829	window	\N
1192	magazine	thousand	179	858	696	{rich}	sense	1	defense	\N
1193	phone	hear	180	316	182	{the}	morning	213	really	\N
1194	job	seem	880	794	138	{PM}	tax	942	according	\N
1195	economy	hospital	469	810	142	{leader}	market	928	heart	\N
1196	matter	far	497	519	562	{adult,decade}	just	404	herself	\N
1197	together	town	626	655	766	{best,father}	moment	558	type	\N
1198	standard	respond	980	662	517	{well,discover}	trip	482	right	\N
1199	white	table	287	489	129	{tough}	quite	388	apply	\N
1200	real	back	37	977	956	{light,first}	recently	625	interesting	\N
1147	rock	many	373	877	224	{four,back}	enjoy	209	if	50
1110	significant	pattern	499	65	605	{win,Mr}	tree	545	lawyer	97
1106	summer	government	931	254	954	{visit,run}	include	442	see	16
1149	son	kind	278	704	639	{data,give}	red	292	chair	50
1117	marriage	discover	26	146	558	{TV,tough}	lawyer	236	indicate	11
1105	camera	firm	185	724	656	{table,cultural}	into	584	most	31
1113	social	property	540	540	666	{heart,several}	individual	572	president	85
1131	really	contain	992	309	740	{husband,law}	instead	210	its	78
1151	big	organization	965	334	459	{play,member}	final	532	side	68
1184	address	case	941	360	832	{dog}	fire	85	per	28
1139	after	Mrs	64	964	747	{common}	create	780	address	46
1182	level	personal	565	529	303	{pressure}	be	54	street	76
1177	campaign	people	393	92	512	{former}	them	363	could	25
1120	bar	happen	609	891	44	{mother}	could	875	ball	85
1144	lose	himself	947	318	309	{knowledge,test}	still	138	instead	51
1167	huge	practice	573	643	218	{point,run}	brother	984	tough	95
1162	whatever	nothing	63	679	764	{institution}	approach	100	agree	26
1175	finally	worry	633	522	880	{service,last}	song	109	natural	4
1154	majority	heart	161	261	726	{stand}	eight	422	knowledge	25
1169	tonight	full	347	569	837	{team}	unit	918	indeed	22
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (appliance_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, energy_rating, category_products_category_id) FROM stdin;
1201	unit	each	802	144	451	{member}	lose	trouble	\N
1202	officer	half	159	924	400	{soon,capital}	return	rest	\N
1203	parent	garden	643	690	64	{get,through}	country	charge	\N
1204	perform	building	726	232	683	{painting}	so	feeling	\N
1205	leader	sense	293	607	794	{investment,wrong}	standard	affect	\N
1206	third	event	959	339	157	{husband}	however	pattern	\N
1207	industry	movie	677	844	633	{must,I}	low	suggest	\N
1208	wrong	movement	925	687	861	{apply}	direction	yet	\N
1209	movie	loss	76	1	877	{describe}	training	oil	\N
1210	small	stock	683	77	837	{white}	resource	laugh	\N
1211	know	employee	899	882	135	{black,set}	apply	office	\N
1213	operation	rest	346	699	286	{hand,show}	way	personal	\N
1215	movie	about	420	83	363	{black}	lose	college	\N
1216	walk	too	433	462	852	{water,energy}	street	close	\N
1218	collection	growth	927	677	58	{project}	entire	stop	\N
1219	system	economic	418	786	929	{these}	need	four	\N
1220	major	eat	207	70	889	{operation}	bag	quite	\N
1222	eight	eye	335	717	824	{hit,forget}	ago	artist	\N
1223	born	scene	675	318	808	{party}	activity	this	\N
1224	should	perhaps	464	54	45	{check,tax}	some	and	\N
1225	also	high	164	783	25	{unit,support}	focus	represent	\N
1226	election	every	25	865	152	{cost,career}	major	help	\N
1227	such	base	110	240	263	{save,hit}	decide	over	\N
1228	view	life	512	197	945	{side}	third	always	\N
1230	view	at	659	864	242	{candidate}	just	else	\N
1232	case	her	607	632	472	{until}	themselves	his	\N
1233	each	budget	4	960	836	{main}	move	five	\N
1234	dark	often	582	375	668	{herself}	else	world	\N
1236	else	guy	308	238	386	{indicate,so}	expert	able	\N
1237	country	choice	559	139	945	{finish,he}	nothing	heavy	\N
1238	season	company	143	305	847	{will}	technology	happen	\N
1239	throughout	population	307	536	103	{how}	sign	government	\N
1240	evening	year	451	410	656	{save}	culture	drop	\N
1242	write	alone	489	989	658	{pick}	never	during	\N
1243	big	majority	898	301	711	{yourself,day}	project	much	\N
1244	few	could	481	378	185	{tree}	guess	choice	\N
1245	leg	catch	489	893	562	{computer}	civil	media	\N
1246	ok	party	532	756	806	{include}	year	hour	\N
1247	civil	everyone	142	444	716	{Democrat}	letter	technology	\N
1248	time	air	735	374	504	{wind}	away	receive	\N
1251	eight	seek	218	443	340	{yes,always}	wish	low	\N
1252	organization	future	461	453	838	{mind,check}	simply	join	\N
1254	local	sing	381	41	209	{trade,according}	wish	positive	\N
1255	different	offer	134	847	954	{because}	black	wear	\N
1256	court	huge	807	779	905	{six,itself}	walk	quality	\N
1257	never	choose	859	205	336	{matter}	up	while	\N
1258	consider	present	855	6	891	{degree}	vote	evening	\N
1259	begin	modern	204	964	736	{art,perform}	politics	themselves	\N
1260	must	win	200	311	835	{move,improve}	defense	dinner	\N
1261	full	contain	676	798	384	{for}	single	lawyer	\N
1262	consider	claim	29	695	913	{house}	director	information	\N
1263	because	cause	611	285	313	{in}	look	represent	\N
1264	its	bring	818	682	718	{number}	according	change	\N
1265	sense	three	903	16	357	{budget}	return	side	\N
1267	kind	change	863	503	467	{popular}	well	garden	\N
1270	bring	will	203	438	144	{agreement,direction}	note	cold	\N
1271	measure	skin	411	602	361	{leave}	bed	get	\N
1272	national	election	39	981	874	{gas,thing}	family	herself	\N
1273	top	act	821	871	848	{job,quite}	friend	affect	\N
1274	fear	develop	295	720	382	{including,affect}	training	your	\N
1275	choice	hair	995	947	384	{bag}	owner	itself	\N
1276	production	player	955	876	118	{policy,position}	newspaper	near	\N
1278	property	meet	686	864	780	{Democrat,her}	modern	no	\N
1279	large	believe	284	54	504	{audience,star}	toward	get	\N
1280	everything	middle	855	722	439	{specific,air}	positive	song	\N
1282	officer	business	175	524	43	{let,difficult}	community	consumer	\N
1283	very	go	263	197	323	{herself}	area	meet	\N
1285	hair	model	431	432	580	{allow,office}	skin	opportunity	\N
1286	management	add	622	743	133	{start}	probably	new	\N
1287	new	skill	265	246	720	{tend,as}	control	place	\N
1288	degree	worry	585	896	189	{nothing,mind}	democratic	within	\N
1290	their	character	313	523	142	{while}	war	recent	\N
1291	future	final	422	38	479	{between,safe}	open	carry	\N
1292	when	agency	875	921	531	{property}	central	side	\N
1295	single	response	832	888	421	{she}	yard	let	\N
1296	side	about	881	269	616	{detail}	over	under	\N
1297	best	month	299	266	334	{go}	avoid	on	\N
1298	practice	section	144	557	57	{church}	election	with	\N
1217	behind	capital	515	945	105	{democratic}	bag	draw	62
1231	red	decade	787	696	180	{table}	claim	walk	70
1293	learn	something	397	109	706	{degree,trip}	catch	hour	74
1212	store	full	63	214	879	{direction,staff}	wrong	meeting	48
1281	pressure	charge	596	906	576	{author}	reveal	perhaps	61
1268	force	lose	995	232	614	{back,thousand}	inside	show	96
1249	side	begin	50	252	851	{doctor}	how	nice	87
1221	rest	seem	467	910	527	{follow}	would	full	3
1269	decision	culture	64	85	248	{need}	only	soldier	53
1294	same	tough	424	475	111	{figure,audience}	region	inside	69
1289	water	thus	841	436	18	{prevent}	draw	particularly	2
1299	say	event	324	760	100	{energy}	foreign	theory	15
1266	it	less	712	580	769	{effect,they}	say	town	89
1241	miss	cell	32	988	832	{maybe,choose}	usually	yeah	42
1300	include	response	310	762	423	{stay}	garden	them	83
1277	prevent	above	309	981	280	{star}	tonight	wind	19
1250	play	response	992	372	69	{any}	occur	probably	41
1214	write	mention	206	846	703	{require}	home	officer	9
1229	station	oil	135	293	921	{police}	leader	positive	59
1253	lose	analysis	902	673	610	{book,these}	action	professor	45
1235	sign	each	277	836	98	{challenge}	theory	benefit	44
1284	parent	simply	759	115	628	{form}	charge	share	78
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (kitchenappliance_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, energy_rating, warranty_years, category_products_category_id) FROM stdin;
1301	fish	successful	82	999	537	{man,begin}	most	knowledge	933	\N
1302	future	red	997	534	65	{choose,program}	among	build	375	\N
1303	often	house	946	644	849	{full}	main	information	801	\N
1304	program	continue	472	416	627	{detail,black}	himself	husband	698	\N
1305	act	run	289	511	998	{people}	learn	section	543	\N
1307	learn	daughter	991	211	624	{onto,quickly}	of	because	492	\N
1308	contain	hour	528	152	788	{ground}	close	to	929	\N
1310	watch	human	365	654	759	{significant,month}	real	bed	702	\N
1311	get	current	258	741	370	{smile,practice}	risk	learn	955	\N
1312	effort	plan	318	417	409	{a,another}	central	single	449	\N
1313	age	doctor	378	334	907	{such,difficult}	young	always	156	\N
1314	hold	explain	819	136	718	{attack,turn}	especially	table	257	\N
1315	group	design	653	921	711	{care,beyond}	senior	cold	438	\N
1316	somebody	kitchen	984	592	483	{listen}	art	agent	302	\N
1317	send	us	544	825	506	{whom,oil}	purpose	situation	507	\N
1318	eight	moment	135	458	149	{tree,civil}	home	their	978	\N
1319	dark	whose	866	155	898	{safe}	of	worker	342	\N
1320	water	send	799	72	700	{kitchen,west}	task	agent	175	\N
1321	culture	beautiful	812	431	641	{lay,rich}	agent	doctor	312	\N
1322	yes	four	277	227	632	{price}	character	central	877	\N
1324	view	in	270	498	737	{order,executive}	them	great	471	\N
1325	buy	include	838	47	438	{TV,together}	resource	now	500	\N
1326	while	condition	543	154	330	{professional}	benefit	less	211	\N
1328	every	population	909	915	330	{investment}	either	action	481	\N
1330	wear	option	944	539	159	{type,area}	both	trade	863	\N
1331	when	become	160	872	63	{film}	increase	reason	722	\N
1333	rather	two	297	38	447	{baby}	after	dinner	220	\N
1334	whatever	mouth	28	972	590	{unit,strong}	visit	century	415	\N
1336	wall	tonight	443	359	886	{carry,show}	hour	rate	913	\N
1337	put	partner	333	844	698	{blood,water}	build	Democrat	124	\N
1338	particularly	lay	692	381	35	{participant,perform}	once	mention	209	\N
1339	set	consumer	743	602	112	{fill,take}	perform	simple	18	\N
1341	sign	moment	409	922	472	{week,piece}	person	kind	560	\N
1342	I	for	287	382	148	{least,deal}	fear	positive	60	\N
1343	accept	wife	107	388	910	{consider,hope}	put	oil	942	\N
1344	watch	past	321	912	8	{think,put}	age	civil	645	\N
1345	camera	like	241	140	322	{network}	partner	clear	209	\N
1346	former	show	497	887	176	{couple,rise}	attack	appear	353	\N
1348	make	order	971	63	619	{husband,unit}	defense	themselves	813	\N
1350	matter	beat	482	374	438	{sell,Democrat}	hundred	owner	70	\N
1351	little	heavy	997	965	231	{above,event}	between	moment	964	\N
1352	remember	bag	57	333	107	{analysis,human}	huge	happen	559	\N
1353	wall	positive	733	711	512	{participant,Republican}	serious	different	146	\N
1354	affect	democratic	928	208	71	{him,live}	hotel	surface	509	\N
1355	recently	who	906	499	480	{movement,hope}	day	table	477	\N
1356	this	build	557	83	505	{rate,scientist}	contain	they	746	\N
1357	build	response	560	859	661	{seven}	coach	hot	725	\N
1358	them	maintain	586	828	836	{firm}	show	investment	914	\N
1359	including	we	427	96	761	{there}	force	face	936	\N
1360	assume	surface	928	835	392	{would}	lose	them	434	\N
1361	language	blue	942	751	571	{why}	thousand	process	970	\N
1363	forget	size	850	104	84	{recent,language}	sometimes	might	128	\N
1364	his	least	694	597	573	{more,after}	every	send	427	\N
1365	general	truth	700	405	77	{very,factor}	other	table	880	\N
1367	campaign	million	762	798	447	{such,everyone}	someone	to	408	\N
1368	box	local	638	558	623	{energy}	network	many	469	\N
1369	idea	key	619	490	397	{relationship}	myself	line	341	\N
1370	plan	wish	285	642	851	{avoid}	whose	place	272	\N
1371	my	middle	675	45	97	{summer}	along	activity	750	\N
1372	director	person	675	37	5	{painting,human}	with	behavior	347	\N
1375	season	through	894	696	405	{very}	your	smile	29	\N
1376	conference	firm	140	246	990	{thousand,foot}	garden	street	665	\N
1377	television	good	400	967	322	{success}	often	approach	296	\N
1378	theory	program	627	143	583	{shake}	end	walk	568	\N
1380	that	too	916	875	204	{father}	result	politics	853	\N
1381	bag	billion	973	218	502	{member,turn}	also	chair	807	\N
1382	window	win	373	481	649	{newspaper,ability}	traditional	listen	544	\N
1383	player	employee	1	431	917	{organization}	away	learn	728	\N
1384	visit	out	389	849	879	{nearly,idea}	paper	public	634	\N
1385	generation	set	959	965	28	{draw,parent}	him	many	112	\N
1386	within	claim	827	526	879	{head}	small	situation	439	\N
1387	peace	home	264	133	905	{back,summer}	heart	material	582	\N
1388	data	well	888	781	561	{hit,audience}	point	magazine	258	\N
1390	just	describe	359	415	453	{hear,treatment}	international	whatever	432	\N
1391	half	face	940	693	519	{character,bag}	green	account	512	\N
1392	wonder	policy	386	550	29	{store}	interest	probably	848	\N
1394	at	rock	21	359	79	{hospital}	lose	any	710	\N
1397	thought	anyone	286	775	485	{too,marriage}	field	strong	192	\N
1398	partner	response	239	45	300	{evidence,billion}	picture	protect	557	\N
1399	north	strong	568	928	465	{baby,plant}	nearly	serve	842	\N
1400	bring	order	252	12	312	{can,about}	by	number	153	\N
1395	hundred	morning	487	126	237	{evidence}	music	themselves	471	58
1340	message	director	265	982	988	{account,never}	factor	ask	114	39
1347	hold	paper	225	664	788	{religious}	story	similar	630	33
1335	attack	manage	832	299	253	{knowledge,recent}	meeting	lay	847	52
1374	sit	respond	18	442	563	{street,still}	anything	raise	126	58
1349	long	card	283	688	694	{wind,assume}	dark	interview	473	53
1393	high	skin	500	870	331	{behavior}	week	say	106	45
1362	tend	throw	151	4	574	{list}	approach	election	958	5
1327	mention	boy	754	391	125	{such}	star	talk	804	21
1366	check	fine	843	869	871	{ago,only}	development	her	308	27
1309	safe	avoid	720	136	435	{tonight}	visit	good	77	7
1323	reveal	middle	672	492	367	{fear}	serve	national	852	56
1329	top	what	644	534	819	{more,each}	fear	necessary	887	31
1396	else	Mr	914	759	78	{can}	product	prevent	644	22
1379	table	bar	145	778	150	{truth}	country	suddenly	744	67
1332	would	with	409	343	660	{none,cover}	kitchen	position	500	26
1373	forward	body	43	166	432	{artist,into}	race	friend	634	53
1389	student	force	919	125	898	{appear}	ready	himself	729	73
1306	enter	fish	139	19	648	{what}	question	less	905	23
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (apparel_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, category_products_category_id) FROM stdin;
1401	glass	though	204	202	186	{popular,heart}	when	significant	\N
1402	because	perhaps	74	263	969	{third}	camera	lose	\N
1403	or	director	402	643	817	{look,left}	ability	field	\N
1404	recent	bad	764	787	186	{prove,edge}	memory	each	\N
1405	people	season	912	958	408	{station}	itself	per	\N
1406	consider	key	920	833	977	{should,financial}	increase	data	\N
1407	action	American	619	366	237	{prevent}	experience	consider	\N
1408	be	together	810	853	554	{may}	community	appear	\N
1409	act	begin	466	638	129	{commercial,perform}	even	edge	\N
1410	town	spend	948	396	153	{operation,far}	charge	their	\N
1411	case	term	352	257	855	{result}	particularly	religious	\N
1412	instead	early	897	147	193	{value,fly}	if	relate	\N
1414	some	out	952	1000	664	{attorney}	evening	from	\N
1415	lose	power	879	471	292	{modern}	week	energy	\N
1417	show	force	767	80	619	{answer}	friend	with	\N
1418	power	wrong	874	208	969	{raise}	national	audience	\N
1419	different	race	910	32	447	{oil}	kid	attention	\N
1421	into	force	54	458	634	{level,person}	really	drug	\N
1422	economic	resource	725	294	593	{trip}	tend	yes	\N
1425	central	main	236	527	325	{believe}	difference	friend	\N
1427	notice	reveal	273	656	430	{lay,character}	pressure	box	\N
1428	million	this	118	19	979	{piece}	only	technology	\N
1431	quite	other	36	31	268	{itself}	build	sense	\N
1432	left	word	32	743	299	{will,entire}	image	reality	\N
1433	listen	child	738	740	613	{rest,term}	office	dark	\N
1435	situation	else	180	360	736	{personal}	during	certain	\N
1436	indeed	politics	805	379	148	{must,all}	part	property	\N
1437	very	she	199	937	473	{we,town}	station	people	\N
1438	fact	seek	459	356	630	{study}	mean	effort	\N
1440	community	for	91	749	320	{event,total}	common	television	\N
1441	sort	most	84	125	602	{improve,wide}	anyone	ask	\N
1442	energy	phone	946	256	570	{herself,ever}	difference	bed	\N
1443	always	hit	793	905	936	{especially,personal}	series	free	\N
1444	series	thank	829	932	128	{partner}	new	necessary	\N
1445	sell	important	733	417	217	{realize,agree}	gun	morning	\N
1446	star	rich	969	140	794	{true}	land	when	\N
1447	read	soon	856	82	445	{century}	society	already	\N
1448	ground	economy	391	158	585	{charge}	politics	off	\N
1449	family	foot	948	309	263	{other,seem}	those	cost	\N
1452	issue	nice	494	675	920	{financial,necessary}	beautiful	recent	\N
1453	ask	consider	909	218	601	{offer,positive}	understand	chance	\N
1456	add	with	949	677	413	{lay,close}	enough	ability	\N
1457	ok	television	330	828	111	{who}	quality	without	\N
1458	four	mission	209	951	383	{relate,behind}	major	federal	\N
1459	scientist	often	647	333	578	{wrong}	grow	small	\N
1460	instead	perhaps	57	727	470	{color}	minute	buy	\N
1461	party	letter	466	511	522	{quality}	thing	a	\N
1462	difficult	my	822	880	285	{more,use}	approach	before	\N
1463	according	list	631	160	291	{their}	military	yard	\N
1464	similar	beat	996	326	229	{author,land}	capital	record	\N
1466	protect	newspaper	875	426	217	{free,certain}	authority	foot	\N
1467	public	care	799	137	525	{result}	pull	medical	\N
1468	another	game	904	398	30	{decide,culture}	white	place	\N
1469	others	here	143	404	355	{positive,wear}	material	sound	\N
1470	so	involve	617	150	750	{wife}	woman	often	\N
1471	community	could	783	989	703	{sense}	Mrs	yourself	\N
1472	would	manager	773	988	205	{forget,discuss}	parent	memory	\N
1474	mother	if	259	571	993	{tend}	relate	happen	\N
1477	act	rest	149	175	626	{political,budget}	describe	single	\N
1479	affect	would	414	936	55	{body,blood}	three	born	\N
1483	south	station	856	365	731	{very,growth}	suffer	concern	\N
1484	indicate	treatment	248	420	141	{good}	practice	total	\N
1485	product	option	700	942	411	{important}	such	east	\N
1486	dog	important	253	193	582	{argue}	dinner	begin	\N
1489	candidate	kitchen	54	952	526	{finally,respond}	enjoy	account	\N
1490	energy	north	884	550	775	{fact,day}	second	throw	\N
1494	still	say	132	366	642	{unit,whose}	real	wind	\N
1495	billion	officer	95	475	528	{personal,participant}	current	seek	\N
1496	medical	meet	387	797	270	{southern}	rock	church	\N
1497	identify	civil	469	479	681	{on}	enjoy	east	\N
1499	cold	society	804	964	541	{end,real}	first	trial	\N
1500	training	guess	434	948	243	{fear,land}	although	to	\N
1430	which	than	59	336	163	{support}	myself	state	4
1482	check	watch	626	696	676	{per,rock}	occur	wind	54
1498	training	clear	270	721	967	{in}	wonder	bring	86
1434	possible	course	346	602	92	{middle}	condition	home	51
1475	single	threat	542	773	537	{ball,significant}	produce	central	66
1492	forget	also	939	234	359	{run,sign}	strategy	one	45
1439	begin	well	253	239	98	{later}	house	myself	52
1488	way	out	925	790	214	{suggest,well}	very	couple	23
1416	just	another	537	772	936	{pressure}	land	effect	14
1450	successful	both	880	396	121	{ground}	mission	usually	91
1491	moment	own	358	676	725	{home,issue}	skill	party	34
1473	government	our	485	388	791	{not,follow}	peace	ability	72
1455	score	thought	976	653	201	{sense}	there	suggest	4
1424	well	even	250	117	464	{gas,employee}	stage	image	31
1493	team	trouble	74	231	930	{rise,piece}	skin	sure	25
1481	likely	forward	228	925	346	{friend,claim}	kind	story	78
1413	stock	hold	219	642	7	{office}	president	although	62
1454	begin	soldier	154	643	275	{control,out}	soon	show	54
1476	test	their	25	998	391	{writer,them}	quite	onto	44
1478	Mr	million	102	417	117	{with,only}	audience	page	95
1451	sign	skill	912	676	369	{until,lead}	himself	Mr	68
1429	between	head	937	380	514	{run}	likely	teach	1
1487	believe	any	581	348	192	{law}	put	hold	64
1426	example	teacher	687	314	959	{word}	will	teacher	74
1420	decision	you	176	451	975	{away,score}	fly	structure	48
1480	citizen	worry	84	962	578	{mission}	door	trip	26
1423	tax	movement	995	557	968	{skill}	maybe	black	58
1465	so	phone	321	202	778	{line}	full	resource	74
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (clothing_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, material, category_products_category_id) FROM stdin;
1501	once	design	721	477	824	{policy,many}	really	throughout	seem	\N
1502	garden	free	452	533	771	{hundred}	answer	result	yard	\N
1503	successful	trouble	149	826	736	{stage}	happen	wide	reality	\N
1505	begin	forget	280	374	230	{wait}	style	run	act	\N
1506	other	central	986	456	367	{old,go}	sense	investment	style	\N
1507	I	responsibility	855	716	40	{work}	lawyer	series	say	\N
1508	week	plan	399	545	362	{government,page}	region	of	environmental	\N
1512	whatever	Mrs	761	318	942	{conference}	human	to	we	\N
1513	particularly	building	438	571	600	{plant}	happy	against	make	\N
1514	lead	think	252	286	95	{none,great}	front	war	animal	\N
1515	outside	responsibility	402	697	519	{treat,human}	article	local	oil	\N
1517	age	together	423	230	718	{see}	yourself	so	hit	\N
1518	kid	south	494	125	528	{fear,grow}	age	student	term	\N
1519	its	it	867	583	769	{see}	general	whole	top	\N
1520	yet	up	33	84	331	{way}	better	movie	likely	\N
1521	hope	serious	881	454	93	{Mrs}	between	enough	television	\N
1525	water	necessary	507	129	707	{commercial,new}	happen	cover	may	\N
1526	value	door	447	491	302	{president}	far	meet	name	\N
1527	blood	eat	622	257	558	{machine}	year	rate	kitchen	\N
1528	rate	room	612	915	94	{agent,defense}	sit	experience	safe	\N
1530	change	item	877	23	770	{nature,need}	whom	discussion	audience	\N
1531	control	own	43	136	342	{ball,almost}	seek	defense	color	\N
1532	open	section	569	824	846	{toward}	team	may	daughter	\N
1533	understand	development	617	798	462	{reach,listen}	individual	list	president	\N
1534	management	sister	336	212	438	{wind,action}	similar	truth	team	\N
1535	actually	view	66	390	931	{send,factor}	across	still	support	\N
1536	Congress	family	856	803	5	{minute}	various	second	summer	\N
1538	record	national	581	592	388	{save}	director	war	attention	\N
1539	woman	marriage	996	401	78	{occur}	yourself	behind	friend	\N
1540	help	when	864	250	65	{common,mission}	forward	police	Mr	\N
1541	then	itself	881	871	540	{low,lose}	like	once	size	\N
1542	bit	which	567	873	319	{box}	task	behind	reflect	\N
1543	south	finish	148	506	497	{decade,so}	recently	world	director	\N
1544	truth	big	154	561	120	{or}	trouble	upon	reality	\N
1546	real	notice	509	641	679	{purpose,sell}	reduce	talk	radio	\N
1547	participant	point	148	152	324	{field,important}	reduce	standard	risk	\N
1548	international	represent	453	280	855	{listen,knowledge}	line	agree	street	\N
1549	nor	focus	607	979	804	{necessary,memory}	in	stage	can	\N
1550	long	American	723	926	407	{appear}	rise	usually	task	\N
1551	join	conference	23	221	563	{result}	series	sense	stuff	\N
1552	bar	meeting	253	625	689	{goal,drug}	believe	eye	affect	\N
1553	commercial	method	992	444	571	{week}	remember	model	wife	\N
1554	less	less	85	30	797	{involve}	true	federal	little	\N
1555	they	tough	878	662	340	{dark}	nearly	enough	building	\N
1556	activity	you	744	951	206	{child}	investment	today	chance	\N
1557	product	hair	563	87	523	{step}	world	series	strong	\N
1558	technology	figure	63	308	653	{parent,behavior}	control	method	difficult	\N
1560	music	social	888	910	357	{speech,art}	the	question	enter	\N
1561	pay	husband	381	788	211	{collection}	throughout	actually	serve	\N
1562	on	medical	628	596	512	{any}	traditional	dark	can	\N
1563	difficult	could	183	391	3	{another}	health	himself	charge	\N
1564	several	paper	18	272	375	{box}	people	writer	enough	\N
1565	field	everybody	417	675	194	{step}	late	respond	short	\N
1566	work	letter	429	914	678	{suffer}	ask	nation	home	\N
1568	note	with	176	599	855	{race}	poor	defense	reveal	\N
1569	no	family	837	643	213	{bank}	music	identify	system	\N
1570	recognize	fish	59	299	151	{community,story}	human	father	step	\N
1572	hope	democratic	168	915	525	{herself}	social	month	investment	\N
1573	box	parent	512	879	661	{physical}	idea	these	public	\N
1574	Democrat	maintain	929	459	188	{later,try}	bank	run	song	\N
1576	in	instead	587	722	45	{really}	lot	then	blue	\N
1578	PM	continue	246	832	767	{station,that}	section	green	employee	\N
1579	discussion	point	849	964	897	{system,financial}	specific	your	too	\N
1580	similar	according	734	934	241	{fund,door}	challenge	strategy	town	\N
1581	Congress	piece	864	802	910	{expect,attention}	meeting	of	strong	\N
1582	leader	listen	901	421	826	{physical}	choose	exist	true	\N
1583	any	rule	470	526	693	{maybe,light}	of	imagine	account	\N
1585	benefit	million	434	127	558	{commercial}	worry	piece	practice	\N
1586	society	leg	780	427	953	{maybe,shake}	discuss	less	serious	\N
1587	occur	security	525	391	616	{not,then}	clear	political	hear	\N
1592	support	two	386	652	961	{player,end}	her	company	forward	\N
1594	weight	type	321	877	181	{know,impact}	else	series	eight	\N
1595	least	picture	680	815	556	{take}	physical	set	action	\N
1596	clearly	beautiful	979	195	77	{ability}	perhaps	soon	along	\N
1597	various	require	88	261	699	{defense,first}	building	should	fly	\N
1598	city	appear	759	229	505	{thank,since}	big	budget	set	\N
1599	Mr	area	882	35	959	{rather,before}	short	behind	will	\N
1600	reveal	media	353	412	945	{product,check}	animal	try	significant	\N
1509	education	focus	678	835	865	{civil,cup}	also	baby	various	73
1510	place	eight	310	522	267	{effort,international}	particularly	money	possible	10
1537	condition	store	310	749	837	{now}	then	ahead	sing	98
1504	to	point	806	709	102	{bill}	participant	but	set	10
1545	condition	agree	275	556	804	{with}	commercial	summer	fact	65
1524	power	adult	813	905	52	{develop}	degree	shoulder	special	29
1577	speech	big	667	223	876	{see,ok}	call	level	occur	83
1575	manager	exist	274	359	454	{decade}	else	democratic	despite	28
1523	real	hit	88	703	483	{high}	no	region	do	11
1559	return	itself	601	909	727	{thing,reach}	vote	idea	but	5
1516	effect	station	300	620	498	{collection}	phone	cause	race	89
1529	lay	tell	35	239	965	{alone}	help	everything	feeling	20
1588	next	quality	97	816	208	{quite}	dream	official	meeting	20
1511	attorney	in	85	55	107	{evening,conference}	want	instead	small	28
1584	send	couple	48	239	228	{woman}	probably	push	report	67
1593	attorney	ten	521	815	976	{everyone,hand}	decade	cover	sit	37
1522	anyone	government	906	34	452	{other}	sound	national	foot	80
1591	fish	whatever	771	384	656	{nation}	first	line	we	71
1571	dog	long	625	369	189	{whether}	partner	base	reality	18
1590	agency	center	443	539	860	{operation,receive}	mouth	child	subject	39
1567	beyond	say	426	585	389	{particular}	yourself	bar	wind	7
1589	serve	official	401	214	559	{create}	front	measure	help	89
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (menclothing_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, material, fit_type_men, category_products_category_id) FROM stdin;
1602	trade	husband	940	238	155	{three}	we	if	growth	out	\N
1603	meet	company	958	345	675	{consider,spring}	unit	face	physical	above	\N
1604	gas	manage	626	993	596	{year,measure}	certain	hundred	down	hear	\N
1605	serious	simply	436	691	309	{sell,number}	drop	sell	have	hope	\N
1606	skill	contain	753	321	266	{huge}	special	or	account	management	\N
1607	recognize	inside	465	404	984	{rate,bring}	decide	necessary	these	while	\N
1608	why	natural	40	593	797	{authority}	he	strategy	great	form	\N
1609	change	everyone	819	796	698	{per}	window	tonight	collection	year	\N
1610	if	guess	676	641	140	{decade}	bar	bag	party	eight	\N
1612	mission	stuff	773	409	257	{program}	already	take	ok	scene	\N
1614	responsibility	upon	327	71	212	{decade,want}	note	trial	treat	professional	\N
1615	everyone	glass	216	410	630	{history}	assume	scene	establish	able	\N
1618	hotel	character	940	115	396	{adult}	red	him	recently	home	\N
1619	finish	them	479	791	495	{law}	population	stay	office	born	\N
1620	north	place	166	773	6	{just,student}	series	class	a	front	\N
1623	lay	create	207	871	745	{war}	operation	pick	easy	environmental	\N
1624	hard	current	618	63	349	{area}	building	work	argue	fear	\N
1625	couple	message	491	288	764	{behavior}	from	yourself	discover	though	\N
1627	however	serious	938	50	159	{ability}	positive	before	subject	suffer	\N
1629	same	weight	711	74	189	{debate}	his	discussion	give	expert	\N
1630	skill	place	386	297	523	{sure}	summer	throughout	guy	born	\N
1631	seat	per	293	142	175	{one,from}	she	crime	large	realize	\N
1632	character	hit	955	521	240	{five,long}	too	land	officer	avoid	\N
1633	should	along	887	830	460	{research}	activity	create	bill	common	\N
1636	reduce	trade	994	365	676	{special,large}	near	between	meeting	that	\N
1637	vote	argue	788	46	689	{price,shake}	evening	myself	read	very	\N
1638	friend	adult	91	162	506	{piece}	summer	inside	glass	others	\N
1639	product	project	361	918	317	{old}	attention	case	clearly	bag	\N
1640	all	between	42	710	494	{success,wait}	attention	religious	value	home	\N
1641	become	television	365	354	356	{politics}	small	south	trip	save	\N
1642	husband	end	797	557	137	{culture}	star	end	it	until	\N
1643	out	watch	425	820	685	{sound}	news	consider	home	cultural	\N
1644	painting	cold	971	246	264	{high,able}	Mrs	seat	figure	southern	\N
1646	put	mouth	645	454	997	{course}	project	economy	interest	too	\N
1647	note	present	504	721	500	{leave}	ability	from	meet	hope	\N
1648	yet	clear	28	436	397	{ability}	time	town	themselves	as	\N
1649	save	reason	293	575	706	{size,letter}	issue	or	table	me	\N
1650	great	explain	196	895	606	{table,design}	Congress	hard	shake	whole	\N
1651	represent	son	823	759	715	{able}	course	simple	help	back	\N
1652	whether	local	250	659	496	{weight,very}	assume	produce	interesting	land	\N
1654	Congress	ability	977	881	60	{thus,quality}	picture	wear	TV	federal	\N
1655	yeah	tonight	162	140	55	{score,hope}	federal	article	threat	truth	\N
1656	position	hand	484	248	875	{concern}	small	condition	return	tell	\N
1657	myself	main	846	36	15	{safe,visit}	field	heavy	scene	guess	\N
1658	item	moment	917	470	838	{sometimes,size}	experience	admit	four	remain	\N
1659	focus	especially	788	440	249	{of,may}	nor	piece	pull	though	\N
1660	above	leave	181	107	249	{military,maintain}	capital	after	wind	floor	\N
1661	theory	actually	312	236	26	{world}	effort	off	throughout	method	\N
1662	friend	begin	211	440	944	{sometimes,consumer}	apply	few	these	real	\N
1663	office	tax	928	508	773	{test,society}	nice	thing	less	determine	\N
1664	different	nearly	816	966	314	{window}	chance	various	instead	guess	\N
1665	smile	matter	647	478	143	{information,nation}	house	spend	range	around	\N
1669	yet	kind	773	4	321	{low,sport}	allow	hour	them	process	\N
1670	nothing	political	114	67	437	{force,change}	remember	threat	listen	me	\N
1671	site	return	259	44	144	{want,may}	adult	face	entire	even	\N
1672	kitchen	mother	384	801	352	{a,stuff}	side	project	else	power	\N
1673	agency	kid	929	184	886	{treat}	evidence	well	clear	produce	\N
1674	letter	building	480	861	335	{generation}	purpose	range	firm	scene	\N
1675	do	senior	616	235	835	{edge,walk}	effect	activity	ability	week	\N
1676	red	charge	167	637	437	{every,across}	letter	enough	us	left	\N
1678	too	right	628	471	997	{consumer}	someone	soon	outside	brother	\N
1679	case	who	604	966	446	{three,stand}	attack	firm	book	fall	\N
1681	doctor	air	32	572	717	{modern,population}	today	run	should	teacher	\N
1682	detail	energy	585	615	552	{finally}	sport	national	must	event	\N
1683	analysis	without	245	46	921	{expect,floor}	station	article	old	pass	\N
1685	military	reduce	264	584	358	{material,view}	front	show	lead	provide	\N
1686	special	another	529	375	581	{this}	several	may	day	ground	\N
1687	cell	one	185	438	228	{ability,address}	treat	answer	join	force	\N
1688	save	fund	836	997	647	{cultural,view}	among	worker	move	point	\N
1689	hold	civil	674	260	744	{network}	into	easy	hard	work	\N
1690	sure	military	68	632	266	{out,soldier}	this	skill	loss	father	\N
1691	meeting	single	526	792	35	{write,service}	allow	suffer	national	myself	\N
1692	movie	meet	490	946	494	{respond}	both	put	list	before	\N
1693	become	good	868	95	690	{understand}	assume	return	gun	question	\N
1694	across	glass	52	586	596	{too,course}	cold	eight	information	common	\N
1695	box	evening	293	68	569	{because}	knowledge	themselves	thought	fine	\N
1696	challenge	soon	607	672	174	{whatever}	science	stay	wait	sport	\N
1697	increase	similar	698	737	444	{far,explain}	author	movement	least	white	\N
1698	close	nice	649	965	727	{age}	never	action	my	central	\N
1699	treat	police	621	961	797	{south,yes}	computer	describe	enjoy	fact	\N
1700	study	culture	683	943	989	{medical}	yard	since	performance	idea	\N
1677	table	strong	113	320	924	{hundred}	book	challenge	manager	that	69
1613	lot	lawyer	427	324	887	{of}	source	every	fight	war	33
1668	responsibility	director	476	515	741	{be}	stuff	great	later	between	68
1666	property	interesting	321	807	319	{system,head}	area	upon	budget	foot	53
1635	data	often	211	621	386	{catch,none}	sign	like	away	grow	70
1653	how	wife	372	456	317	{perform}	next	line	sport	party	17
1645	such	around	548	923	475	{outside,we}	discussion	create	which	spring	63
1617	physical	commercial	116	142	832	{appear,page}	expert	something	teach	politics	54
1621	seek	reduce	977	58	971	{hotel,dog}	most	seat	arrive	thing	26
1611	view	protect	361	902	148	{enjoy,hot}	discuss	site	blood	large	29
1622	toward	hot	140	774	512	{team,public}	number	far	left	find	31
1601	arm	citizen	427	210	56	{future,store}	appear	threat	increase	security	31
1634	anything	front	521	200	719	{develop}	fire	ready	month	without	7
1616	lead	help	694	653	480	{research}	prepare	affect	score	them	1
1684	meet	among	424	827	701	{century,should}	memory	green	during	leader	54
1626	provide	may	562	510	518	{avoid,sure}	mission	whatever	short	sure	78
1628	concern	together	11	859	315	{break,cup}	arm	only	sign	wear	75
1680	large	fund	655	144	760	{box}	business	across	exist	guess	59
1667	step	prepare	37	305	202	{sea,me}	fly	that	ask	life	60
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (womenclothing_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, material, fit_type_women, category_products_category_id) FROM stdin;
1702	industry	society	52	18	79	{conference,play}	indeed	environment	couple	there	\N
1703	alone	Republican	804	371	922	{fish,win}	open	person	hospital	explain	\N
1704	effort	ability	193	938	860	{movement}	relationship	else	spend	form	\N
1705	data	save	6	838	437	{show}	then	argue	hit	phone	\N
1706	same	common	252	64	927	{partner,blood}	better	point	floor	enter	\N
1707	be	expert	116	379	384	{break}	discuss	lot	action	act	\N
1708	economy	station	876	390	536	{image}	ask	pick	rule	citizen	\N
1709	role	story	763	326	502	{prevent}	foot	market	several	easy	\N
1711	follow	sense	444	869	616	{glass,finally}	remain	whatever	develop	entire	\N
1712	election	prevent	20	353	528	{morning,information}	two	also	act	business	\N
1713	chance	human	238	408	509	{tonight,arm}	house	beautiful	us	country	\N
1715	cold	probably	418	621	439	{prepare}	far	ahead	her	knowledge	\N
1716	hour	charge	708	149	339	{north}	never	part	painting	bag	\N
1717	exist	contain	145	504	936	{act,kitchen}	most	teacher	want	positive	\N
1719	or	effect	907	375	382	{tonight,will}	career	lot	especially	skin	\N
1720	build	technology	748	83	803	{impact,letter}	center	news	analysis	necessary	\N
1721	country	however	135	733	661	{reality}	number	court	road	suggest	\N
1722	girl	only	895	145	51	{game,someone}	try	benefit	forget	wide	\N
1724	above	most	131	141	246	{power,score}	space	head	oil	there	\N
1725	buy	story	987	216	773	{while}	film	do	choose	picture	\N
1726	size	product	455	204	419	{rate,begin}	program	thus	would	I	\N
1727	table	write	135	319	804	{my}	now	draw	east	air	\N
1728	smile	drop	472	26	588	{house}	American	word	team	dream	\N
1729	least	year	752	970	642	{represent}	some	effort	structure	rich	\N
1730	daughter	teacher	33	765	145	{price,better}	me	blue	senior	almost	\N
1731	call	campaign	676	299	526	{professional}	home	thought	put	husband	\N
1732	region	kitchen	59	920	73	{usually,water}	watch	worker	like	finish	\N
1733	board	stage	750	275	710	{baby,street}	avoid	air	world	wall	\N
1737	health	four	119	211	184	{water,control}	left	threat	radio	including	\N
1738	yes	feeling	772	840	912	{meeting,responsibility}	give	become	back	could	\N
1739	including	letter	649	132	847	{everyone}	kid	natural	science	hotel	\N
1741	professor	unit	896	707	602	{rather}	test	source	hospital	argue	\N
1742	but	list	703	990	759	{claim}	item	where	artist	customer	\N
1743	theory	likely	393	456	368	{I}	enjoy	into	fill	standard	\N
1744	career	good	980	617	825	{history,level}	town	method	season	top	\N
1745	wide	indeed	653	500	790	{us}	lose	result	yeah	area	\N
1746	push	score	256	625	920	{everything,course}	fire	firm	young	west	\N
1747	Mr	grow	178	519	624	{away,customer}	choice	drop	require	number	\N
1748	actually	those	70	768	880	{build,first}	right	top	instead	professor	\N
1754	dinner	shoulder	631	548	1	{national}	data	social	close	in	\N
1755	green	story	71	774	553	{summer,trade}	past	gun	energy	name	\N
1756	key	compare	944	489	50	{our}	last	own	power	including	\N
1757	southern	power	471	466	581	{return}	none	TV	letter	nothing	\N
1759	move	suddenly	356	66	180	{deal}	in	election	pull	performance	\N
1760	decide	set	776	588	5	{without,she}	him	create	feeling	law	\N
1761	side	talk	199	583	686	{position}	discuss	decision	color	strong	\N
1762	southern	require	967	159	499	{would}	possible	people	law	enter	\N
1763	light	coach	357	537	879	{cost,policy}	employee	it	word	suddenly	\N
1764	voice	effort	611	106	737	{information}	gas	skin	early	strong	\N
1767	close	nor	586	330	551	{value,particularly}	process	over	head	everyone	\N
1768	party	air	590	758	595	{reason,clear}	this	page	music	meet	\N
1770	answer	friend	805	805	933	{sport,system}	bar	away	group	buy	\N
1771	line	beyond	604	154	312	{positive,drug}	seek	reflect	building	watch	\N
1772	finish	against	937	859	80	{economy,ago}	what	adult	detail	trade	\N
1774	activity	along	734	134	502	{help,learn}	task	staff	cut	series	\N
1775	time	positive	683	269	979	{visit}	including	cultural	rather	paper	\N
1778	source	about	412	691	130	{wrong,bad}	training	late	matter	before	\N
1779	fear	account	44	699	260	{first}	stop	laugh	away	but	\N
1780	window	similar	348	83	940	{stage,reason}	song	without	receive	good	\N
1781	strategy	close	391	107	135	{gun}	nature	one	late	the	\N
1782	show	free	995	498	332	{value,friend}	the	thousand	customer	majority	\N
1783	from	camera	417	795	84	{institution,past}	there	list	consider	guess	\N
1784	small	since	999	37	445	{close}	less	police	walk	condition	\N
1786	station	training	632	633	776	{find}	try	responsibility	heavy	positive	\N
1787	fast	these	137	879	868	{list,something}	manage	song	carry	major	\N
1789	compare	meet	452	4	355	{agent,sing}	success	agent	year	before	\N
1791	identify	reason	716	682	984	{challenge}	any	night	then	face	\N
1792	everything	particularly	744	452	638	{stage}	artist	last	wrong	control	\N
1793	arm	throw	678	205	942	{eight,world}	message	finally	billion	just	\N
1796	moment	north	687	90	785	{value}	cover	close	because	fear	\N
1797	painting	focus	542	634	492	{field}	by	technology	huge	wait	\N
1798	question	meeting	98	512	123	{attack,fine}	ball	loss	technology	guy	\N
1799	shoulder	project	518	559	171	{know}	require	look	success	street	\N
1750	somebody	maintain	714	832	533	{throw,physical}	hour	way	professional	heavy	68
1751	see	follow	870	691	133	{usually}	company	however	work	thank	31
1753	generation	inside	177	682	794	{suggest}	friend	son	identify	true	85
1752	answer	wide	323	82	151	{always}	less	city	list	number	16
1735	guess	matter	579	352	109	{eight,suffer}	discussion	sign	class	sound	98
1795	available	husband	286	281	166	{once,think}	party	wonder	democratic	model	39
1718	because	free	322	773	791	{those}	dark	treatment	such	wait	97
1714	travel	up	379	52	863	{whole}	allow	agree	enjoy	morning	83
1710	go	miss	479	241	414	{name}	medical	Congress	indicate	clear	1
1765	cost	test	513	936	317	{chance}	service	under	doctor	begin	86
1794	anything	old	340	793	969	{leave,at}	office	left	seven	occur	4
1773	mouth	this	35	582	891	{form,theory}	success	choose	meeting	begin	36
1734	us	concern	573	452	477	{yourself}	note	car	skin	painting	97
1777	once	fire	250	400	554	{evening}	thank	material	nothing	Democrat	57
1788	risk	be	57	19	985	{cell}	often	worker	ever	community	95
1723	head	sign	271	341	42	{rate}	nor	late	oil	matter	74
1749	economy	land	89	984	852	{summer,fear}	of	fast	hotel	court	79
1785	result	set	404	580	585	{much,soon}	visit	include	partner	anyone	93
1766	professional	light	993	308	91	{able}	argue	worker	leg	over	92
1758	fund	give	283	365	460	{investment}	question	control	western	quality	41
1776	listen	beat	592	297	447	{store}	skill	language	new	a	55
1740	prove	Republican	576	658	212	{race,can}	girl	evidence	effect	suggest	32
1736	ahead	throw	235	799	46	{prevent}	spring	particularly	sound	direction	82
1701	theory	blue	906	1	783	{week}	report	ground	nothing	fish	53
1800	change	into	714	994	661	{reduce,citizen}	spend	probably	stay	true	52
1769	outside	report	451	296	776	{baby,camera}	southern	election	many	loss	64
1790	strong	big	335	997	823	{defense}	woman	arm	share	front	10
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (footwear_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, sole_material, category_products_category_id) FROM stdin;
1802	peace	represent	596	230	534	{hear}	parent	himself	carry	\N
1803	national	above	804	462	235	{shake}	lawyer	your	control	\N
1805	structure	yourself	258	591	527	{far,at}	simple	record	both	\N
1806	particular	population	841	21	342	{more,information}	long	human	environment	\N
1807	follow	issue	250	442	157	{part,nature}	my	late	send	\N
1808	speech	almost	70	488	906	{receive,garden}	large	term	surface	\N
1809	head	media	420	757	858	{main}	a	big	night	\N
1811	project	send	957	122	859	{prepare,key}	again	throughout	ready	\N
1812	popular	choose	388	873	33	{personal}	partner	since	act	\N
1813	remain	story	558	353	77	{weight,notice}	billion	last	political	\N
1814	guess	west	1000	692	482	{music,college}	deal	feeling	number	\N
1816	on	sound	410	44	268	{small,wait}	politics	describe	must	\N
1817	shoulder	between	692	402	395	{nearly,return}	sit	answer	there	\N
1818	too	onto	16	731	693	{nice}	of	three	full	\N
1819	recently	fly	551	134	76	{put,buy}	produce	bed	project	\N
1821	they	give	202	414	651	{kind,thing}	contain	quality	should	\N
1823	yet	until	23	795	45	{his,hope}	myself	knowledge	where	\N
1824	water	sure	759	429	134	{season}	base	land	thousand	\N
1825	wait	church	762	194	517	{control,too}	since	adult	born	\N
1826	it	show	846	291	903	{stay}	federal	nothing	friend	\N
1828	consumer	write	479	163	305	{wall}	effect	continue	article	\N
1829	candidate	party	666	308	600	{leader,artist}	cold	hotel	level	\N
1830	might	drive	33	630	537	{any,body}	idea	site	item	\N
1831	seek	use	301	33	500	{power}	have	ever	attention	\N
1832	draw	peace	960	168	759	{carry,sign}	until	sea	amount	\N
1836	power	hard	356	205	351	{shoulder}	body	case	toward	\N
1837	common	everyone	251	142	967	{according}	across	father	avoid	\N
1839	college	tough	315	324	505	{kitchen,expect}	able	up	investment	\N
1840	to	realize	22	395	592	{professional,finally}	animal	him	order	\N
1841	produce	seat	241	754	539	{your}	risk	community	perform	\N
1842	nor	together	564	788	939	{the}	contain	marriage	whatever	\N
1844	there	improve	983	571	9	{recently,relate}	so	well	figure	\N
1846	difficult	treatment	136	448	839	{respond}	world	should	who	\N
1847	nice	respond	113	582	116	{skin,he}	political	money	door	\N
1848	result	against	180	917	361	{population,gas}	national	attorney	finally	\N
1850	data	ask	905	603	882	{newspaper,evidence}	part	star	him	\N
1851	this	soon	656	718	246	{say,there}	business	concern	future	\N
1852	southern	think	73	734	878	{bank,evidence}	environment	difference	share	\N
1854	usually	nature	270	793	932	{trial}	condition	measure	read	\N
1855	available	south	653	843	135	{prove}	together	issue	girl	\N
1856	near	indicate	474	366	133	{new}	mind	practice	idea	\N
1857	street	charge	312	754	43	{bad,a}	mouth	agree	car	\N
1858	feeling	develop	458	505	892	{something}	sister	way	tonight	\N
1859	special	cup	178	977	574	{list,state}	type	participant	suddenly	\N
1860	leader	some	829	684	697	{pattern,contain}	sport	person	away	\N
1861	activity	mouth	670	741	321	{fill,health}	bring	head	forward	\N
1863	baby	idea	841	95	776	{themselves,difficult}	government	strategy	class	\N
1801	argue	often	535	732	801	{east,large}	indeed	nation	break	56
1864	responsibility	matter	833	249	976	{table,note}	statement	attorney	strategy	\N
1865	she	ahead	97	960	926	{to,risk}	sign	away	growth	\N
1866	civil	beyond	249	731	68	{score,born}	cause	newspaper	ahead	\N
1867	work	offer	973	693	548	{head,free}	today	professor	role	\N
1868	various	capital	45	922	584	{year,expert}	ten	son	treat	\N
1869	everybody	threat	945	910	531	{need}	method	throw	only	\N
1870	now	best	395	676	99	{ability}	them	research	site	\N
1871	political	word	846	3	588	{four}	job	cell	dream	\N
1872	matter	stand	474	112	222	{keep,attack}	them	allow	leg	\N
1873	physical	night	69	525	142	{poor,city}	brother	reason	myself	\N
1874	where	already	189	449	870	{wrong}	imagine	including	much	\N
1875	performance	alone	528	938	279	{city,either}	language	discussion	claim	\N
1876	position	identify	826	187	384	{start}	focus	even	simple	\N
1877	system	sell	124	664	137	{doctor}	test	western	girl	\N
1878	you	likely	655	960	406	{into}	writer	win	since	\N
1879	stuff	beyond	187	230	818	{remember,enter}	doctor	care	board	\N
1880	north	carry	835	874	878	{likely}	inside	partner	audience	\N
1881	phone	author	51	957	617	{skin}	yard	return	growth	\N
1882	baby	summer	7	610	713	{middle}	condition	account	rather	\N
1885	decide	position	305	153	870	{require,enter}	senior	safe	knowledge	\N
1886	international	there	381	633	388	{stop}	interest	peace	job	\N
1887	alone	line	906	832	626	{rate}	become	everybody	court	\N
1890	nor	onto	514	270	480	{year}	direction	rich	win	\N
1891	must	worker	903	817	85	{worker}	land	fear	political	\N
1892	statement	door	221	953	616	{increase}	truth	character	seat	\N
1893	though	investment	941	255	809	{see}	continue	ground	though	\N
1894	state	he	733	880	559	{kitchen,build}	see	development	carry	\N
1897	minute	member	179	421	132	{carry,identify}	phone	appear	party	\N
1898	weight	single	518	937	236	{trip}	see	raise	can	\N
1899	read	clearly	58	381	174	{around}	family	everything	tax	\N
1900	style	garden	442	838	552	{career}	model	pick	century	\N
1838	generation	personal	857	42	97	{make}	prepare	around	popular	83
1883	little	party	13	832	935	{debate,student}	prove	age	result	3
1804	use	win	864	784	90	{husband,key}	course	every	anything	37
1845	any	story	420	813	398	{something}	century	trouble	water	86
1827	real	money	561	44	424	{computer}	effort	statement	fund	26
1843	list	history	428	567	396	{themselves}	season	budget	agree	95
1849	let	pick	510	788	894	{oil}	help	that	suddenly	99
1822	speak	billion	446	27	820	{soon,stuff}	happy	environment	blue	3
1810	catch	wind	722	126	930	{moment,clearly}	someone	nearly	husband	66
1834	people	cut	271	835	460	{development}	front	player	several	35
1896	listen	from	461	33	882	{writer}	understand	author	admit	26
1820	idea	college	414	215	110	{it,result}	alone	else	strong	29
1853	of	per	251	672	814	{lead}	wish	direction	right	54
1889	matter	lot	740	198	170	{national}	blue	goal	head	22
1895	try	team	534	535	20	{end}	former	national	cut	76
1835	ask	especially	431	36	303	{sell}	state	second	international	17
1833	citizen	base	954	720	646	{important,meet}	pull	statement	book	21
1862	career	his	285	163	367	{chair,sense}	law	attorney	really	60
1815	human	land	765	687	661	{accept}	close	see	old	17
1888	enjoy	among	348	9	433	{hand,order}	people	billion	reality	58
1884	fast	around	711	197	630	{on,try}	radio	either	reduce	59
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (physicalproduct_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, category_products_category_id) FROM stdin;
101	defense	trial	251	226	21	{affect}	begin	\N
102	should	interest	412	75	275	{half}	say	\N
104	likely	customer	298	769	812	{girl,police}	one	\N
105	often	board	506	481	884	{boy}	compare	\N
106	point	fire	104	514	797	{natural,relationship}	establish	\N
108	himself	many	184	795	154	{visit}	prepare	\N
109	leave	answer	842	887	328	{individual,main}	under	\N
110	between	hotel	110	727	527	{game,spend}	sort	\N
112	pressure	ground	559	933	740	{their}	feel	\N
113	line	turn	799	324	841	{administration}	air	\N
114	face	local	183	307	444	{cover}	upon	\N
116	very	there	259	797	66	{film,next}	painting	\N
117	ten	Mr	828	441	563	{matter,boy}	catch	\N
118	operation	face	555	450	872	{parent,itself}	approach	\N
119	possible	six	12	406	857	{rise,far}	weight	\N
120	notice	third	176	265	498	{wind}	account	\N
121	myself	here	813	662	956	{believe,range}	forward	\N
122	five	spend	1000	585	20	{have}	skin	\N
123	rule	by	709	364	594	{station}	former	\N
124	central	detail	608	129	142	{blue,father}	environmental	\N
125	after	market	849	284	408	{explain,relate}	also	\N
126	whom	edge	177	628	92	{dog}	speech	\N
128	down	hold	513	915	665	{activity,personal}	election	\N
129	impact	apply	953	703	655	{guy}	she	\N
130	whether	large	245	321	507	{building,wish}	keep	\N
131	only	first	980	231	730	{past,source}	cost	\N
132	cover	report	346	574	626	{range,to}	involve	\N
133	same	actually	996	662	225	{possible}	about	\N
134	history	feeling	944	74	782	{interest,control}	bar	\N
135	away	rate	164	524	785	{product}	history	\N
136	order	hotel	320	306	710	{music,war}	bring	\N
137	dark	student	870	566	381	{serious}	become	\N
138	good	method	719	719	755	{public,long}	issue	\N
140	arrive	window	919	621	984	{young,somebody}	interview	\N
141	opportunity	beyond	181	160	257	{budget,serious}	draw	\N
142	picture	officer	223	965	584	{lead}	difficult	\N
144	forget	strong	394	528	866	{challenge}	Mrs	\N
149	behavior	give	456	872	947	{arm}	wide	\N
150	TV	sure	995	872	392	{next,painting}	can	\N
151	us	author	407	169	932	{fill,prepare}	name	\N
152	couple	research	449	130	638	{hot,shoulder}	feeling	\N
155	really	hour	677	303	285	{this}	protect	\N
157	likely	chair	983	195	542	{act,keep}	ahead	\N
158	artist	though	593	22	32	{enjoy}	important	\N
159	floor	Mr	856	267	212	{as}	site	\N
160	create	week	292	152	556	{free}	home	\N
162	bar	pull	853	700	458	{age}	guy	\N
163	possible	myself	559	366	503	{participant,early}	spend	\N
164	them	thank	877	125	788	{price}	least	\N
165	maintain	drop	585	901	393	{perhaps}	whose	\N
166	lawyer	heavy	291	831	111	{easy}	area	\N
168	be	development	559	304	989	{contain}	recently	\N
169	exist	card	77	513	383	{condition,soldier}	agree	\N
171	happy	finally	777	542	332	{test}	marriage	\N
172	quickly	treatment	127	453	736	{learn,war}	leader	\N
173	must	them	359	313	553	{attorney,letter}	kind	\N
174	these	best	348	802	749	{believe,economic}	wide	\N
176	home	anyone	392	209	571	{water}	first	\N
177	grow	discover	285	651	613	{voice}	something	\N
178	quickly	anyone	946	473	616	{talk,record}	much	\N
181	start	beautiful	369	539	4	{much,book}	first	\N
182	hot	day	594	437	994	{size,hold}	interview	\N
183	suddenly	eight	345	882	637	{huge}	culture	\N
184	finally	worker	505	764	254	{admit,clear}	glass	\N
185	agreement	low	645	22	417	{organization}	successful	\N
186	throw	news	649	798	960	{treat,couple}	form	\N
189	during	with	358	935	271	{along,there}	owner	\N
190	people	put	895	702	558	{democratic,them}	campaign	\N
191	talk	food	156	474	853	{we,ground}	same	\N
192	reduce	wall	497	174	479	{manager}	wait	\N
193	guy	buy	278	523	101	{while,new}	yet	\N
194	relationship	their	72	364	69	{education,seek}	fear	\N
195	safe	lead	21	169	520	{TV}	appear	\N
196	interview	east	708	96	412	{one,reflect}	huge	\N
198	professor	discuss	243	908	342	{catch,lawyer}	though	\N
199	participant	thousand	71	77	716	{form,my}	event	\N
200	safe	size	480	524	572	{lay}	start	\N
146	window	say	828	262	644	{ability}	seek	79
111	significant	event	130	916	212	{again}	realize	60
180	carry	almost	720	175	461	{investment}	air	37
154	car	Congress	616	547	419	{need}	only	27
145	less	behind	558	748	42	{buy}	economic	50
115	here	officer	50	732	883	{central}	project	58
161	woman	board	280	319	600	{no,bar}	rather	59
188	side	wish	786	76	835	{increase}	church	98
197	page	film	620	312	214	{now}	actually	76
170	name	management	448	516	694	{team,add}	process	34
107	everyone	science	79	522	973	{son}	focus	5
143	Democrat	strong	507	698	404	{participant,tough}	station	92
167	bag	appear	121	583	766	{without}	fact	52
147	yes	force	274	755	935	{trade}	by	60
127	long	I	498	8	182	{spend,from}	seat	24
187	dream	computer	802	277	867	{tell}	nature	73
156	explain	seat	388	768	573	{of}	idea	43
148	laugh	father	983	999	143	{story}	off	92
179	despite	line	960	763	730	{term,between}	speak	71
153	across	attack	983	218	123	{modern,between}	fill	50
175	case	specific	116	664	940	{star,key}	ready	30
139	audience	career	609	88	877	{west}	career	19
103	mouth	practice	747	77	23	{rise}	politics	85
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (media_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, format, category_products_category_id) FROM stdin;
1901	rich	perform	276	355	769	{figure}	pick	at	\N
1902	official	Democrat	303	608	243	{lot}	own	enjoy	\N
1904	total	next	570	183	758	{structure}	indicate	standard	\N
1905	cover	player	424	326	559	{ahead,PM}	west	local	\N
1907	family	last	797	662	547	{minute}	social	cell	\N
1908	foot	energy	30	326	489	{outside}	human	whatever	\N
1909	debate	never	210	409	102	{remember,road}	with	nation	\N
1911	list	foreign	506	552	565	{whose}	listen	start	\N
1912	pick	as	775	797	459	{speak}	between	letter	\N
1913	box	future	696	654	198	{last}	lawyer	strong	\N
1915	place	protect	8	69	832	{shake,foot}	way	left	\N
1916	according	have	19	825	196	{there,present}	anyone	seek	\N
1917	me	effect	281	653	580	{subject}	cover	war	\N
1918	should	carry	787	490	573	{amount}	brother	speech	\N
1920	wife	visit	412	57	656	{if}	easy	drug	\N
1921	kitchen	magazine	297	363	240	{ahead}	foreign	possible	\N
1922	fight	wish	471	572	482	{decide,effort}	threat	better	\N
1923	before	enter	39	786	998	{none}	fund	reflect	\N
1924	evening	painting	121	330	833	{drug,someone}	me	interesting	\N
1927	administration	land	883	911	284	{allow,smile}	left	every	\N
1928	pattern	space	701	563	895	{suffer,physical}	exist	should	\N
1929	use	third	991	110	674	{from,material}	method	population	\N
1930	difficult	continue	436	519	435	{standard,audience}	daughter	response	\N
1931	truth	data	837	491	229	{chair}	debate	important	\N
1932	wife	six	182	530	610	{blue,your}	case	kind	\N
1933	write	among	636	938	479	{political}	drug	a	\N
1935	bed	both	772	273	196	{center,issue}	test	talk	\N
1937	our	money	995	610	385	{good}	require	single	\N
1938	position	institution	605	13	244	{treatment,lawyer}	model	Mr	\N
1939	happen	sometimes	395	270	629	{book,night}	trial	lead	\N
1942	question	mind	873	185	179	{table,type}	hospital	too	\N
1943	line	test	578	119	240	{key}	seat	too	\N
1944	prepare	well	429	296	161	{rise}	success	person	\N
1945	industry	religious	862	594	137	{different,long}	decade	enjoy	\N
1946	arrive	enough	562	195	126	{light,avoid}	hear	just	\N
1947	who	bad	673	506	207	{market,itself}	magazine	account	\N
1948	clearly	example	640	717	815	{get}	purpose	follow	\N
1949	environmental	top	735	851	619	{represent}	way	his	\N
1950	push	good	181	339	674	{you}	sing	she	\N
1951	run	particular	197	979	665	{physical,society}	too	goal	\N
1952	month	station	114	335	597	{specific,though}	possible	daughter	\N
1953	religious	yourself	183	3	772	{worker,side}	voice	his	\N
1954	game	everything	392	553	396	{activity,last}	dream	discussion	\N
1955	find	simple	66	325	345	{black}	usually	recent	\N
1956	simply	I	266	903	275	{grow,visit}	eight	between	\N
1957	cell	worry	164	960	473	{house}	almost	hear	\N
1958	try	need	393	481	96	{member,very}	bit	cut	\N
1959	save	quite	728	125	572	{guy}	American	knowledge	\N
1960	choice	worry	264	966	317	{green,surface}	own	else	\N
1961	trip	increase	833	302	761	{vote,black}	for	including	\N
1962	hear	building	205	366	666	{baby}	four	three	\N
1963	play	raise	687	876	863	{describe}	discuss	wind	\N
1964	environmental	ability	553	895	659	{front}	price	speak	\N
1966	quality	wish	269	775	548	{computer}	recent	above	\N
1968	everything	every	807	346	54	{question,west}	appear	move	\N
1969	behind	option	967	257	882	{federal}	manage	tree	\N
1970	bed	system	990	680	903	{one}	test	where	\N
1971	throw	agency	619	252	38	{who,trouble}	thus	learn	\N
1972	whole	food	880	873	96	{ever}	financial	training	\N
1974	bill	more	923	832	841	{into}	friend	and	\N
1975	street	culture	518	627	874	{window}	truth	debate	\N
1976	cut	such	696	419	506	{there}	age	value	\N
1977	receive	fall	555	901	246	{wide}	last	bill	\N
1978	strategy	government	678	111	836	{others,simply}	finish	financial	\N
1979	certain	finish	437	181	33	{light,hospital}	street	use	\N
1981	along	summer	350	396	449	{value,religious}	kind	hold	\N
1982	board	cell	485	364	742	{feeling}	analysis	ok	\N
1983	contain	account	448	63	693	{role,for}	think	field	\N
1984	these	pattern	266	583	50	{north}	simply	marriage	\N
1985	program	north	394	158	487	{instead}	after	house	\N
1986	usually	writer	400	848	557	{take,through}	attention	today	\N
1987	such	ask	183	232	527	{he}	condition	condition	\N
1988	read	system	856	630	867	{catch}	plant	fall	\N
1989	him	minute	422	465	768	{total}	sister	picture	\N
1990	push	week	203	48	581	{forward,parent}	clearly	environmental	\N
1991	amount	thus	76	968	723	{agency,even}	century	necessary	\N
1992	hot	challenge	6	913	145	{always}	not	range	\N
1993	fund	open	705	872	841	{various,physical}	among	former	\N
1994	these	general	348	214	105	{skill,few}	blue	yet	\N
1995	mention	car	916	325	34	{majority}	amount	expert	\N
1996	crime	account	207	359	972	{could,across}	able	provide	\N
1999	vote	nation	301	667	518	{our}	occur	argue	\N
2000	view	listen	768	173	811	{four}	factor	product	\N
1926	information	compare	862	719	759	{rock}	democratic	agency	53
1903	continue	task	559	43	338	{page,explain}	purpose	use	4
1936	partner	recently	588	686	964	{international,other}	mother	debate	1
1906	professor	trade	614	843	932	{she}	our	fall	11
1919	compare	stay	464	43	390	{approach,understand}	wind	little	84
1973	both	yet	686	185	197	{discover}	office	smile	30
1980	small	eye	313	363	32	{scene,consider}	change	explain	80
1914	house	total	651	264	620	{beautiful,image}	case	hard	14
1998	probably	keep	607	931	314	{technology,again}	foreign	analysis	66
1934	bag	produce	105	87	411	{even,wait}	spring	test	86
1967	seven	west	136	681	911	{prepare}	must	bank	49
1925	apply	part	960	439	750	{behind}	business	movie	34
1997	sister	when	715	44	662	{friend,half}	state	trouble	51
1940	reduce	thousand	88	167	404	{present}	hit	senior	41
1965	trouble	town	843	816	442	{effect}	job	us	94
1941	be	price	803	53	218	{try,leader}	role	themselves	20
1910	town	few	728	647	817	{improve,memory}	floor	firm	97
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (software_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, license_type, category_products_category_id) FROM stdin;
2001	relationship	final	674	842	707	{travel}	dream	budget	\N
2003	human	stop	813	228	984	{woman,might}	letter	notice	\N
2004	someone	loss	99	8	447	{third}	wind	argue	\N
2006	billion	environment	971	757	858	{rise}	trip	culture	\N
2007	send	east	826	635	587	{great,million}	cold	west	\N
2008	avoid	early	197	823	821	{social,however}	close	executive	\N
2009	continue	figure	325	118	971	{he}	maybe	opportunity	\N
2010	college	government	576	122	496	{center}	protect	see	\N
2011	rich	whether	808	569	394	{catch,expect}	soldier	partner	\N
2013	tax	nature	476	917	274	{north}	might	support	\N
2014	third	clear	593	336	741	{close,firm}	pay	show	\N
2015	suggest	from	129	842	319	{skill,lose}	various	color	\N
2018	box	Mr	858	439	441	{decade}	add	soldier	\N
2019	she	upon	434	365	574	{doctor}	manage	attention	\N
2020	explain	ok	718	590	505	{action,commercial}	main	foreign	\N
2021	seek	close	735	665	722	{control,off}	eight	wrong	\N
2022	garden	by	950	301	770	{improve,easy}	cell	personal	\N
2025	phone	example	753	15	784	{case,production}	owner	a	\N
2027	rather	poor	214	297	905	{option,understand}	everyone	the	\N
2028	letter	fire	149	88	937	{under}	short	evening	\N
2030	paper	reveal	175	418	173	{clear}	available	hair	\N
2033	assume	compare	862	571	238	{very,executive}	short	share	\N
2035	film	too	793	772	768	{someone}	power	to	\N
2037	move	approach	115	232	640	{over}	your	writer	\N
2038	happy	say	437	605	5	{why}	her	color	\N
2039	pull	single	179	703	811	{happy}	table	reality	\N
2040	any	across	822	551	451	{soldier,exist}	budget	trial	\N
2041	according	current	954	645	151	{truth,area}	listen	son	\N
2042	tell	side	411	876	231	{source,year}	must	no	\N
2043	keep	health	855	735	927	{would,good}	here	themselves	\N
2044	dream	short	125	515	767	{sport,something}	two	space	\N
2045	management	half	25	301	649	{eye}	coach	whom	\N
2047	class	dinner	365	118	685	{pick,major}	voice	home	\N
2048	certain	road	282	980	728	{paper}	number	air	\N
2049	alone	everyone	57	566	280	{few,simple}	side	return	\N
2050	boy	while	978	358	252	{truth,show}	why	when	\N
2051	whole	put	1000	804	502	{toward,enjoy}	story	red	\N
2052	claim	measure	779	773	70	{throw}	say	seek	\N
2053	question	alone	419	390	482	{even}	central	relationship	\N
2055	rest	appear	445	227	468	{between}	will	evidence	\N
2057	whatever	budget	194	206	909	{wall}	with	between	\N
2058	doctor	run	39	642	147	{huge,read}	card	learn	\N
2061	certain	may	328	318	19	{age,entire}	he	surface	\N
2063	government	radio	801	736	723	{show}	these	material	\N
2064	beat	but	722	764	13	{side,security}	wind	edge	\N
2066	whether	current	237	848	612	{rate,fine}	approach	new	\N
2069	father	movie	228	685	123	{sound}	operation	floor	\N
2070	effort	among	871	97	198	{wrong}	eat	purpose	\N
2071	recently	policy	44	424	903	{blue,produce}	energy	type	\N
2073	whole	common	478	649	851	{exist}	lose	management	\N
2074	usually	agree	876	63	969	{Republican}	realize	opportunity	\N
2075	former	name	729	780	103	{community}	really	much	\N
2076	between	professor	193	362	65	{picture,son}	beyond	arrive	\N
2078	exactly	result	998	401	299	{common}	study	still	\N
2079	garden	again	609	300	317	{present,national}	policy	food	\N
2081	move	network	226	123	754	{order,owner}	gas	suffer	\N
2085	place	store	93	880	445	{information,way}	full	art	\N
2086	surface	ground	847	539	366	{late}	easy	identify	\N
2087	baby	budget	1000	313	532	{experience,fund}	other	enter	\N
2089	stuff	whether	171	153	550	{letter}	lose	how	\N
2090	public	professor	926	677	626	{citizen}	create	newspaper	\N
2091	peace	room	674	228	716	{factor,decade}	always	show	\N
2092	trip	market	446	433	945	{their,hit}	data	point	\N
2093	finish	million	516	644	892	{low,city}	size	fall	\N
2094	prepare	plan	952	317	454	{player,use}	operation	list	\N
2096	compare	security	1	592	965	{myself}	by	government	\N
2097	sign	road	306	632	514	{only}	operation	shoulder	\N
2098	respond	ever	659	75	116	{pay}	painting	edge	\N
2099	growth	provide	372	459	376	{might,event}	eye	particular	\N
2100	quality	chair	154	285	837	{quality}	improve	station	\N
2054	particular	listen	848	629	423	{until,down}	director	sort	95
2080	also	kid	597	903	372	{light}	present	radio	58
2056	election	research	754	520	405	{now,network}	popular	simple	42
2084	member	by	924	54	537	{soldier}	month	million	97
2095	bring	evening	58	466	574	{trip,learn}	catch	their	42
2012	seven	hospital	574	917	57	{manage}	ready	fill	16
2068	art	appear	242	559	728	{safe}	nothing	financial	96
2016	mention	cut	49	130	296	{boy}	weight	ever	61
2083	or	grow	361	612	540	{watch,book}	pick	first	41
2029	machine	base	544	93	676	{fear}	miss	own	17
2046	outside	movie	294	57	95	{add,able}	society	few	47
2017	someone	least	807	608	126	{moment}	consider	way	47
2059	raise	thousand	360	361	870	{professional}	feel	risk	90
2065	sound	event	956	436	716	{bring}	hot	meeting	18
2026	west	discussion	460	987	684	{second}	wear	drive	41
2067	also	recognize	834	634	395	{weight}	remember	behind	1
2031	create	high	779	432	829	{bar,prepare}	letter	responsibility	62
2062	beat	foot	446	466	272	{top,population}	mission	try	44
2002	investment	someone	584	1	447	{least}	compare	he	4
2036	floor	night	175	648	300	{forward}	indicate	difference	65
2005	professional	pull	563	295	529	{close,majority}	offer	region	57
2077	free	first	586	612	223	{such,list}	assume	argue	18
2072	rich	indicate	148	740	691	{public}	growth	here	81
2088	culture	art	396	530	559	{instead,question}	build	event	52
2082	happy	north	146	369	953	{agree,culture}	too	board	62
2032	simple	act	348	793	676	{member}	available	activity	79
2060	lawyer	painting	260	875	990	{business}	gas	born	30
2024	into	strong	136	64	972	{sense,agreement}	attention	check	46
2023	interest	accept	479	248	214	{sure}	miss	within	14
2034	likely	star	337	763	782	{American}	exactly	night	88
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (user_id, email, password_hash, mv_user) FROM stdin;
1	ugardner@example.com	gun	{successful,teach}
2	tina95@example.org	arm	{seven,it,what,certain}
3	amy48@example.org	parent	{young,picture,form}
4	stephaniecooper@example.com	return	{board,full}
5	clintonbarker@example.net	hold	{doctor,imagine,few}
6	bowmanjustin@example.net	today	{stuff}
7	rachelmorris@example.net	determine	{machine}
8	joseph46@example.org	set	{sort}
9	debrafernandez@example.com	maintain	{month,suffer}
10	franklinjulie@example.org	group	{me,finally,degree,girl}
11	bbarnett@example.org	nature	{believe,political,whom,fire}
12	crystal88@example.net	appear	{soldier}
13	rflores@example.net	result	{these,seven,single,image}
14	carly84@example.net	son	{specific}
15	donna13@example.com	again	{care,tough}
16	cassandratrevino@example.com	home	{trial}
17	steelenicholas@example.org	own	{although,race,wear}
18	sadams@example.com	your	{dinner}
19	melanie54@example.net	go	{cup,one,parent,yes}
20	hornashley@example.org	power	{think,according}
21	kruegerkatherine@example.net	step	{which,answer}
22	theresasteele@example.com	movement	{why,view}
23	thomas59@example.com	school	{west,process}
24	parkercarl@example.org	son	{author,cost,do,free}
25	newtonlisa@example.net	certainly	{her,then}
26	samanthalong@example.com	theory	{act,huge}
27	mark37@example.net	water	{together,view}
28	steven27@example.net	focus	{street,experience,five}
29	fordbrett@example.net	material	{trouble}
30	mcintyrepenny@example.com	special	{whole,evidence,evening}
31	porterashley@example.org	benefit	{couple}
32	roberthaynes@example.net	call	{car,fall,ability,exactly}
33	deborahprice@example.com	rise	{my,alone,meet,even}
34	sknight@example.net	coach	{this}
35	charles86@example.com	let	{owner}
36	kanecolton@example.org	same	{get,would,black,almost}
37	ffarley@example.com	make	{past,exist}
38	ocox@example.net	want	{focus,should,tonight,administration}
39	cjackson@example.org	system	{especially,agency,price}
40	ryan74@example.org	goal	{buy}
41	zsmith@example.org	prove	{tend}
42	baileyjohn@example.com	nearly	{all}
43	whitemarc@example.net	difference	{probably,pass}
44	gsmith@example.com	exist	{attack,environmental}
45	paigewalker@example.org	training	{do,your,tree}
46	holly23@example.net	approach	{however}
47	timothyjohnson@example.net	plant	{politics,agree,any}
48	thomascurtis@example.org	some	{say,project}
49	mark74@example.net	meeting	{about}
50	vgaines@example.net	account	{anyone}
51	ywells@example.com	keep	{hand,itself,rule,join}
52	eelliott@example.org	if	{become,agreement}
53	carlosgraves@example.com	remember	{director,point,lose}
54	christopher45@example.com	may	{determine}
55	smitherik@example.com	green	{focus}
56	james54@example.com	product	{exist,deep,have}
57	mindy83@example.org	first	{any,however}
58	makayla16@example.org	particularly	{deep,available}
59	xsmall@example.net	probably	{drive,policy}
60	reynoldsstephanie@example.org	war	{own,prepare,white}
61	ashleyperry@example.com	material	{statement,by,lot,him}
62	strongchristina@example.org	hotel	{probably,when,agency}
63	anthony42@example.net	no	{imagine}
64	adrian44@example.org	source	{worker}
65	carpenterthomas@example.net	full	{red,establish,build}
66	timothy05@example.net	foreign	{heavy,sure}
67	michael65@example.net	born	{goal}
68	fwalker@example.net	dream	{consider,than,strong}
69	potterjeffrey@example.net	open	{most,why,bring}
70	regina31@example.com	serious	{series,budget}
71	paula20@example.net	body	{book}
72	hgoodman@example.org	several	{need,year,how,get}
73	mullinsthomas@example.org	opportunity	{bill,tree}
74	deanmarissa@example.net	option	{write,leg,enough}
75	tina77@example.org	table	{road,song,own}
76	murphyalison@example.net	hand	{only,production,hospital,generation}
77	sandrasanchez@example.com	meet	{prevent,protect,sort,action}
78	jeremychase@example.org	image	{travel,party,everyone,understand}
79	nlang@example.org	we	{kind,reveal,writer}
80	joseph74@example.net	house	{low,pressure,remain,sea}
81	elainepowell@example.net	then	{recently}
82	balldavid@example.net	raise	{study}
83	mitchellmacdonald@example.net	party	{list}
84	kennethlawrence@example.net	challenge	{town,huge}
85	isalinas@example.com	method	{capital,make,building}
86	george58@example.net	reduce	{develop,camera}
87	mbuck@example.com	those	{cut}
88	andrew81@example.com	western	{night}
89	johnnelson@example.org	police	{dog,reveal,drive}
90	wallacemark@example.com	skill	{story,system}
91	michael10@example.org	beat	{hand,human,inside,attorney}
92	amber85@example.com	add	{instead,edge,last,soon}
93	vanessaturner@example.com	example	{method}
94	lhoffman@example.org	understand	{car}
95	andrew77@example.com	wrong	{this,pattern,role,building}
96	reedalexis@example.com	seat	{no,red,follow}
97	rcarter@example.org	social	{board,land,now}
98	henrywaters@example.org	wall	{drug}
99	vmedina@example.org	middle	{guy}
100	jonathandavidson@example.com	scene	{laugh,mission,usually}
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (customer_id, email, password_hash, mv_user, loyalty_tier, contact_no) FROM stdin;
101	sally98@example.org	happy	{know,push}	traditional	{break,term}
102	arush@example.org	laugh	{apply,energy,power,own}	from	{phone,wide}
103	zacharykline@example.com	you	{certain,coach}	significant	{only}
104	taylor81@example.net	factor	{there,beat,chair,country}	industry	{ability,while}
105	steven07@example.net	reality	{first,air}	finally	{spend}
106	yreynolds@example.com	crime	{none,early}	mind	{certainly}
107	alexahernandez@example.net	American	{couple,economic}	thing	{model}
108	cuevasbrenda@example.org	class	{day}	generation	{up}
109	carrieperez@example.net	customer	{feel,protect}	follow	{fine,resource}
110	brittany48@example.net	sister	{discussion,hour,human}	five	{loss}
111	glen11@example.com	measure	{woman,paper,let,difficult}	and	{tough,raise}
112	wbrandt@example.com	both	{yard,century,degree,media}	certainly	{professor}
113	ortizlinda@example.com	glass	{national,Congress,think,attack}	under	{door}
114	sherihancock@example.com	edge	{so}	present	{itself}
115	mark56@example.org	citizen	{local,purpose}	camera	{general}
116	scottbecker@example.com	until	{president}	data	{somebody}
117	cassandra59@example.com	home	{action,agent,especially,important}	short	{business,force}
118	cwatson@example.org	point	{price,decade,peace,help}	career	{personal,two}
119	micheal04@example.com	sea	{society,where}	police	{road}
120	wadederek@example.net	century	{hair,action,health,so}	right	{these}
121	harrisonchristie@example.net	one	{style,specific,study,there}	open	{part,government}
122	nicholas35@example.com	necessary	{cell,turn,range}	him	{money}
123	anthony18@example.net	only	{member,another,student,down}	agency	{car}
124	chelseaespinoza@example.com	could	{performance,which}	strategy	{talk,star}
125	qfranco@example.net	after	{set,election,entire}	chair	{full,happen}
126	estephens@example.com	this	{physical}	example	{mouth}
127	robertcook@example.net	report	{good,chair}	the	{add,if}
128	austinjoshua@example.com	air	{together,southern,threat}	realize	{answer,entire}
129	jane93@example.com	former	{product,country,must,end}	difference	{right,two}
130	fweber@example.com	able	{free}	bill	{day}
131	rmitchell@example.net	or	{evening,price}	tough	{store,meet}
132	nancy45@example.com	both	{music}	successful	{benefit,that}
133	patrick92@example.net	major	{itself,effort,know}	rule	{study}
134	rachelbanks@example.com	visit	{treatment}	enter	{develop,win}
135	ashley27@example.net	environmental	{professor}	important	{fear,financial}
136	janetfernandez@example.org	only	{Congress,evidence}	hear	{hour,anyone}
137	mglenn@example.org	case	{well,reach,create}	simple	{most}
138	bdorsey@example.com	similar	{agree,career,significant}	series	{material}
139	nancycooper@example.org	garden	{likely,air,age,truth}	close	{poor,eat}
140	emoody@example.org	enter	{everything,ground}	administration	{or}
141	langtimothy@example.org	history	{all}	fly	{full}
142	pamela72@example.org	life	{five,family}	fear	{ability}
143	jason27@example.net	political	{care,spend,similar}	road	{resource}
144	emartinez@example.com	vote	{participant,order,west,stay}	major	{side,people}
145	valdezsamantha@example.com	always	{important,product,animal,choose}	street	{sort,usually}
146	knoxrobert@example.net	civil	{without,fish,so,test}	notice	{certain,even}
147	tonyallen@example.net	sell	{defense,provide,maybe}	common	{official,surface}
148	sherry16@example.com	blue	{nearly,about}	pattern	{usually}
149	meyerelaine@example.net	free	{source,sound,board}	part	{fund}
150	riosluke@example.net	total	{method,woman,front,open}	wall	{institution,also}
151	nancy23@example.com	education	{speak,crime,picture,heart}	despite	{free}
152	morrisjoseph@example.org	news	{bank}	since	{onto}
153	victoriadonaldson@example.org	national	{though,so,hear,draw}	peace	{work}
154	leekim@example.org	impact	{hold,much,probably,after}	leader	{participant}
155	timothy84@example.com	room	{daughter,leader}	program	{more}
156	otaylor@example.com	hand	{whole}	option	{song,focus}
157	ianmunoz@example.net	hundred	{strong,perform}	with	{director,police}
158	moniquejones@example.org	smile	{side,teacher,maintain}	political	{establish,painting}
159	jonathon82@example.net	six	{want,position}	hour	{help,difficult}
160	codydeleon@example.net	top	{activity,best,full}	heavy	{positive}
161	colenancy@example.org	reduce	{medical,respond,himself}	too	{lead}
162	murraybarbara@example.com	southern	{fish,never,value}	although	{Congress,election}
163	whitethomas@example.org	across	{reason,operation,minute}	window	{enter}
164	michael10@example.net	maybe	{accept,standard}	baby	{recent,whose}
165	christophermorris@example.net	surface	{catch}	without	{teacher,analysis}
166	youngphilip@example.net	pressure	{hand}	card	{professor}
167	christophercampbell@example.net	matter	{information}	southern	{and}
168	chelseasloan@example.net	sure	{decision,civil,determine,hope}	strategy	{nothing}
169	johnharrington@example.com	international	{whatever,increase,during,line}	never	{audience,shake}
170	taylor45@example.net	test	{by,each,last,hospital}	method	{tree}
171	brenda70@example.com	want	{ball}	would	{care,father}
172	rachelkaiser@example.net	less	{expect,where}	material	{drop}
173	erica47@example.com	population	{push,stock,civil}	strong	{wait,dark}
174	meyerhannah@example.com	world	{special}	worker	{fact}
175	morrisonsteven@example.net	audience	{whether,good}	for	{treatment}
176	allison05@example.net	food	{dinner,system}	expect	{because}
177	rebecca11@example.org	later	{rock,religious}	few	{one}
178	josewall@example.net	much	{air,administration,after,table}	drug	{point}
179	tinaadams@example.com	big	{evening,keep,give,measure}	after	{continue,activity}
180	santosamanda@example.net	piece	{conference,easy,us}	type	{career,job}
181	gregorylane@example.net	eight	{rest,resource}	although	{bag,throw}
182	yhamilton@example.com	serious	{concern,police,receive}	major	{knowledge,newspaper}
183	kevinsnyder@example.com	off	{end}	laugh	{out,sense}
184	obrienjoshua@example.com	avoid	{page,world,east,half}	threat	{attorney}
185	zjackson@example.org	exactly	{and}	similar	{save}
186	yhaney@example.com	ground	{tree}	for	{someone,and}
187	tracymcintyre@example.net	leader	{produce}	require	{recognize}
188	simondenise@example.net	tax	{any,represent,bill,throw}	nice	{blood,TV}
189	bobby37@example.com	chair	{church}	near	{education,black}
190	david29@example.net	mother	{believe,son,itself,item}	we	{arrive}
191	sbrennan@example.net	never	{should,smile,heavy,memory}	democratic	{level}
192	jill39@example.net	measure	{impact}	leader	{region}
193	cgibson@example.net	civil	{itself,lose,color}	agreement	{return,better}
194	laura81@example.com	you	{in}	out	{term,operation}
195	jeffery79@example.net	moment	{expect,so,fight}	young	{our,step}
196	rileycory@example.org	each	{according}	Mr	{allow,say}
197	feliciaperry@example.com	message	{poor,control}	peace	{tonight}
198	qnichols@example.net	debate	{son}	wish	{friend}
199	angelareyes@example.org	fire	{cut,middle,because,third}	green	{of}
200	perrylisa@example.net	any	{chair,body,kind,suffer}	term	{particularly}
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (primecustomer_id, email, password_hash, mv_user, loyalty_tier, contact_no, renewal_date, subscription_addons) FROM stdin;
201	marshjeremy@example.com	too	{happy}	eye	{model}	beat	{forward,tax,condition,hot}
202	russellbridget@example.com	hand	{crime}	hope	{usually}	long	{test}
203	padillabrian@example.org	own	{part,pay}	good	{rule}	paper	{case}
204	wmcgee@example.org	doctor	{for}	both	{care}	several	{up,environmental,crime,red}
205	huntjason@example.net	knowledge	{somebody}	within	{nothing,relationship}	Congress	{perform,everyone,series}
206	burchstephanie@example.net	he	{simple,fall,environmental}	your	{scene}	day	{police,culture}
207	katherinechase@example.org	appear	{right,brother}	plant	{well}	laugh	{world,soon}
208	qsmith@example.net	loss	{sign,which}	so	{son,rest}	just	{candidate}
209	barrettanthony@example.com	heart	{talk}	political	{add}	administration	{approach,choose}
210	hernandeztina@example.net	authority	{happy}	meeting	{per,choice}	cell	{place,take,message}
211	qowens@example.com	buy	{material,American,try}	this	{resource}	realize	{order,himself}
212	bethford@example.org	lot	{final,free}	mind	{those}	student	{plan,yet,than,yard}
213	burnettjeff@example.net	this	{health}	feeling	{can,him}	position	{while,clear}
214	perezjoseph@example.com	answer	{sing}	food	{mean}	large	{president,research,near}
215	dsmith@example.net	performance	{toward}	free	{office,approach}	gas	{sign,such,meeting,million}
216	gary56@example.org	doctor	{Republican,bar}	bad	{the}	visit	{concern,east,theory}
217	zwebb@example.org	much	{identify,certain,camera}	miss	{hotel,term}	official	{next,sell}
218	caitlin25@example.org	imagine	{stay,cup,significant}	position	{think,be}	both	{up,report,piece,where}
219	millerlaura@example.org	forget	{perhaps,of,Mr}	success	{effect,case}	ground	{Republican}
220	nathanhowe@example.com	language	{example}	budget	{hundred}	whom	{century}
221	rossgary@example.org	city	{exactly,listen,gas}	player	{money,out}	south	{raise,tree,speak,police}
222	osims@example.org	new	{they,course,sport}	certain	{manage,painting}	suggest	{rate}
223	qgray@example.com	popular	{people,president}	store	{ground,price}	record	{dog,our,else,list}
224	ronald20@example.net	art	{marriage,democratic}	image	{clearly,matter}	have	{himself,article,whatever,population}
225	michaelhuff@example.com	voice	{onto,evening,less}	administration	{or,approach}	care	{around,bad}
226	lgeorge@example.net	drive	{soon}	next	{night}	see	{easy}
227	curtisharris@example.org	claim	{behind,difficult,key,personal}	even	{stay}	want	{glass,remember,expect,election}
228	maryevans@example.net	experience	{style,government,finish}	enjoy	{reveal,form}	brother	{on}
229	diamondwilson@example.org	call	{practice,reason,mouth}	issue	{family,do}	just	{language}
230	kellylauren@example.org	wonder	{service,step}	government	{gas,raise}	each	{others}
231	seanmoore@example.net	often	{law,few,decade,figure}	thus	{despite,mention}	watch	{building}
232	warnerkrista@example.net	your	{fly,no,media}	federal	{century}	rock	{from}
233	yorkgabriel@example.net	generation	{professional,today}	line	{person,guess}	prove	{institution,evening}
234	kevin09@example.com	these	{campaign,morning,decade,amount}	light	{always,your}	admit	{soldier}
235	pauldawson@example.org	standard	{country,hand}	in	{news}	door	{across}
236	stewartheather@example.com	party	{collection,difficult,bar,two}	camera	{road,such}	music	{student,art,heavy}
237	ewhite@example.com	try	{act,card}	fire	{matter,general}	today	{similar,image}
238	sara83@example.net	assume	{save}	base	{protect}	pay	{its}
239	xmarshall@example.com	behavior	{garden,prevent}	soldier	{case,eat}	control	{father,agree,involve,action}
240	guzmansharon@example.net	clearly	{various,work,air}	successful	{every}	firm	{learn,former}
241	mitchell37@example.net	until	{result,like}	discover	{far,herself}	movement	{movement,yes}
242	patelcharles@example.org	technology	{team,serve}	program	{media}	activity	{voice,alone,question,animal}
243	desiree44@example.net	center	{out,standard}	discussion	{least,particular}	news	{ability,wear,behavior}
244	brownrobert@example.org	fill	{miss,truth}	talk	{heavy,play}	smile	{society,professor,small}
245	wwhite@example.net	minute	{western,organization}	much	{foot}	determine	{heart,necessary}
246	ijohnson@example.org	analysis	{remain,easy,perhaps}	in	{already}	full	{in,out}
247	wjones@example.com	our	{these,program}	rate	{run}	open	{fact,key,rise,apply}
248	cookpaul@example.com	marriage	{of}	concern	{fine,economy}	improve	{drug,environmental,relate,piece}
249	hartbrian@example.org	similar	{science,difficult}	daughter	{when,Democrat}	remember	{score,big}
250	miguel98@example.com	first	{never,age}	grow	{name,spend}	any	{provide,city}
251	ramirezfrancisco@example.net	material	{hold}	federal	{realize,quality}	send	{benefit,list,call}
252	avaldez@example.net	article	{build,bad,drug}	service	{least}	they	{election,my,black}
253	tiffanycoleman@example.com	send	{ability,or}	treat	{admit,agency}	realize	{friend}
254	dharris@example.org	rise	{gun,top,bar,level}	local	{after,almost}	wrong	{space}
255	linda49@example.org	increase	{president}	play	{defense}	never	{never}
256	murphymelinda@example.com	if	{charge}	weight	{budget}	name	{anyone,tax}
257	jonathannelson@example.com	factor	{employee,create,interesting}	me	{leader}	four	{artist,room,role,policy}
258	mercedesnelson@example.org	truth	{usually}	pull	{upon}	level	{sing,memory}
259	nguyenjose@example.net	somebody	{special,treat,pretty}	help	{not}	month	{who,performance}
260	carlbecker@example.com	position	{because,help}	news	{worker}	who	{media,identify,marriage}
261	popeangel@example.com	necessary	{you,decade}	human	{find}	among	{lot}
262	carterkathleen@example.net	level	{behavior,rate,government}	property	{exist}	send	{laugh,so,popular,own}
263	davidedwards@example.com	simply	{region,development,point,dog}	environment	{reach}	statement	{watch,commercial,teacher,also}
264	christopherhayes@example.net	begin	{blood}	base	{approach}	stand	{dark,quite,baby,possible}
265	fjenkins@example.net	task	{recently,head,evening}	now	{child,sport}	too	{few,establish,early}
266	james16@example.org	yet	{appear,surface,effort,ball}	remain	{moment}	yard	{indeed}
267	stephanie42@example.com	end	{area}	realize	{once,house}	source	{around,information,safe}
268	amandahicks@example.net	shake	{alone,usually}	something	{but}	soon	{Mrs,despite,history,PM}
269	brittanywashington@example.org	read	{politics}	head	{you,miss}	role	{stock}
270	elizabeth11@example.net	stuff	{exist,safe}	certain	{group,fly}	contain	{west,throughout,big}
271	susanli@example.net	song	{than,someone,statement}	ask	{condition}	build	{stock,cell,each,yet}
272	parkeric@example.org	most	{five,course,ready,argue}	top	{coach}	Mrs	{kind,ever}
273	ebrown@example.org	old	{world}	else	{popular,arm}	your	{sound,mind,fly,grow}
274	baustin@example.com	central	{conference}	soldier	{role}	main	{teacher}
275	angelkelly@example.com	state	{red,wall,begin,indicate}	about	{case}	sit	{law,treatment,model}
276	matthew67@example.com	today	{in}	collection	{for}	those	{present,deal}
277	josephbailey@example.org	different	{maybe,prevent,require,list}	guess	{well,bad}	take	{per,street,nearly}
278	normanwheeler@example.org	land	{item}	fund	{eye}	look	{who,again,bag,west}
279	mhoward@example.com	ready	{must,white}	cost	{quite,seek}	point	{there}
280	ctucker@example.net	start	{if,week}	lose	{nation,evidence}	spring	{point}
281	philipvaughn@example.org	tree	{happen}	challenge	{environmental,heart}	voice	{group}
282	shawharold@example.net	significant	{among}	or	{seven,skill}	half	{item,get,beautiful,son}
283	tony86@example.org	doctor	{let,happy}	subject	{start}	work	{glass,fill,star,way}
284	davidkemp@example.com	me	{agent,heart,section}	shake	{place}	sometimes	{character}
285	hbrown@example.org	collection	{win}	ready	{international,lay}	sell	{ball}
286	zstephens@example.org	yourself	{there,wonder}	identify	{write,class}	respond	{identify,attorney,heavy,blood}
287	celliott@example.net	artist	{they,every}	term	{become,near}	minute	{commercial,state,beyond}
288	harveymary@example.org	try	{figure,catch,third}	eat	{daughter,those}	tough	{professor,author,themselves,condition}
289	amanda20@example.com	reflect	{sense,learn}	vote	{quickly,must}	represent	{city}
290	brendapage@example.org	loss	{instead,still}	reason	{today}	wife	{different}
291	twright@example.net	live	{fill,like,loss,home}	field	{beautiful}	car	{able}
292	ofletcher@example.net	increase	{animal,carry,rate}	speak	{body}	head	{he,chair,before}
293	sawyermichael@example.net	turn	{yeah,save}	design	{all}	that	{mention,positive,other}
294	valerierodgers@example.com	include	{best}	might	{house,leg}	day	{outside}
295	hherman@example.com	term	{feel,usually,raise}	imagine	{culture}	poor	{author,note,tend,either}
296	megan26@example.org	free	{a,investment,fight,officer}	strong	{song}	physical	{teach}
297	chadmiller@example.net	everything	{pretty,start,type,vote}	direction	{per,method}	as	{house,believe,figure}
298	ryan98@example.com	keep	{mother,tonight,no,conference}	true	{space,through}	very	{open,past,room,wall}
299	smithdavid@example.net	five	{spring,suggest,high,pass}	may	{current,along}	firm	{one}
300	richardsonalexander@example.net	factor	{unit,garden,away,church}	consider	{put,bank}	specific	{woman}
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (businesscustomer_id, email, password_hash, mv_user, loyalty_tier, contact_no, company_name) FROM stdin;
301	jameswilson@example.net	room	{several}	husband	{page}	who
302	morrisjordan@example.org	check	{among,line,American,before}	think	{attorney,toward}	sense
303	jturner@example.org	we	{free}	act	{debate}	among
304	amassey@example.net	level	{teacher,collection,hit,spend}	life	{key,into}	let
305	ebooker@example.org	any	{million}	south	{industry}	anything
306	sanchezkirsten@example.com	seek	{Republican}	class	{next,its}	wall
307	jenniferturner@example.org	series	{score,town}	camera	{us,never}	artist
308	ortizmichele@example.org	system	{next,light,then}	partner	{several,after}	life
309	megangarcia@example.net	mission	{claim}	mention	{thank}	determine
310	eric68@example.net	election	{feel,section,case,tax}	along	{discuss,least}	reduce
311	leonkeith@example.net	interesting	{word,trip,skill,customer}	story	{north,take}	own
312	ericarodriguez@example.com	political	{herself,catch,protect,above}	rather	{dark}	small
313	mary74@example.org	establish	{spring}	administration	{voice}	through
314	dsmith@example.com	catch	{fish,history,today,two}	cover	{check}	by
315	joshua18@example.org	near	{senior,well,recognize}	our	{give}	arrive
316	contrerascandice@example.net	allow	{natural,environmental,account,statement}	yourself	{argue}	Mr
317	ericdoyle@example.org	rule	{still,newspaper,tree}	magazine	{reduce}	there
318	allenronald@example.net	finally	{hospital,three}	education	{wife,condition}	tonight
319	brandonclark@example.com	perhaps	{voice}	respond	{result,how}	win
320	mendozajessica@example.net	lead	{result}	guy	{already}	study
321	melissa66@example.com	necessary	{task,inside,possible}	drop	{my,worker}	term
322	alexanderomar@example.net	degree	{buy,behavior}	send	{wrong,only}	several
323	antonio28@example.net	director	{just,together,story}	fact	{type,sing}	house
324	crawfordnatasha@example.com	use	{camera,artist,then}	administration	{treat,end}	notice
325	dmoss@example.net	type	{tend,consider,cup}	study	{network}	movement
326	davidmcfarland@example.com	set	{kind,firm}	reduce	{beautiful}	approach
327	nlopez@example.org	best	{job,service}	glass	{leg,too}	more
328	nrhodes@example.org	wind	{once}	skin	{discover}	red
329	molly48@example.net	me	{himself}	wife	{shoulder}	seek
330	watsonjoseph@example.com	develop	{source,first,land,speech}	although	{bed}	can
331	rodriguezpaula@example.net	matter	{project,put}	music	{turn}	yeah
332	kevin78@example.net	better	{son,front,time,it}	it	{suffer,part}	know
333	masontim@example.org	candidate	{anyone,article}	wall	{sport}	build
334	jhernandez@example.net	after	{ten,side,anyone}	media	{remember}	special
335	christinadunlap@example.net	draw	{here,both,in}	within	{interesting}	event
336	elizabeth43@example.net	behavior	{present,term}	for	{alone,according}	store
337	jmcdonald@example.com	data	{executive,foot}	knowledge	{sure}	not
338	mitchell36@example.com	ball	{several,game,clearly,identify}	value	{turn}	left
339	erinhenderson@example.org	girl	{music,different,charge}	black	{that}	keep
340	jenniferlee@example.com	network	{quickly,political}	receive	{woman,realize}	step
341	fuentesdouglas@example.org	green	{top,mind,sure}	direction	{media,international}	real
342	aortega@example.com	east	{positive,toward,read,along}	other	{certain}	enjoy
343	gomezmichael@example.org	evidence	{door,leg}	play	{fly}	increase
344	lbrewer@example.net	money	{work,paper}	debate	{from,born}	letter
345	tammy76@example.org	try	{American,sit}	our	{our,direction}	spring
346	riveramelanie@example.org	go	{week,practice}	future	{hear}	whom
347	jonathansmith@example.net	seem	{rock}	himself	{buy}	defense
348	robert63@example.com	military	{more}	form	{boy}	political
349	cwilliams@example.net	leader	{those,debate,medical,tax}	occur	{next,traditional}	growth
350	jduran@example.com	war	{garden}	authority	{play,rule}	child
351	gshepherd@example.com	feeling	{shoulder,else,yet}	money	{seat,cup}	nation
352	wardnathan@example.org	thing	{any,her,dark}	toward	{by,peace}	those
353	mobrien@example.net	down	{specific,past,win,surface}	yeah	{often}	economic
354	vscott@example.net	clearly	{dark}	them	{buy,thus}	condition
355	frederick13@example.com	job	{blue,free,however,table}	sea	{get,probably}	appear
356	stephenjones@example.org	reality	{act,marriage}	benefit	{there}	family
357	eflynn@example.net	start	{social,doctor}	yes	{window}	more
358	eric07@example.org	factor	{energy,threat,these}	maintain	{throw}	reality
359	annaburns@example.org	common	{building}	home	{thousand,school}	staff
360	njohnson@example.net	later	{hard,oil,upon}	TV	{partner}	thank
361	osmith@example.net	music	{go,situation}	reach	{ahead,option}	raise
362	lmorris@example.com	result	{attack,likely,very}	bed	{inside}	travel
363	timothyharris@example.org	most	{against}	evidence	{guy}	visit
364	tramsey@example.net	others	{huge,no}	discover	{effort,spend}	hundred
365	ndennis@example.net	up	{take,they}	establish	{red}	provide
366	martha00@example.com	chance	{level}	let	{could,he}	successful
367	travis03@example.com	you	{be,important,although,send}	ball	{character}	reach
368	yguerra@example.com	might	{mission,author,affect}	bar	{first}	doctor
369	kristipittman@example.net	seven	{affect,stage,no,other}	cell	{week,pretty}	between
370	smithkathryn@example.net	my	{population,open,past}	mind	{at,nothing}	opportunity
371	bcooley@example.net	all	{well,just,production}	in	{thank}	green
372	carolschultz@example.net	action	{early}	drive	{interview}	something
373	josephmartinez@example.net	get	{station,under}	pull	{cost}	sport
374	cole44@example.org	probably	{offer}	sure	{toward}	garden
375	amy64@example.org	including	{treatment,kind}	technology	{important,hand}	success
376	andrew83@example.org	religious	{guess,talk,wish}	few	{customer}	step
377	lisa37@example.org	view	{be}	bad	{every,attention}	after
378	lwright@example.org	each	{same}	remember	{weight}	car
379	mmanning@example.com	forget	{cause}	word	{kitchen}	tough
380	garcianicholas@example.com	scene	{cut,five}	reality	{evening,threat}	change
381	davidrivera@example.com	case	{effort,leg}	language	{once,within}	laugh
382	scottwang@example.org	him	{one,during}	technology	{toward,eight}	answer
383	hwhite@example.com	add	{black,memory,adult}	could	{support,open}	describe
384	thomas65@example.org	really	{information,sure,executive}	treat	{century}	crime
385	ericbarker@example.com	sort	{very,more,official,put}	up	{account}	weight
386	williamstyler@example.net	turn	{of}	attention	{population,our}	candidate
387	bjensen@example.org	training	{official,pull}	those	{free,expert}	create
388	kevin11@example.com	who	{network,stay,feel,you}	attack	{best}	fact
389	zjackson@example.org	next	{cause,if,shoulder}	civil	{any,build}	exactly
390	jamietrevino@example.com	myself	{technology,start}	travel	{peace,act}	six
391	daniel79@example.org	pretty	{animal,shoulder,arm,each}	political	{respond,important}	court
392	clinton82@example.org	watch	{foreign}	traditional	{play,still}	benefit
393	maynardlindsey@example.org	citizen	{church,once,important}	worry	{single,meeting}	suggest
394	nicoleevans@example.org	method	{base,pretty,discuss}	purpose	{daughter}	participant
395	nharris@example.net	image	{measure,big,plan,morning}	identify	{of,can}	style
396	carlos73@example.com	investment	{until,care,return,simple}	its	{hear,huge}	down
397	smann@example.com	take	{market,step,thing}	ball	{put}	money
398	smithelizabeth@example.com	nice	{major,never,capital,recognize}	attention	{order}	work
399	vaughndaniel@example.net	real	{treat}	expect	{compare,issue}	dog
400	yvonne68@example.org	ask	{agree,civil}	night	{but,stage}	former
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (employee_id, email, password_hash, mv_user, employee_no) FROM stdin;
401	mary23@example.net	image	{attorney,mother}	cold
402	ymitchell@example.net	summer	{collection,letter,feeling}	treat
403	mwilson@example.net	seek	{note,rest}	amount
404	nguyenlisa@example.com	indicate	{star,together,television}	adult
405	shannon47@example.net	make	{laugh,direction,official,end}	class
406	susan20@example.net	just	{hour}	wait
407	ashley12@example.org	eat	{various,southern}	second
408	brookeshields@example.com	man	{deal,ball,attorney,note}	effort
409	connie40@example.com	since	{word}	firm
410	hudsonroy@example.org	machine	{range,than,safe}	color
411	rachelestrada@example.org	head	{style,position,feeling}	adult
412	harrisdonald@example.org	report	{go,understand,thing}	letter
413	taylorapril@example.com	notice	{necessary}	a
414	daniel81@example.org	art	{shoulder,receive,wear,move}	listen
415	danielphelps@example.net	suggest	{must}	compare
416	chadtaylor@example.net	see	{where}	piece
417	hayleybridges@example.net	personal	{shake,position}	follow
418	salasmarcus@example.net	door	{together,easy,research,address}	popular
419	vegaebony@example.org	reveal	{attorney,paper}	culture
420	jose35@example.net	often	{exactly,none,head,Republican}	nature
421	sparksjonathan@example.org	notice	{pick,learn,ok}	specific
422	lauren91@example.com	more	{hair,character,law}	move
423	lewisjonathan@example.net	seven	{buy,section,culture,maintain}	weight
424	owencarolyn@example.org	significant	{economy,place,physical}	mention
425	travisbaldwin@example.net	our	{industry,white,sound}	also
426	sheilacarter@example.com	which	{behind,agency}	matter
427	traciereynolds@example.com	group	{even,miss,any,hundred}	audience
428	teresa83@example.net	life	{set,any,strong,stand}	model
429	williamsjamie@example.org	him	{themselves,participant,appear,kitchen}	need
430	xharrison@example.com	south	{water,improve}	machine
431	martinlisa@example.com	life	{although,fine}	such
432	melissa31@example.net	similar	{expert,mouth,yard,successful}	million
433	davisalexis@example.net	grow	{fish,performance,imagine,future}	bed
434	hudsonvirginia@example.net	performance	{time}	magazine
435	koneill@example.net	job	{build,by,can,season}	law
436	brendahays@example.net	executive	{us}	cold
437	mccoyjessica@example.net	than	{how}	check
438	lwalters@example.net	American	{again,always}	scientist
439	tracey01@example.com	investment	{expect,five,number}	late
440	ramosstanley@example.net	actually	{young,nice}	affect
441	josephjohnson@example.net	from	{moment}	or
442	jimmyvillanueva@example.com	news	{international}	today
443	jillhill@example.org	rock	{blood,performance,between,food}	way
444	emily26@example.org	prepare	{rich,give}	street
445	joseph08@example.com	return	{say}	top
446	petermurray@example.org	alone	{suddenly,space}	TV
447	williamstroy@example.org	identify	{weight,quite,follow}	task
448	scottmaldonado@example.net	western	{per}	night
449	nicolerogers@example.com	brother	{stand,see,none}	off
450	robert28@example.org	example	{power,service}	push
451	umarshall@example.org	yeah	{left,chair}	style
452	kelseybennett@example.net	necessary	{computer,evening,enough,ball}	party
453	pereznicholas@example.net	contain	{foreign}	natural
454	brittneyshort@example.com	put	{concern,ball}	avoid
455	lindabernard@example.org	floor	{onto,somebody,social}	activity
456	qcrawford@example.net	mother	{poor}	officer
457	brian75@example.com	democratic	{perhaps,man}	south
458	mariah75@example.com	already	{among}	government
459	victoriadouglas@example.net	scene	{interesting}	high
460	christinemartin@example.org	technology	{matter,maintain}	old
461	mark39@example.net	government	{them,imagine}	general
462	johnatkins@example.net	bed	{center,your,down}	firm
463	lgaines@example.org	hope	{young,good}	list
464	susanrodriguez@example.net	public	{enough,color}	foreign
465	ccameron@example.org	anyone	{note,husband,five,those}	program
466	keith66@example.com	pressure	{discover}	its
467	gregorybarajas@example.org	it	{my}	seat
468	janet19@example.org	way	{those,maybe,table}	technology
469	phillipsgina@example.org	course	{federal}	have
470	jennyhouston@example.com	wide	{minute,all}	fine
471	washingtonscott@example.net	half	{the}	certainly
472	danielclark@example.org	news	{health,support,anything,serve}	friend
473	sheenaclark@example.org	clear	{reach,surface,control,arrive}	agency
474	alexandrajordan@example.net	reality	{minute}	evidence
475	ashley35@example.net	poor	{risk,none}	need
476	vhayes@example.org	attention	{establish,consumer,note}	matter
477	jacksonmelanie@example.com	agreement	{financial}	network
478	malonejill@example.org	home	{participant,social,begin,pull}	must
479	karlafrancis@example.com	tree	{offer,special,bar}	produce
480	westbrianna@example.com	beautiful	{wait,best}	fund
481	jonathan77@example.org	discover	{agent,science}	television
482	baileydiana@example.org	land	{arm,sing,sure}	language
483	msaunders@example.net	site	{person}	onto
484	mmann@example.com	become	{yourself,stage,back}	particular
485	berryjames@example.com	leader	{expert,alone,ever}	build
486	christinetucker@example.org	pattern	{American,take}	name
487	brendaburgess@example.net	large	{vote}	administration
488	wardroger@example.org	whole	{particular}	none
489	hannah35@example.org	decide	{reach,design,truth}	heavy
490	salazarcynthia@example.net	something	{group,would}	lot
491	autumnkramer@example.com	line	{manage,to}	describe
492	steven00@example.org	rate	{full,energy}	factor
493	alexischen@example.net	treat	{main,bed}	team
494	vharvey@example.org	young	{parent,reason,think,traditional}	respond
495	thomas97@example.com	road	{site,agent,again}	a
496	markjones@example.com	remain	{store,owner,reach,page}	first
497	gabriella34@example.net	stand	{into,old,along,window}	finish
498	adamsvanessa@example.com	yet	{anyone}	conference
499	mitchelljennifer@example.org	industry	{type,finally,but}	deep
500	ykelley@example.net	focus	{light}	direction
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (corporateemployee_id, email, password_hash, mv_user, employee_no, office_site) FROM stdin;
501	bcervantes@example.com	ago	{provide,capital,player,approach}	give	central
502	vvasquez@example.com	different	{leader,article,prove}	court	meet
503	christophersmith@example.org	rule	{evening,fight,last,yeah}	group	save
504	walkerangela@example.org	single	{participant}	defense	product
505	stephanie23@example.com	toward	{food}	event	a
506	longbrandi@example.net	forward	{generation,determine,chance}	edge	hard
507	rdiaz@example.net	eight	{successful,history,attack,cold}	PM	prevent
508	erichanson@example.net	court	{worry}	avoid	continue
509	cmercado@example.com	knowledge	{use,serious}	last	theory
510	caseyhenderson@example.org	record	{lot,old}	national	determine
511	michelle17@example.org	very	{according}	power	others
512	fanderson@example.org	court	{treat,popular,rule,policy}	live	attack
513	cramirez@example.org	seven	{serious}	quality	now
514	sfleming@example.org	population	{want,popular}	ever	fall
515	michelle21@example.net	number	{hot}	official	right
516	lcastro@example.com	nothing	{first,water,human}	represent	leave
517	kimberly36@example.com	fine	{important,up,try}	guess	social
518	david62@example.com	light	{woman}	whose	such
519	johnsonjuan@example.com	artist	{but}	base	black
520	dianaray@example.net	later	{last,sort,free}	understand	region
521	savageshari@example.org	thought	{reduce,television,million}	certainly	very
522	annamartin@example.com	strong	{lead,manage}	dog	account
523	robertsheather@example.net	interesting	{many,him}	close	arm
524	ssmith@example.net	religious	{myself,ahead}	level	scene
525	danieljohnson@example.net	figure	{environment,door,ok,throw}	education	without
526	wforbes@example.org	play	{collection}	mission	quickly
527	horozco@example.org	beat	{spend,phone,policy,road}	exactly	safe
528	victoriabailey@example.org	send	{order,across,fund,player}	owner	hit
529	bethanyfrank@example.net	challenge	{by}	street	painting
530	rmunoz@example.org	own	{station}	foreign	near
531	jeffreyharding@example.com	better	{practice,although,method}	scientist	everybody
532	jesusperry@example.net	truth	{vote,once,reason,present}	always	PM
533	meadowsrussell@example.org	piece	{morning,player,shake}	run	join
534	joy06@example.com	as	{trip,fund,choose,finish}	quickly	cultural
535	fsimmons@example.org	thus	{for}	artist	owner
536	ronaldrivera@example.com	the	{firm,walk,ahead,sound}	chance	mention
537	joseph51@example.org	its	{again,night,today}	car	from
538	jessica21@example.org	in	{bed,run,baby,play}	bank	government
539	ochase@example.net	lot	{land}	score	us
540	stacyballard@example.net	without	{community,himself}	newspaper	describe
541	kbowers@example.net	half	{most,spend,down}	concern	attack
542	antoniojones@example.com	concern	{sister,traditional,use}	rest	past
543	garciakathy@example.com	me	{finally,each}	would	lay
544	sarah32@example.org	piece	{tend}	her	responsibility
545	snyderkathy@example.com	ok	{range,about}	coach	Congress
546	denise18@example.org	audience	{over,view,knowledge}	black	into
547	kevin78@example.com	project	{shake,thousand,election,yet}	how	relate
548	joshua40@example.net	rock	{their,none,media}	single	value
549	gvasquez@example.com	pass	{care,message,hard}	enter	write
550	alicia25@example.net	form	{age,political,message}	relationship	blue
551	tdiaz@example.com	power	{good,old,why,say}	goal	fill
552	traciekrueger@example.org	prove	{radio,indeed}	clear	bar
553	darrenpitts@example.com	them	{less,ok}	dinner	street
554	jeremy60@example.net	there	{truth,head,west,power}	six	try
555	huberdonald@example.com	scene	{list,tend}	add	bit
556	jonesrenee@example.net	size	{although}	worker	star
557	gcole@example.com	drug	{husband}	reveal	onto
558	alexis97@example.net	free	{pay,daughter}	item	fast
559	mwells@example.net	along	{visit}	charge	across
560	charles67@example.net	station	{make}	recently	president
561	mmaxwell@example.org	central	{indicate}	election	market
562	scoleman@example.net	deal	{strong,Democrat,model,inside}	degree	follow
563	davisjay@example.org	present	{itself}	current	such
564	derek81@example.com	cost	{chance,right}	subject	much
565	ftorres@example.org	positive	{detail,age,deep}	young	picture
566	gboyer@example.net	good	{later,plant}	next	level
567	phillipwilliams@example.net	like	{walk,suddenly}	along	effort
568	cookdavid@example.org	least	{fly,last,study,professional}	their	within
569	angelasparks@example.com	machine	{husband}	fish	ever
570	saragraves@example.net	party	{language,play,leader,eye}	organization	another
571	danielreed@example.org	those	{response}	hotel	structure
572	kathryncisneros@example.com	ball	{food}	significant	movement
573	muellerthomas@example.net	any	{responsibility,base,whether,entire}	chance	hand
574	fyang@example.net	home	{arrive,on,brother}	about	eye
575	carpenterjoshua@example.org	he	{manage,relationship,improve,choose}	outside	set
576	omontgomery@example.org	somebody	{hope,according}	begin	policy
577	katherine87@example.org	rather	{well,open,million}	expect	despite
578	fredcaldwell@example.org	response	{herself,realize}	long	rate
579	traceynewman@example.org	enjoy	{sometimes,company}	gun	card
580	holly01@example.com	quality	{threat,data,news,perform}	teacher	appear
581	maria87@example.com	you	{together,not,join}	network	meet
582	vmorales@example.com	skin	{one,allow}	collection	national
583	keithschroeder@example.org	talk	{care}	themselves	test
584	huertaadam@example.org	store	{action,science,moment}	us	far
585	simpsonbrett@example.net	never	{southern,deep,former,from}	involve	behind
586	tmoore@example.org	easy	{project,staff}	deal	take
587	lisa49@example.net	might	{reality,million,take,capital}	force	wrong
588	jonathanbaker@example.org	must	{strategy,black}	position	from
589	mkeller@example.com	organization	{enter,year,together}	young	police
590	parkerjames@example.net	recognize	{tree}	resource	any
591	richardhenderson@example.net	table	{four,animal}	those	particularly
592	kimberly25@example.net	star	{go,threat}	without	military
593	olivialozano@example.com	benefit	{thing,coach,at,produce}	Congress	event
594	mjones@example.com	story	{I,no}	adult	choose
595	nicholas90@example.com	message	{next}	half	purpose
596	joseph98@example.net	practice	{mother,thought,game,might}	read	court
597	deanbrittney@example.com	network	{there,too,blue}	guess	operation
598	josesexton@example.org	plant	{suddenly,ten,full,own}	author	else
599	timothynguyen@example.org	American	{event,look,change,cause}	himself	evidence
600	montgomerylance@example.net	beautiful	{affect,movement}	series	commercial
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (engineer_id, email, password_hash, mv_user, employee_no, office_site, level) FROM stdin;
601	janice72@example.org	anyone	{husband,film}	memory	miss	appear
602	cwhite@example.org	could	{right}	night	suddenly	civil
603	scook@example.org	involve	{maintain}	industry	reality	sign
604	bcuevas@example.net	step	{political,grow}	voice	chance	year
605	bernardian@example.net	improve	{detail,accept,stop,glass}	these	mission	author
606	ibennett@example.com	true	{others,commercial}	view	why	Congress
607	yfrench@example.com	order	{especially,push,tell,director}	politics	near	large
608	carolyn04@example.net	read	{language,fish,particularly}	us	individual	lead
609	dylan76@example.net	example	{realize,along,off,late}	animal	wife	whole
610	xwhite@example.net	whose	{imagine}	room	development	company
611	christianburton@example.com	appear	{practice}	wish	exactly	cut
612	melissawilson@example.net	school	{create}	hit	your	especially
613	shannon01@example.net	country	{up,during,foreign}	night	who	bit
614	rosalesashley@example.org	pretty	{far,environment}	floor	end	follow
615	aturner@example.com	onto	{fill,consumer}	act	include	think
616	barrettbrandon@example.net	realize	{night,message,spend,add}	wrong	thank	believe
617	derrickmeyer@example.com	court	{work,plan,information}	become	return	story
618	jacqueline87@example.net	rest	{thought,hard,actually,as}	unit	either	least
619	belllacey@example.com	watch	{turn,set,sing}	officer	learn	chance
620	astevens@example.net	I	{friend,we}	lay	wear	general
621	broach@example.org	main	{way,away,though,health}	case	find	peace
622	jenniferwright@example.com	now	{building,far,true,quite}	feeling	age	position
623	zmcdaniel@example.net	class	{blood}	buy	high	chance
624	lmatthews@example.com	small	{prove}	simple	popular	other
625	erodgers@example.net	reduce	{little,possible}	tell	detail	marriage
626	garzajessica@example.org	decide	{national,fish,whose}	arm	kitchen	with
627	jacobtaylor@example.com	offer	{radio,either,product,eight}	produce	land	look
628	kingvictoria@example.org	per	{baby,magazine,avoid}	fact	career	production
629	allen87@example.com	clearly	{city,behind,station,few}	pattern	too	shake
630	jashley@example.net	newspaper	{establish,effort,enough}	sell	contain	consider
631	jennifer70@example.net	its	{out,ground,under,sometimes}	reach	father	loss
632	judith52@example.com	lay	{imagine,toward,sign,perhaps}	region	side	that
633	emily40@example.net	citizen	{treat,every}	serious	myself	once
634	lcampbell@example.org	daughter	{past,thousand}	myself	name	water
635	eric55@example.com	every	{thank,whatever,might,management}	upon	material	past
636	vcoleman@example.org	source	{audience,recognize,lawyer}	loss	even	serious
637	richardsonlaura@example.org	order	{Republican,task,newspaper}	condition	decide	reality
638	ywright@example.com	study	{still,southern,more}	economy	despite	chance
639	steven71@example.org	report	{total,agreement,note,card}	look	stock	final
640	stevenevans@example.org	hotel	{dinner}	like	record	head
641	cadams@example.net	central	{five,respond,consider}	husband	girl	professor
642	jennifermcclain@example.com	so	{bill}	research	run	member
643	zfisher@example.com	since	{never,finish,letter}	provide	year	who
644	glendasullivan@example.net	down	{lay}	best	little	place
645	twalker@example.com	become	{very,him}	town	laugh	again
646	tanner08@example.org	close	{way,choice,man}	cover	ten	leg
647	gtaylor@example.org	smile	{business,ground}	course	star	concern
648	serranogary@example.net	three	{keep,them,participant}	television	under	central
649	wilsoneric@example.net	chair	{certain,candidate,on,trade}	until	debate	argue
650	acole@example.com	which	{work,woman}	star	two	throw
651	egallegos@example.com	phone	{car,explain,table,old}	tend	threat	region
652	qlopez@example.net	sort	{attack,country,provide}	any	value	moment
653	mendezrobert@example.org	ground	{during,read,close}	side	try	yeah
654	randallkathryn@example.org	body	{they}	across	office	require
655	sreid@example.net	body	{degree,anything}	military	finally	ten
656	creilly@example.net	become	{scene,join}	special	check	protect
657	jeremy58@example.org	city	{reality,ever,question}	finally	together	certain
658	qware@example.net	ahead	{war,effect,skin,sell}	idea	yes	bag
659	julie45@example.net	enter	{poor,traditional,approach,remain}	sense	war	face
660	cameron33@example.net	should	{different,big}	learn	follow	might
661	batescharles@example.org	authority	{player}	who	ability	majority
662	franklinrobert@example.com	discussion	{day,building,hand}	this	voice	budget
663	tinaoneal@example.org	audience	{agree}	rich	data	officer
664	jonesstephen@example.net	morning	{win,represent,result,matter}	just	discussion	cause
665	william90@example.com	course	{forward,service}	when	tell	white
666	fisherjustin@example.org	game	{word,put,dream,card}	food	tonight	certain
667	rclark@example.org	edge	{leader,us,know}	student	area	civil
668	richard57@example.org	dog	{positive,herself,various,perhaps}	agency	why	best
669	lmendoza@example.org	pretty	{girl,project,really}	establish	treat	bank
670	phillip90@example.com	network	{bit}	former	well	vote
671	xanthony@example.com	old	{certainly,skill}	return	measure	send
672	nsmith@example.net	those	{house,treatment,teacher,because}	party	tough	north
673	kimmichael@example.net	gas	{culture}	scene	beyond	wear
674	sandra45@example.net	would	{street}	walk	three	past
675	millerbeth@example.com	serious	{tree}	place	season	draw
676	djenkins@example.net	age	{across,interest}	someone	past	break
677	phillip30@example.org	interesting	{customer,become}	forget	garden	near
678	valdezjessica@example.net	throughout	{effort}	room	politics	year
679	rothjoshua@example.net	note	{film,prepare,ever,must}	miss	give	later
680	emily59@example.net	knowledge	{authority,talk,hope}	put	article	health
681	bdalton@example.net	someone	{only,approach}	marriage	individual	south
682	zacharyhill@example.com	price	{successful,window}	guy	bad	trade
683	mitchellsteve@example.net	benefit	{woman}	wrong	treatment	past
684	xdavis@example.com	star	{national}	president	could	far
685	ianhernandez@example.net	meet	{be,represent,subject}	sea	nearly	threat
686	chapmannicholas@example.com	government	{natural,science,owner}	paper	issue	speech
687	lauracharles@example.com	daughter	{again}	practice	all	these
688	joshua50@example.org	term	{management,experience}	history	assume	maybe
689	nicholssara@example.org	account	{kitchen,what,court}	over	growth	in
690	panderson@example.com	support	{game,set,fish,paper}	understand	threat	cover
691	brianna82@example.org	sure	{however,nation,learn,responsibility}	unit	wish	military
692	qbyrd@example.org	my	{mouth,cost,until}	citizen	mention	care
693	qfowler@example.net	old	{organization}	effect	treat	spring
694	johncherry@example.net	personal	{perform,religious,responsibility}	increase	charge	your
695	jpowell@example.net	occur	{wrong}	land	many	from
696	coxlinda@example.org	back	{billion,significant,may,fund}	I	win	glass
697	erika71@example.org	act	{better,father}	guy	apply	pull
698	philipmcmahon@example.net	relate	{ball,name}	expert	art	participant
699	rjohnson@example.org	newspaper	{discover,director}	write	high	like
700	gregoryrangel@example.org	meet	{low,baby,bar}	section	evidence	child
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (supportagent_id, email, password_hash, mv_user, employee_no, queue) FROM stdin;
701	sergio19@example.net	significant	{local,culture,choose,southern}	leave	side
702	lesterleslie@example.net	two	{wonder,require,TV}	certain	opportunity
703	paul56@example.com	out	{win,positive,hair}	tell	relate
704	gbanks@example.com	million	{ability}	name	onto
705	chadweber@example.com	kitchen	{administration,cold,pick}	white	concern
706	mreyes@example.org	example	{rather,save}	study	positive
707	edwin97@example.com	daughter	{moment,financial}	expect	opportunity
708	leejennifer@example.org	process	{work,can}	training	special
709	rogerpayne@example.com	each	{visit,common,international,keep}	consider	method
710	perezgabriel@example.net	television	{attack,lot,cost}	ahead	Republican
711	sarashepard@example.net	strategy	{brother,particular,crime,tax}	history	alone
712	casey75@example.com	involve	{management,clear,space,personal}	young	add
713	georgemonica@example.net	event	{thank,strategy}	boy	gas
714	johnrobertson@example.org	her	{lot,full}	property	condition
715	renee41@example.net	participant	{best,opportunity,experience,day}	sell	find
716	rodriguezanthony@example.org	agree	{work,yet}	fight	enjoy
717	stephanie81@example.net	great	{property,decade,world}	really	one
718	andrearichardson@example.org	wide	{wall,with}	indicate	speak
719	joseph90@example.org	change	{city,else}	space	loss
720	dellis@example.com	language	{describe,heart}	good	food
721	robertpatel@example.net	father	{sense,state,including}	family	leader
722	harold56@example.com	quite	{hot}	general	second
723	brentwallace@example.com	difference	{that}	detail	into
724	kgay@example.org	result	{work,raise}	type	opportunity
725	utran@example.org	attack	{happen}	above	house
726	yyates@example.org	range	{everything,long,house}	yourself	take
727	nashryan@example.net	police	{seven}	challenge	western
728	robinbutler@example.com	just	{yes,rock}	form	loss
729	haguirre@example.org	political	{defense,share,employee,watch}	seat	cup
730	janicehenderson@example.net	lawyer	{occur,thousand,hotel,phone}	away	size
731	rvillegas@example.net	trial	{trade}	break	either
732	yware@example.org	particular	{enter}	your	save
733	lisa61@example.org	available	{win}	whether	find
734	mark27@example.com	between	{town,rest}	process	let
735	charlesmiller@example.org	red	{life,ability,after,speech}	time	range
736	johnblair@example.net	task	{true,listen,mention,again}	discuss	resource
737	mroy@example.net	ball	{maybe,give,involve}	relationship	collection
738	cookemelanie@example.com	we	{friend,blood}	market	name
739	stacy52@example.net	off	{build,his}	maybe	positive
740	vargasjohn@example.org	father	{yet,tax,seek,technology}	wait	need
741	sanchezkenneth@example.net	choice	{radio,trouble}	provide	material
742	janet48@example.net	nice	{election,fish}	pay	local
743	manuelcook@example.com	do	{population,each,beyond}	rich	everybody
744	fdavis@example.net	again	{program,everyone,serious,development}	also	economic
745	fmitchell@example.org	phone	{paper,opportunity,avoid,foot}	range	wall
746	annettehubbard@example.com	big	{between,see,unit}	meeting	general
747	jguerrero@example.org	class	{turn,for}	close	similar
748	roblesdale@example.com	edge	{arrive,ground}	crime	leg
749	avargas@example.org	miss	{ask}	develop	focus
750	reillyjohn@example.com	alone	{man,up}	forward	while
751	tracyhamilton@example.net	single	{trial,hundred}	part	arrive
752	brittany24@example.com	senior	{pass}	approach	of
753	sporter@example.org	use	{economic,owner,someone}	serve	everyone
754	amichael@example.net	must	{others,see}	consider	office
755	janet77@example.org	school	{join}	task	size
756	traviscatherine@example.com	gun	{despite,anyone,ability}	authority	capital
757	rebecca74@example.net	first	{ok,left,smile,grow}	production	practice
758	bwhite@example.com	walk	{treat,rule}	house	bad
759	sgentry@example.org	to	{specific,give}	gas	lay
760	jonesnichole@example.com	main	{door,fall,voice}	choice	well
761	nwebb@example.org	season	{develop,character}	compare	example
762	victorperez@example.net	big	{still,bad}	agency	he
763	drusso@example.net	town	{require,east}	hundred	how
764	grosskiara@example.org	he	{step,teach,administration,defense}	guess	recent
765	nicholasbarrett@example.com	enjoy	{paper,particularly}	partner	theory
766	barkermatthew@example.org	guy	{customer,to}	suffer	like
767	stonewilliam@example.com	else	{rock,agent}	career	partner
768	kelleycourtney@example.net	heavy	{official}	green	board
769	xcarter@example.com	total	{partner,example,hold}	material	include
770	gonzalezerika@example.net	similar	{together,easy}	name	church
771	christopher07@example.com	should	{tend,avoid,good,base}	operation	parent
772	brentduncan@example.com	clearly	{in,pattern,kid,just}	buy	leader
773	carterbrett@example.net	spend	{science,minute,down}	level	course
774	clarkpedro@example.net	contain	{where,others}	give	understand
775	robert59@example.net	always	{discuss}	realize	local
776	umccormick@example.org	century	{think}	because	out
777	stephen61@example.org	total	{child}	director	send
778	calhoundawn@example.org	moment	{happen}	doctor	institution
779	cruzdouglas@example.net	do	{early,wait,anything}	family	effort
780	richard37@example.net	grow	{protect,force,nearly,may}	can	make
781	sheilaalvarez@example.net	rather	{product}	record	really
782	karen64@example.org	north	{color}	guy	choose
783	deborah31@example.org	community	{what,oil,test}	care	reason
784	prestonprice@example.com	audience	{approach,gun,until}	good	audience
785	thomas48@example.net	business	{development,minute,man}	challenge	almost
786	enelson@example.com	me	{paper,whose}	very	nearly
787	sdoyle@example.com	other	{draw,clearly}	pretty	page
788	jonathan88@example.com	next	{movement,just,fact}	other	concern
789	victoria57@example.com	condition	{newspaper,voice}	only	may
790	jrivera@example.net	responsibility	{agent,find}	whom	new
791	rweeks@example.org	inside	{sense,he,star}	hand	and
792	oliverjennifer@example.org	middle	{process,growth,be}	necessary	rock
793	jasonjohnson@example.net	ball	{officer,ready,light}	know	as
794	jcain@example.net	cost	{white,specific,myself}	white	just
795	torresjason@example.org	news	{increase}	necessary	stay
796	justin06@example.net	shoulder	{speech}	character	country
797	sandovalamy@example.net	upon	{eight,from}	former	performance
798	vpacheco@example.net	however	{relate,thus}	would	professional
799	reynoldsmichele@example.org	people	{nothing,occur,lead,imagine}	family	prevent
800	steven63@example.net	trouble	{something,it,former,commercial}	character	address
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (digitalproduct_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, category_products_category_id) FROM stdin;
201	example	old	173	305	669	{decade,forget}	city	\N
202	film	military	365	625	758	{ask}	whose	\N
203	at	maintain	402	575	410	{believe}	city	\N
204	party	instead	496	809	266	{popular,bad}	middle	\N
205	five	law	734	228	265	{defense}	break	\N
206	nice	still	865	677	32	{exist,last}	and	\N
207	direction	month	325	951	443	{affect}	culture	\N
208	outside	understand	805	276	195	{stuff}	son	\N
210	participant	truth	596	936	956	{indicate}	factor	\N
211	bag	level	621	969	269	{person,parent}	someone	\N
212	approach	church	540	167	142	{bill}	particular	\N
215	position	trip	119	736	212	{source,none}	call	\N
216	other	oil	70	109	234	{service,at}	wide	\N
217	accept	available	330	505	951	{pull}	phone	\N
218	nice	commercial	979	192	47	{fine}	between	\N
221	model	through	351	679	858	{provide,its}	far	\N
222	size	may	121	628	710	{produce}	type	\N
223	let	head	98	228	410	{maybe}	training	\N
224	put	painting	507	461	387	{ahead}	rather	\N
225	discuss	author	997	238	242	{agreement,throughout}	need	\N
227	wait	sometimes	217	463	733	{painting,size}	all	\N
228	product	game	339	509	608	{door}	away	\N
229	several	into	932	219	81	{financial}	hotel	\N
231	line	music	328	911	393	{term,happy}	data	\N
233	half	official	902	845	777	{tax}	pay	\N
235	true	which	397	149	898	{room}	large	\N
236	career	factor	579	389	261	{above}	middle	\N
237	middle	adult	82	474	668	{outside,step}	recently	\N
238	level	general	928	15	37	{training}	very	\N
239	little	instead	538	861	133	{room}	arrive	\N
240	grow	analysis	956	281	800	{ball}	which	\N
241	nothing	air	443	94	195	{performance}	could	\N
242	figure	wind	512	653	134	{enter,party}	scene	\N
243	education	mission	704	837	866	{according}	local	\N
244	treatment	price	679	459	400	{crime,inside}	situation	\N
245	should	true	647	275	993	{class,business}	practice	\N
246	star	remember	658	651	249	{myself}	we	\N
247	make	rate	62	603	958	{who}	machine	\N
248	feeling	ball	359	439	620	{increase}	throughout	\N
249	should	them	927	362	561	{commercial,offer}	energy	\N
252	risk	memory	762	626	739	{economic}	cold	\N
253	far	old	258	182	1000	{across}	method	\N
254	election	expert	155	61	941	{support}	budget	\N
257	capital	key	514	380	102	{benefit,know}	article	\N
258	mother	key	42	130	545	{question}	center	\N
259	during	your	454	681	132	{light,try}	hundred	\N
260	agree	three	782	725	921	{member,direction}	voice	\N
261	address	eight	26	755	538	{scene,cut}	either	\N
262	finally	green	93	257	820	{stay,maintain}	goal	\N
264	next	upon	60	751	268	{increase,go}	newspaper	\N
265	point	food	753	134	267	{staff,see}	truth	\N
266	popular	run	827	120	877	{whatever,improve}	yet	\N
269	myself	common	946	347	522	{no,then}	media	\N
270	prepare	several	980	918	599	{author,social}	possible	\N
271	morning	understand	108	133	669	{house,serve}	college	\N
273	commercial	research	919	852	299	{form}	matter	\N
274	budget	soldier	205	380	399	{each,study}	let	\N
275	speak	safe	100	420	354	{need}	but	\N
276	choose	heavy	589	67	45	{get,number}	daughter	\N
277	design	brother	835	819	667	{term,wrong}	growth	\N
278	guy	about	428	306	327	{world,art}	only	\N
279	degree	president	280	334	767	{throw}	off	\N
281	unit	become	937	745	334	{smile,perhaps}	debate	\N
282	picture	exactly	587	71	463	{campaign,test}	relate	\N
284	newspaper	than	950	760	994	{over,one}	question	\N
286	each	plan	945	593	821	{these}	partner	\N
288	former	state	590	874	258	{such}	free	\N
290	leave	either	371	965	817	{president,film}	threat	\N
291	million	until	413	315	476	{magazine,glass}	get	\N
293	interest	hear	152	257	704	{for}	senior	\N
294	four	election	577	137	929	{parent}	that	\N
295	civil	wonder	190	785	421	{behavior}	talk	\N
296	politics	those	832	102	559	{should,form}	wrong	\N
298	eye	finish	69	648	585	{lose}	through	\N
299	want	player	876	75	814	{have}	last	\N
300	would	senior	659	859	178	{tonight,order}	program	\N
209	feel	morning	641	750	170	{again,consider}	senior	87
272	she	pretty	537	573	737	{six}	final	42
292	want	similar	545	520	172	{catch}	structure	94
297	nearly	get	732	110	210	{sell,tough}	age	59
283	worker	would	492	466	935	{important,player}	fill	51
232	staff	difficult	941	201	410	{door}	yet	86
214	again	want	318	770	411	{including}	field	50
287	power	country	138	50	537	{trouble,organization}	opportunity	45
251	present	turn	942	679	72	{serve,dog}	eat	62
255	build	raise	876	439	873	{black}	father	52
250	ready	respond	552	205	729	{move,soon}	office	86
219	accept	everybody	829	612	24	{last}	local	37
213	well	game	916	733	452	{dream,garden}	agent	18
234	far	per	813	936	32	{religious}	moment	98
267	later	important	97	436	862	{responsibility}	society	73
289	once	establish	720	588	765	{when,always}	care	44
220	similar	claim	700	36	507	{reason,tough}	bad	1
263	sport	total	88	310	36	{drop,fight}	sing	98
280	activity	night	539	125	153	{skin,moment}	western	54
230	sometimes	money	16	817	6	{drug,box}	describe	65
285	student	board	836	911	948	{these}	speak	35
226	quality	line	474	561	594	{wall,there}	although	49
256	everyone	result	55	653	94	{cut,such}	safe	81
268	begin	identify	515	571	211	{avoid,tough}	show	40
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (fulfillmentassociate_id, email, password_hash, mv_user, employee_no, shift) FROM stdin;
801	david57@example.com	bit	{you,likely}	on	machine
802	rebeccasantiago@example.com	whose	{rather}	mind	weight
803	michael39@example.com	cut	{than,nothing,religious,hot}	power	test
804	roweshelby@example.org	material	{understand,star,prove,executive}	affect	Mr
805	mcmillanalexander@example.com	plant	{others,understand,tell,say}	newspaper	too
806	williamlowery@example.org	woman	{those,chair,ahead}	our	music
807	heatherbrown@example.net	catch	{player,risk,already}	identify	court
808	miranda16@example.org	decide	{environment,hundred,skin,politics}	protect	interest
809	micheal36@example.org	hope	{newspaper}	court	cold
810	steven58@example.com	song	{nice,music,win}	same	standard
811	dclark@example.net	country	{area}	TV	close
812	kmiller@example.com	need	{response}	safe	report
813	dana51@example.com	which	{shake,outside,picture,room}	culture	television
814	gpreston@example.com	agree	{blood,arm,about,space}	meet	red
815	misty81@example.org	message	{set,difference,boy}	anything	role
816	jenniferjackson@example.com	simply	{sense,life,American,other}	quality	however
817	graydiane@example.net	teacher	{military,full}	practice	table
818	melissa06@example.org	pay	{music,student,policy}	audience	interview
819	jacobssteven@example.net	government	{population,property}	go	positive
820	fsmith@example.net	big	{fast}	left	food
821	robin27@example.net	difference	{behavior,front,couple}	must	mean
822	ygraham@example.net	democratic	{stage}	agent	public
823	collinslaurie@example.com	fast	{voice,draw,alone,meeting}	she	she
824	deborah64@example.com	near	{audience}	fly	outside
825	kpennington@example.org	think	{address,buy,no,guess}	which	perform
826	brianperry@example.net	point	{out}	picture	mind
827	tanyachapman@example.net	theory	{everyone,enter,during,including}	politics	investment
828	jerrymontoya@example.org	activity	{fire,data}	indeed	while
829	carol00@example.com	create	{after,father,experience,political}	between	season
830	ambercraig@example.com	finish	{evening,arrive,family}	else	network
831	henry93@example.org	responsibility	{live}	artist	Mr
832	frostsharon@example.com	tonight	{establish,look}	result	relate
833	olynn@example.net	improve	{line,edge}	one	discuss
834	tanyamarquez@example.org	general	{pay,factor}	man	next
835	stacey73@example.org	street	{drug,treatment,red}	rest	rock
836	brandonsellers@example.com	various	{seek,support}	thus	outside
837	jesse27@example.net	everything	{beautiful,hundred,join}	room	before
838	ycooper@example.com	this	{civil,four,everything}	necessary	behavior
839	daviddiaz@example.net	myself	{which}	nature	sound
840	jamestorres@example.org	film	{compare,like,allow,often}	small	quite
841	martintamara@example.net	use	{difficult,sit,work}	society	show
842	vstafford@example.org	improve	{likely}	leave	type
843	bradshawandrew@example.net	watch	{prove,early,action,traditional}	note	become
844	tuckerdustin@example.com	machine	{into}	fast	here
845	ryanparker@example.com	environment	{above,west,high,poor}	article	trade
846	jayedwards@example.org	president	{reach}	method	pick
847	donaldvance@example.com	quite	{role}	safe	expert
848	henrydonald@example.com	adult	{he,charge}	soon	model
849	michelle45@example.com	treatment	{card,have}	question	himself
850	lgutierrez@example.com	color	{town}	quickly	successful
851	jjackson@example.net	popular	{right,go,letter,above}	environmental	with
852	richardswilliam@example.com	power	{must,whether,any,fight}	he	certain
853	garciaabigail@example.com	street	{cost,number}	management	pressure
854	shawncochran@example.net	him	{reality}	investment	behavior
855	xfields@example.com	important	{whatever,difficult}	process	either
856	zlee@example.net	move	{eat,matter}	question	until
857	williamsrandy@example.com	place	{begin,she,leave,billion}	something	late
858	michael57@example.net	personal	{every,let,carry}	deep	assume
859	cody00@example.com	old	{increase,office,both}	current	return
860	daniel01@example.org	cost	{test}	yeah	national
861	sean79@example.org	him	{bag,generation}	there	car
862	cnelson@example.org	be	{but,media}	either	yet
863	fosterjames@example.org	thousand	{great}	foreign	indeed
864	lsandoval@example.org	issue	{appear,population}	thousand	myself
865	hessjames@example.org	senior	{before,many,scientist}	nearly	recent
866	allisonpeck@example.com	nice	{along,soon,hour}	meeting	race
867	terri47@example.org	out	{professional,should,million}	consider	form
868	rodriguezkeith@example.com	every	{ok,manage,environmental,wish}	relate	make
869	caitlynsnyder@example.org	guy	{figure,difficult,where}	player	why
870	spearskelly@example.org	culture	{money,debate,clear,also}	them	test
871	jeremiahcrane@example.net	movie	{capital,science,author}	ever	film
872	moodyerin@example.net	couple	{eight,question}	program	newspaper
873	sanderskelly@example.org	old	{trade}	miss	serious
874	serranobrett@example.org	place	{thought,share,economy,value}	firm	movement
875	erichardson@example.net	democratic	{cut,impact}	less	green
876	lori67@example.com	south	{reality,company,none}	picture	try
877	derek02@example.com	fly	{tend}	improve	despite
878	cynthia55@example.com	which	{cost,professor,relate}	hundred	already
879	andrearobinson@example.com	foreign	{every,trouble}	boy	wall
880	bcastillo@example.org	late	{no,professional,others}	write	future
881	crystallopez@example.net	form	{common,body,skill}	create	class
882	millerjanet@example.org	hold	{her,draw,attorney}	culture	rich
883	calvin36@example.com	scientist	{tonight,type}	attention	wind
884	kleintara@example.com	successful	{glass,receive,successful}	dog	campaign
885	omann@example.net	mean	{today,remain,since}	image	cup
886	phillipscott@example.com	collection	{bit,meeting,red}	nation	bill
887	ihensley@example.org	career	{thank,subject,section,a}	some	last
888	benderthomas@example.com	with	{kind}	growth	suddenly
889	chambersjulie@example.com	agree	{wear,important,outside,color}	itself	development
890	snorton@example.org	feeling	{serious,window}	relate	fight
891	rubenkent@example.org	mouth	{sign,look,sea,picture}	interview	soon
892	guerrapatricia@example.net	officer	{a,relate}	specific	low
893	dixonamanda@example.org	girl	{chair,defense}	country	tax
894	contrerasregina@example.net	everything	{sound,common,certainly}	line	town
895	crystalcole@example.com	throughout	{agreement,less,follow,from}	beyond	safe
896	smorris@example.org	be	{study,outside,practice,maintain}	condition	letter
897	petermedina@example.net	hand	{yard}	my	many
898	samuel08@example.com	so	{message}	challenge	will
899	davidcollins@example.com	try	{class,better,anyone}	production	it
900	gregory66@example.org	least	{land,assume}	for	artist
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (categorymanager_id, email, password_hash, mv_user, employee_no, department) FROM stdin;
901	gilbert45@example.net	too	{year,speak,doctor,occur}	point	drive
902	hdaniels@example.com	oil	{physical}	enter	phone
903	dana48@example.net	anyone	{now,deep,especially}	central	wait
904	fhiggins@example.com	result	{heart,me}	back	office
905	harringtonconnie@example.org	go	{list,true,give}	technology	employee
906	cannonkatherine@example.org	offer	{I,themselves,dog}	strategy	listen
907	davidsonraymond@example.com	parent	{tough,fight,often,mean}	project	back
908	natashareynolds@example.com	candidate	{mission,itself,free,here}	human	management
909	wmorse@example.com	animal	{general,style}	husband	daughter
910	brian79@example.com	anyone	{just,class,let}	area	onto
911	gonzalezrichard@example.org	official	{heart,case}	else	reach
912	tranjessica@example.net	road	{lead,fight}	company	meeting
913	nicholas05@example.net	pull	{bar,action,our,mission}	source	group
914	andersonwilliam@example.org	yet	{time,network,catch}	ahead	floor
915	nicoledunn@example.net	human	{ability}	account	play
916	nguyenrebecca@example.com	see	{reality,raise,significant}	free	white
917	ballardelizabeth@example.org	type	{everybody,meet,speech,work}	reveal	store
918	kclark@example.net	impact	{step,only,model}	cold	grow
919	williammatthews@example.org	professor	{explain}	morning	sell
920	amiles@example.com	risk	{beautiful,majority}	woman	break
921	alexandrapeck@example.org	responsibility	{majority,try,seem,light}	prepare	glass
922	annawilliams@example.net	sound	{feeling,most,environmental,ask}	mouth	difference
923	janice74@example.org	attention	{PM}	walk	three
924	pwright@example.org	school	{tree}	deep	gas
925	chrisrobinson@example.org	fast	{lose,somebody,network,drive}	voice	without
926	douglasrivera@example.net	speech	{air,in,drop,machine}	most	space
927	kingmelissa@example.net	stand	{current}	long	yard
928	uday@example.net	drug	{suggest,police}	body	everybody
929	qgriffin@example.org	behavior	{throw,article,hand,teacher}	identify	page
930	nicholaskidd@example.com	run	{gas,five,head}	house	wish
931	john83@example.org	arrive	{baby,statement,summer,heart}	write	example
932	patelrebecca@example.com	fall	{recent,available,up,provide}	according	door
933	jwalker@example.org	security	{among,sell,action,draw}	great	car
934	carlareynolds@example.net	cover	{direction,action,own,understand}	second	heart
935	joe95@example.com	music	{picture}	either	try
936	velasquezjohn@example.org	probably	{under,population,beautiful,wall}	society	participant
937	david64@example.org	white	{arm,remain}	talk	method
938	cynthia75@example.org	according	{commercial,they}	civil	great
939	robert35@example.org	black	{follow,nice}	staff	four
940	brett19@example.org	policy	{get}	beyond	pass
941	ryan76@example.com	kid	{land,ahead,measure,few}	enter	performance
942	robert47@example.org	campaign	{write,other,reason}	girl	none
943	lwashington@example.com	consumer	{group,member}	per	able
944	danielle32@example.org	particular	{instead,couple}	worker	source
945	cynthiagreen@example.org	next	{star,hard,TV,hair}	simple	their
946	pthomas@example.com	others	{prove,life,get}	quickly	later
947	lewislaura@example.net	tree	{member,include,while}	anything	notice
948	shaneallen@example.com	language	{kitchen,hour}	rule	begin
949	andrewsangela@example.org	heavy	{computer,hospital}	million	what
950	davismary@example.org	account	{be,chance}	economic	become
951	jeffrey70@example.com	rate	{prevent,lay,stock}	goal	current
952	shelly70@example.com	surface	{hotel,might}	war	serious
953	austinjimenez@example.org	left	{popular}	strategy	finish
954	laura13@example.net	girl	{sing}	production	white
955	jbarry@example.org	place	{quality,far}	room	candidate
956	aaron77@example.net	car	{herself,program,rate,movement}	security	training
957	oalvarez@example.org	crime	{nature,girl,common,truth}	teach	physical
958	woodmark@example.com	radio	{leg}	nation	ready
959	melindasanchez@example.com	bill	{leg,under,protect}	fast	join
960	christophercarroll@example.net	through	{one,their}	successful	from
961	elliottchristian@example.org	manager	{expect}	piece	fall
962	jacksongavin@example.net	himself	{Democrat,worry,grow,effort}	true	star
963	samantha98@example.net	attention	{down}	treat	good
964	ohanna@example.org	cold	{including,pay,tend}	social	tonight
965	hesscarrie@example.com	pressure	{million,American}	agreement	suggest
966	wallacechristopher@example.com	activity	{ok,stop,great,less}	trouble	agency
967	rosalesdavid@example.org	manage	{very,western}	ten	improve
968	beckermarissa@example.net	from	{leader,nice,shoulder}	learn	support
969	hayesjocelyn@example.org	than	{thus,respond}	cost	I
970	michaelgonzales@example.org	expert	{personal,single,so}	military	situation
971	ejohnson@example.org	source	{move,material}	similar	music
972	vdonovan@example.com	charge	{former,behind,almost,another}	degree	market
973	csmith@example.com	check	{price}	stop	focus
974	wendy32@example.org	experience	{ground}	notice	both
975	lesliecampbell@example.org	south	{especially}	both	rock
976	xmunoz@example.org	race	{pressure,player,song}	do	why
977	mendezjoshua@example.com	rise	{every,try,when}	eight	none
978	susan23@example.com	relationship	{trial}	age	cause
979	davidholland@example.net	black	{charge,anything,exactly}	notice	attention
980	kbaxter@example.org	resource	{process,air}	rest	very
981	smithjames@example.net	certain	{guy,reveal,south,hundred}	wonder	probably
982	samanthasingleton@example.com	indeed	{player,pressure}	trade	you
983	vrivas@example.net	floor	{by}	quickly	office
984	gpayne@example.org	house	{evidence,security,college,decide}	use	president
985	william29@example.com	however	{week}	though	action
986	christian99@example.net	maintain	{agent,drive,quality}	price	best
987	jose74@example.org	yeah	{fact,office,family,significant}	film	politics
988	aferguson@example.com	nice	{born,eye,able,meet}	threat	three
989	mark50@example.org	human	{hospital,agent,himself,hour}	son	energy
990	karen07@example.com	number	{include,month}	region	phone
991	rodriguezlaura@example.net	buy	{knowledge,however,help,eat}	garden	laugh
992	ywatts@example.net	no	{fish,stay,serve}	war	cost
993	davismark@example.com	identify	{though,whose,city,huge}	option	moment
994	garyalexander@example.org	around	{region}	position	list
995	rothcarolyn@example.org	Republican	{discuss,instead,recently,indeed}	ability	heavy
996	hunteramber@example.net	economy	{father,plant,news,subject}	edge	land
997	richard38@example.net	entire	{since}	determine	action
998	priceandrea@example.net	marriage	{upon}	oil	myself
999	fullerdana@example.org	tonight	{Republican,game,family}	spring	collection
1000	cynthia19@example.org	statement	{market,new,ago}	protect	old
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (product_id, image_id, url, alt_text, sort_order) FROM stdin;
1839	406	song	teach	489
295	941	lead	voice	955
344	659	bad	stay	221
978	827	three	late	212
875	754	me	poor	843
557	588	special	pick	868
1155	499	little	figure	925
1808	258	near	final	900
1774	92	often	expect	843
361	796	name	campaign	714
978	831	claim	could	676
1236	993	imagine	arrive	729
1377	99	mind	medical	583
1725	985	talk	clearly	536
1906	330	return	off	867
1861	159	young	simply	537
2081	518	respond	wind	234
1782	213	against	line	568
1547	132	trouble	something	928
964	405	hot	camera	997
1655	38	show	TV	31
641	417	machine	hotel	971
1404	872	those	trouble	44
55	473	blue	not	593
2067	652	even	wait	517
1713	557	finally	ground	409
156	694	what	figure	769
1554	260	send	speech	499
728	21	instead	history	964
1013	324	and	relate	67
1875	56	commercial	long	63
1471	330	ten	focus	892
385	143	cut	give	439
1358	892	eat	power	291
1596	5	account	near	231
372	272	everybody	truth	415
1732	482	walk	black	416
298	798	child	indicate	609
210	793	ahead	month	271
570	478	several	way	460
2064	949	source	ten	541
1945	768	issue	throw	815
393	611	resource	early	375
1992	175	land	trip	973
1115	673	ask	learn	580
2073	566	fill	wait	363
595	903	administration	time	221
855	383	room	partner	745
665	667	create	example	725
2038	67	positive	level	334
798	94	you	simple	532
1897	235	trip	sister	719
772	341	year	get	133
1397	360	open	pressure	241
1296	252	forward	base	522
101	595	third	per	38
560	267	guy	wait	782
1648	511	investment	popular	120
293	688	field	child	422
1647	100	letter	artist	859
453	936	attorney	force	353
299	377	we	rock	550
1283	206	religious	more	439
1468	174	itself	time	581
1411	72	small	enter	576
2024	289	process	watch	482
1409	207	raise	natural	338
1476	848	interest	collection	792
1412	175	easy	pattern	906
2024	371	process	close	257
924	227	board	eight	762
1054	341	offer	ball	681
510	128	safe	probably	143
324	135	guy	health	573
75	52	group	letter	392
976	133	mean	himself	348
236	476	hit	because	99
565	399	above	prepare	150
1453	89	do	choose	765
947	88	note	music	522
1266	304	early	something	155
1568	998	feeling	price	910
812	593	article	moment	454
751	522	truth	system	785
551	935	economy	gas	970
1192	538	standard	safe	791
1874	961	allow	again	709
2000	118	discover	green	995
1174	18	organization	thus	601
601	809	that	protect	701
828	313	physical	work	647
588	427	together	score	945
1107	837	recent	carry	554
1272	737	group	wait	938
1121	840	place	hope	48
595	578	check	the	194
1171	178	professor	show	748
896	652	clear	mission	369
698	679	popular	entire	728
1765	114	marriage	over	612
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (product_id, variant_id, price_override, barcode, is_active_variant) FROM stdin;
1086	222	1	see	52
1357	176	432	ground	585
1359	998	145	woman	961
521	524	479	buy	504
630	972	842	eye	152
42	910	262	one	476
1858	602	347	economy	622
2098	427	242	question	850
1429	478	491	our	507
527	193	341	turn	197
810	869	343	everything	478
685	783	873	you	709
1165	268	697	ground	561
1396	459	736	heavy	443
925	796	177	may	606
663	523	584	officer	839
1782	834	495	national	759
1721	566	261	able	927
1637	542	513	inside	386
1203	535	863	short	230
1807	876	316	fire	284
1506	591	390	less	268
1396	614	630	goal	86
32	170	968	wish	843
1427	564	688	shake	590
1053	554	896	big	613
735	957	453	model	489
1892	326	77	people	840
386	228	682	water	934
1000	364	352	audience	554
97	559	176	bad	921
1080	651	899	million	780
1185	601	210	field	212
630	582	652	plan	425
1171	994	471	court	421
1556	697	863	growth	30
1794	840	184	subject	130
1348	917	429	source	568
295	178	522	difficult	122
911	844	598	know	101
566	635	478	health	183
743	559	91	direction	144
553	418	825	wall	833
1639	196	354	condition	862
1997	924	652	foot	790
3	805	475	born	616
23	479	647	state	864
1272	105	345	benefit	349
461	468	581	determine	700
1489	288	404	knowledge	340
479	310	141	what	266
582	151	185	accept	192
1467	882	128	team	946
1214	414	175	because	732
1696	355	636	away	542
926	408	931	conference	118
1458	372	234	apply	14
818	218	705	position	776
1463	81	30	scene	584
1404	363	396	team	120
968	629	769	trip	170
389	215	477	must	966
1302	543	186	middle	473
1255	496	231	hair	401
578	13	127	future	178
407	240	327	few	324
838	428	484	meet	143
663	280	592	this	366
360	554	352	choice	508
961	290	737	administration	298
592	373	883	lay	507
617	779	616	receive	807
1352	238	52	affect	573
1706	185	835	reach	497
1706	563	71	hour	197
906	190	910	worker	582
523	329	136	avoid	518
1007	763	53	happy	201
1089	862	230	collection	844
1017	894	674	way	230
1393	256	736	me	760
1675	932	530	medical	631
1936	240	863	when	738
1012	388	601	range	681
916	946	678	meet	180
1483	394	516	light	160
873	583	542	official	131
1189	680	906	charge	171
284	237	481	car	68
1526	920	61	behavior	509
913	457	148	foreign	518
127	856	402	hold	115
627	169	903	glass	200
1217	274	640	computer	390
1643	44	38	share	493
2025	991	657	interest	83
1970	907	136	they	886
1983	218	866	phone	636
575	2	275	dark	767
593	243	156	mother	735
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (product_id, price_id, starts_at, ends_at, price) FROM stdin;
338	690	responsibility	policy	484
1292	660	good	thing	164
56	760	white	run	197
1632	382	so	how	399
568	826	pressure	term	799
1439	785	benefit	imagine	74
1977	303	partner	around	2
1726	122	until	do	995
303	485	hear	despite	127
1871	666	foot	sometimes	228
1073	626	sort	both	9
1477	386	person	fall	592
687	163	none	religious	651
1030	648	wrong	help	260
267	620	poor	beautiful	978
113	140	place	personal	102
1875	767	left	beat	458
1206	288	change	wait	620
1161	172	energy	travel	460
2024	200	majority	inside	998
117	656	prepare	good	72
1188	720	full	describe	904
1960	191	direction	animal	449
411	77	toward	focus	50
1032	918	billion	management	858
985	444	somebody	all	195
102	540	word	arrive	102
1513	447	simple	common	938
1475	291	service	machine	705
1177	431	worker	network	45
635	775	indicate	brother	335
1229	387	house	hour	509
1703	89	but	during	333
980	55	lawyer	position	86
436	188	remember	require	841
13	347	cover	beautiful	434
669	456	sell	impact	912
897	921	north	per	750
294	261	husband	piece	208
1445	172	whether	from	441
1314	757	bank	part	881
1402	398	middle	American	777
804	716	agree	institution	482
141	335	sing	upon	810
1340	57	rest	movement	80
1288	756	work	compare	59
374	444	study	item	220
301	988	because	pressure	38
470	316	a	scientist	658
477	638	American	information	4
606	771	although	listen	694
995	462	new	former	162
403	655	police	issue	896
692	669	item	line	880
1381	230	term	then	202
627	464	those	style	250
1939	235	others	sell	664
996	376	because	child	59
1857	446	eye	ask	993
644	830	than	political	932
1869	765	than	seek	9
1304	491	natural	care	585
149	997	trial	party	221
228	288	past	seat	174
1411	667	control	shake	299
839	7	method	would	811
141	571	build	anything	403
856	134	heavy	poor	738
1069	285	dinner	those	651
1876	47	outside	daughter	794
1661	199	someone	under	394
706	990	attention	especially	471
698	158	water	win	700
408	994	stay	another	160
975	465	body	these	964
1106	929	president	growth	886
1012	976	particularly	despite	884
1105	581	involve	money	144
1787	590	area	their	242
910	371	perform	pretty	259
854	50	chance	next	181
891	56	part	Republican	635
1378	49	body	pattern	308
978	560	evening	say	7
1114	956	federal	seven	469
630	442	recently	plan	14
904	185	relationship	economy	82
663	805	any	either	47
1577	490	he	civil	852
2044	802	table	international	278
276	569	place	east	865
816	924	structure	nice	521
1217	229	movement	student	319
196	492	evening	guy	24
1716	795	police	find	592
273	449	some	Mrs	207
111	839	space	respond	152
1128	828	shake	manage	180
472	326	house	increase	848
393	512	benefit	professional	711
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (tag_id, tag_name) FROM stdin;
1	run
2	investment
3	cover
4	civil
5	picture
6	such
7	civil
8	here
9	a
10	more
11	size
12	tend
13	democratic
14	movement
15	mean
16	day
17	rock
18	fall
19	practice
20	idea
21	gun
22	me
23	decade
24	race
25	in
26	significant
27	study
28	reach
29	case
30	concern
31	ground
32	avoid
33	shoulder
34	ball
35	tree
36	focus
37	at
38	fire
39	financial
40	national
41	relationship
42	force
43	certainly
44	its
45	court
46	number
47	discover
48	live
49	positive
50	factor
51	cover
52	ten
53	same
54	whose
55	factor
56	million
57	strong
58	money
59	cell
60	not
61	music
62	affect
63	business
64	less
65	soon
66	condition
67	Mr
68	thing
69	instead
70	could
71	purpose
72	society
73	certainly
74	section
75	laugh
76	despite
77	clear
78	project
79	begin
80	once
81	brother
82	everyone
83	future
84	human
85	trip
86	foreign
87	treat
88	these
89	push
90	bank
91	series
92	rest
93	enter
94	role
95	their
96	realize
97	argue
98	mind
99	ask
100	scene
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	until	about	Lake Stevechester	machine	spend	perhaps
376	758	do	sound	South Kathy	yet	generation	level
216	906	arm	job	Port Bobby	analysis	by	throughout
164	325	instead	quite	Lauratown	include	marriage	executive
328	812	wonder	true	South Matthewview	sort	she	cultural
267	206	early	agency	Port Sandrastad	rule	dark	mention
170	357	good	its	Andreashire	onto	war	wife
308	749	new	prepare	South Evan	happy	decision	bar
372	164	future	fight	East Danielle	bad	campaign	hundred
113	857	information	term	Michaelton	method	turn	answer
127	712	environmental	investment	Lake Samanthaton	life	hit	cold
287	403	fight	stop	Lanemouth	region	from	lawyer
386	383	rock	option	East Zoe	arm	herself	right
356	272	expect	action	West Jordan	morning	sing	however
300	991	face	nature	South David	station	future	fine
382	120	tend	idea	Port William	just	occur	along
382	629	foreign	it	East Shannon	television	story	ago
285	753	turn	popular	Wesleyview	move	finish	particular
196	152	research	world	Lake Markberg	dream	rise	perform
342	836	poor	guess	Natashashire	account	win	can
290	965	action	page	Lake Sean	for	senior	president
171	539	discuss	even	Carrollview	energy	able	star
335	581	minute	goal	Woodport	other	left	party
326	230	research	them	Caseyton	book	talk	side
139	212	behind	card	South Tammy	then	positive	team
329	696	their	they	South Christopher	best	hospital	arrive
339	670	leg	sign	Dennishaven	training	spend	contain
152	323	all	per	Port Michaelberg	hour	until	phone
288	378	according	ten	Mclaughlinton	discussion	may	seek
359	5	tell	peace	Lake Amanda	media	history	grow
207	544	agree	administration	New Lisachester	do	mission	relate
396	774	word	artist	Feliciabury	direction	commercial	PM
110	291	more	maintain	Lake David	sea	most	care
382	149	provide	happen	Castanedaborough	final	spring	bad
266	698	even	good	New Heatherborough	training	opportunity	such
193	120	general	forget	Hernandezton	call	behind	quality
244	589	officer	attention	North Emilyton	effort	view	art
195	637	provide	article	Ronnieview	marriage	six	situation
246	782	ago	world	Richardchester	key	final	international
254	836	far	officer	Kennedyside	simply	garden	rise
293	230	along	perhaps	Brandihaven	officer	win	type
385	861	environment	minute	Jodimouth	its	sure	those
229	226	chair	everything	South Johnbury	probably	almost	whether
390	422	anyone	western	New Chadberg	live	must	cell
113	800	resource	become	Velasquezville	door	also	without
181	260	ground	occur	Evansfurt	rule	ago	product
125	400	general	eight	Ruiztown	occur	learn	four
207	938	technology	growth	West Robertton	eat	past	piece
173	948	window	campaign	Jenniferport	inside	government	general
377	772	yes	now	Davidport	value	school	kind
136	725	nature	whom	South Sandraburgh	group	especially	something
194	396	price	allow	Lake Loriton	first	improve	popular
237	367	find	work	East Mariah	question	admit	expert
198	917	may	very	Angelatown	give	else	together
255	359	health	throw	Kylebury	modern	strong	agent
129	290	federal	five	West Ericbury	social	for	than
260	433	cell	Mrs	North Josephton	region	special	method
348	806	beautiful	old	Marquezfurt	six	top	dream
147	444	beyond	light	Pattersonhaven	individual	short	up
136	148	follow	positive	South Vicki	choice	site	force
297	810	sport	necessary	Terryport	himself	quickly	itself
392	611	write	population	Martinshire	particularly	election	wonder
297	410	song	around	West Gabriel	even	everything	necessary
272	531	look	election	Robertfurt	forward	west	often
364	33	TV	big	Johnstad	same	always	myself
287	539	that	chance	Barreraburgh	push	then	baby
255	79	father	federal	Port Hollychester	various	act	pick
308	15	city	room	Normanbury	leader	stand	on
149	807	result	upon	Port Cynthia	magazine	line	see
361	482	man	power	Lake Dana	fund	animal	minute
116	177	drop	too	South William	study	put	identify
370	744	fast	prepare	East Ashley	born	environmental	Republican
325	864	sound	day	Port Larryberg	so	blue	necessary
217	794	single	become	Delacruzfort	pull	half	first
351	862	save	ability	South Nathaniel	throw	American	prevent
244	26	capital	fill	Port Dawn	executive	future	hold
218	6	member	boy	Ginashire	better	speech	smile
129	226	truth	voice	Caseystad	imagine	move	drive
364	323	price	president	Port Wendyfurt	both	red	almost
365	99	seek	all	New Jermainetown	production	local	job
268	296	environmental	organization	Novakland	especially	read	behavior
336	977	hope	might	Buchananfort	near	side	often
186	80	one	many	South Anthony	technology	down	today
106	889	I	south	Pamelaton	help	because	sound
363	482	sometimes	throw	Lake Jessicamouth	however	usually	agree
365	180	lead	six	Anthonyborough	huge	provide	property
191	319	across	participant	Barkerfort	less	push	develop
222	289	long	Mrs	Port Tara	impact	meeting	issue
117	18	father	need	Dixonbury	late	box	commercial
177	568	money	professional	Martinchester	add	art	mean
309	142	shoulder	season	Williamsside	green	evidence	process
250	744	sea	last	East Eric	money	realize	other
175	596	dinner	issue	West Daniel	simple	east	very
133	780	process	allow	New Sarahport	machine	impact	ball
335	952	ahead	total	Michaelport	sometimes	far	than
372	102	determine	plant	Johnathanstad	could	this	traditional
254	366	trade	member	Hartburgh	sometimes	who	attorney
116	747	establish	seven	Lake Samuel	difference	development	guess
128	444	success	accept	Bryantown	support	low	kitchen
398	38	beautiful	require	Angelaside	hospital	level	information
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	oil	administration	8	980	find
259	195	name	use	398	242	grow
351	490	between	report	445	698	from
385	405	culture	maybe	452	467	century
124	992	support	building	88	810	piece
352	493	federal	admit	299	498	adult
234	159	chance	blue	690	96	friend
253	999	suggest	brother	696	670	wind
172	408	believe	bank	781	183	ball
391	795	sort	dog	963	188	business
236	877	building	beyond	956	973	mother
120	535	there	reach	942	18	later
317	809	serve	too	790	446	tend
191	187	never	true	533	833	financial
247	841	present	natural	470	51	we
311	880	understand	official	377	337	with
257	146	possible	interesting	239	648	first
206	496	town	network	170	504	bit
345	208	artist	traditional	584	268	grow
189	266	skin	we	465	48	cut
354	336	form	go	77	494	without
128	496	nation	institution	50	374	enjoy
139	500	office	quickly	371	19	son
377	940	energy	alone	202	708	long
279	74	here	play	931	79	second
360	872	character	expert	417	421	third
361	271	marriage	phone	702	695	west
165	683	training	top	277	127	act
398	231	here	as	912	756	mother
243	486	main	property	808	142	artist
292	575	sense	attention	896	528	home
178	362	Mr	hit	245	290	long
248	774	we	chair	778	166	her
126	377	adult	compare	778	821	back
127	222	goal	once	406	49	wrong
349	266	she	prove	3	342	respond
295	770	take	day	291	800	answer
395	297	public	growth	209	306	lose
383	970	business	power	710	888	decade
152	924	season	focus	291	905	letter
332	749	raise	value	455	975	practice
311	794	concern	hospital	218	210	middle
354	392	religious	until	39	818	ever
202	571	exist	half	656	115	child
392	397	report	impact	355	787	institution
316	688	involve	guess	69	754	friend
218	235	bad	western	649	538	spring
185	745	form	kitchen	383	801	health
112	718	now	series	328	999	political
370	850	why	cost	559	305	artist
230	777	ten	space	285	263	ten
133	672	place	common	386	610	card
190	399	customer	cell	791	36	Republican
186	886	break	operation	626	996	issue
343	903	hair	seat	40	540	quite
321	262	world	maybe	899	61	positive
395	697	east	ahead	223	348	together
133	286	unit	produce	985	771	stand
396	306	something	billion	99	945	radio
179	966	tell	lose	533	699	dream
297	809	prevent	the	169	959	concern
166	455	method	agent	267	17	house
118	573	pass	question	33	344	myself
284	327	heavy	probably	55	193	me
114	486	prevent	interview	235	489	under
187	675	wall	allow	909	669	strategy
243	793	by	million	358	731	fear
122	174	entire	manage	734	603	stand
178	691	early	measure	908	359	nothing
256	878	include	interview	339	71	particularly
309	52	behavior	blood	125	137	base
261	210	out	show	571	337	task
272	478	shake	fall	388	319	light
206	800	single	read	791	468	decide
275	382	soldier	bill	488	561	reach
140	642	outside	under	490	687	a
128	979	mention	support	858	413	conference
242	40	situation	pull	572	563	determine
382	664	top	already	134	335	range
150	852	find	would	423	3	debate
379	126	fill	movie	63	978	science
380	256	school	cold	210	699	time
227	758	believe	dinner	658	392	few
350	754	stand	notice	540	756	skill
107	668	back	eye	972	700	arm
222	139	sea	wrong	48	891	everyone
308	876	low	source	935	733	with
316	608	blue	road	911	396	economy
365	356	drop	treat	997	461	item
389	39	none	let	829	42	eight
263	86	fine	person	890	763	star
236	155	religious	culture	56	983	long
214	809	up	sometimes	101	11	future
110	790	your	song	914	325	picture
325	562	brother	moment	538	936	black
321	203	particularly	light	475	463	anyone
125	409	kitchen	maintain	14	56	service
354	210	program	continue	296	707	data
326	883	fine	director	280	327	day
330	599	those	now	871	577	small
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (customer_id, updated_at) FROM stdin;
378	here
238	finish
335	hotel
176	office
303	night
113	various
282	matter
198	between
121	son
275	attorney
190	support
314	statement
400	again
206	there
367	phone
395	west
235	quite
123	stock
197	serve
261	compare
163	size
155	most
322	work
146	significant
234	himself
290	recent
360	example
191	international
192	simply
361	quickly
377	step
317	one
186	city
397	explain
258	choose
345	son
332	conference
106	especially
180	reduce
139	agree
343	price
185	reflect
299	hot
306	free
291	experience
177	ever
300	above
321	response
359	service
239	option
319	leave
308	place
388	may
302	cold
278	question
279	first
134	clear
233	eye
170	physical
144	avoid
136	he
273	truth
375	always
229	myself
221	single
307	clear
160	war
277	article
268	condition
135	gas
223	firm
200	final
362	learn
245	challenge
341	fall
247	evening
212	maybe
382	its
166	finish
283	pressure
368	job
358	there
143	adult
141	low
333	whether
254	money
137	relationship
353	lawyer
385	room
171	attack
311	if
248	executive
349	around
110	number
344	we
257	opportunity
342	area
120	catch
380	serious
205	few
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	consider
145	327	thought
263	947	apply
391	729	miss
321	567	size
239	99	present
256	35	sit
112	929	lead
358	53	several
191	954	help
227	363	picture
294	342	election
129	334	foreign
205	660	forward
134	38	network
167	520	maybe
229	414	collection
256	818	operation
117	669	make
164	817	daughter
251	678	nothing
379	393	best
121	886	trial
253	149	fly
354	393	seek
315	877	raise
395	463	light
395	756	pay
180	487	individual
112	943	general
285	127	today
227	225	personal
263	63	all
145	377	defense
287	752	couple
317	603	product
149	989	question
229	777	house
114	803	parent
140	381	return
197	739	according
191	922	almost
343	728	magazine
290	216	natural
155	932	operation
314	475	company
376	879	design
309	128	professor
292	902	indeed
290	55	race
249	736	building
124	528	beyond
255	680	argue
298	791	hope
107	227	foot
108	80	quickly
124	382	team
125	458	answer
181	929	this
116	621	soldier
254	822	day
127	12	likely
179	673	may
122	38	agency
231	413	form
229	870	trouble
132	434	various
375	60	help
128	512	quickly
335	941	well
120	673	later
150	714	quite
287	982	question
193	600	example
247	131	think
365	960	though
242	962	three
104	246	enter
226	255	health
375	632	really
355	677	early
309	904	air
390	453	time
298	517	strategy
307	127	sea
257	280	event
117	642	year
115	647	sound
356	947	indicate
328	129	mention
344	275	under
321	935	himself
208	121	pay
224	795	establish
372	533	choose
270	98	blood
134	610	fact
365	595	sometimes
333	65	minute
316	894	give
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, category_products_category_id) FROM stdin;
301	popular	mind	23	605	377	{foreign,from}	production	728	\N
302	woman	avoid	827	291	226	{cold}	including	613	\N
303	majority	somebody	506	887	921	{forget}	artist	436	\N
304	tell	positive	464	692	376	{owner}	financial	818	\N
306	allow	loss	207	9	765	{water,success}	another	527	\N
307	law	series	898	499	79	{Republican,mention}	not	631	\N
308	star	himself	904	523	816	{since,rule}	section	42	\N
309	gas	out	361	872	470	{send}	network	195	\N
311	special	probably	123	842	310	{safe,cell}	recent	995	\N
313	western	dog	422	556	963	{color,old}	common	618	\N
314	partner	moment	646	596	316	{movement,sing}	risk	310	\N
315	hear	attention	135	519	455	{maintain}	film	564	\N
316	play	relationship	792	998	167	{suggest,letter}	though	652	\N
317	trouble	suffer	10	435	754	{art}	range	378	\N
318	popular	get	431	412	289	{out}	environmental	921	\N
319	teacher	ask	93	948	93	{care}	growth	393	\N
321	baby	performance	768	873	493	{table,build}	happen	398	\N
322	window	war	468	823	120	{specific,anyone}	cut	364	\N
323	political	practice	149	426	152	{provide}	kitchen	177	\N
324	appear	west	834	267	377	{outside}	can	604	\N
325	ball	leg	806	295	973	{success,defense}	each	265	\N
326	too	reality	962	527	295	{real,fire}	travel	708	\N
327	truth	environment	281	444	344	{course,end}	huge	221	\N
328	group	everything	733	850	504	{red,cold}	model	734	\N
329	remember	physical	436	94	66	{next}	animal	212	\N
330	game	great	990	154	235	{material}	doctor	106	\N
331	because	thousand	260	160	492	{arm}	everybody	409	\N
332	very	box	666	741	192	{true}	moment	92	\N
333	consumer	instead	438	627	978	{senior}	trouble	563	\N
335	interest	enjoy	969	668	993	{song}	field	753	\N
336	specific	visit	567	696	430	{conference}	couple	272	\N
337	network	generation	701	286	184	{maintain,design}	us	825	\N
338	set	training	813	722	879	{energy}	then	806	\N
341	ok	throughout	699	521	510	{like,man}	accept	119	\N
342	gas	phone	621	875	491	{Republican}	society	153	\N
343	president	meet	396	629	928	{by}	you	172	\N
344	threat	what	534	264	427	{project,degree}	human	890	\N
346	strategy	ball	778	639	346	{more,camera}	address	106	\N
347	nor	some	9	776	747	{side,eye}	eat	949	\N
352	recent	easy	152	134	263	{likely}	central	418	\N
353	theory	social	575	646	613	{similar}	health	546	\N
354	land	PM	855	624	522	{top}	dog	969	\N
355	do	any	424	277	287	{available,lose}	medical	713	\N
356	region	front	314	274	504	{probably}	play	511	\N
357	hospital	two	377	614	482	{authority}	serious	347	\N
358	who	wind	181	621	778	{take}	affect	757	\N
359	east	quickly	902	595	711	{appear,inside}	fast	548	\N
360	imagine	such	154	60	517	{increase,environmental}	side	542	\N
361	interesting	energy	707	139	661	{laugh}	now	323	\N
362	modern	someone	638	506	492	{scientist,heart}	voice	122	\N
363	together	likely	131	909	144	{low,option}	yeah	231	\N
364	move	energy	91	651	552	{employee}	prepare	577	\N
365	fast	style	177	702	119	{song}	likely	577	\N
366	affect	appear	205	516	582	{difference,keep}	present	433	\N
368	go	money	313	842	631	{society}	reach	87	\N
349	surface	goal	554	641	451	{upon,last}	agency	779	25
369	common	carry	761	230	287	{individual,career}	movement	276	\N
370	foreign	least	616	737	531	{future,tax}	right	24	\N
372	program	environment	257	921	789	{finish}	mind	698	\N
373	allow	wind	588	43	356	{fly}	everybody	95	\N
374	water	final	743	106	308	{response,us}	cause	255	\N
376	decision	believe	81	143	948	{agency,outside}	response	381	\N
377	price	nature	957	738	654	{identify}	bank	97	\N
379	car	dinner	910	330	982	{kind}	about	361	\N
380	stay	tell	946	823	810	{heavy}	human	621	\N
383	customer	thought	429	549	957	{deal,difficult}	trip	309	\N
384	stay	situation	920	225	648	{feel,happen}	draw	563	\N
386	address	hair	247	221	919	{hold,surface}	before	282	\N
387	knowledge	material	560	21	257	{us,candidate}	generation	968	\N
388	crime	fill	543	269	485	{environmental}	oil	413	\N
390	now	environmental	671	558	372	{as}	understand	634	\N
391	environmental	point	316	457	699	{speech}	thank	160	\N
393	leader	pattern	901	847	222	{long,science}	money	862	\N
394	food	skill	821	869	786	{use,alone}	air	374	\N
395	raise	best	910	300	164	{hit}	chance	870	\N
396	page	modern	815	391	854	{hard,shake}	until	416	\N
398	minute	laugh	683	704	819	{from}	free	551	\N
399	teach	because	976	10	942	{common}	though	389	\N
400	job	want	765	576	965	{nation}	certainly	471	\N
385	there	charge	137	56	615	{man}	threat	180	52
375	speech	report	276	543	51	{although,little}	dog	32	30
348	turn	skill	907	992	726	{carry,expert}	party	58	43
371	indeed	production	125	338	356	{now}	notice	117	41
389	various	against	726	107	763	{catch,summer}	six	71	43
382	specific	share	696	591	636	{baby,yard}	art	578	70
340	whether	dark	400	127	685	{establish,group}	side	302	4
392	others	although	77	936	594	{letter}	effect	693	1
320	get	cell	276	476	279	{computer,actually}	discover	652	2
378	explain	audience	696	337	281	{show}	by	528	31
310	long	west	984	307	713	{defense}	friend	554	68
367	allow	very	336	5	793	{must}	player	842	13
334	law	news	224	548	433	{expect,success}	later	49	86
339	growth	light	220	694	660	{discover}	however	888	35
345	lay	toward	505	649	917	{range}	stage	808	89
397	be	I	121	616	149	{risk,article}	paper	303	93
351	child	state	282	277	724	{to}	answer	422	2
381	kind	dark	950	892	278	{beat,oil}	board	94	27
350	father	prevent	926	863	104	{push}	through	521	9
312	difference	provide	796	557	661	{who,game}	course	539	31
305	American	option	494	744	75	{those,above}	computer	418	22
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (customer_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
355	171	859	second	source	indicate	\N
296	872	668	stock	tough	final	\N
349	256	177	light	president	show	\N
273	979	230	activity	set	ten	\N
145	936	380	nature	resource	forward	\N
206	591	349	blue	ability	pattern	\N
144	25	508	allow	political	charge	\N
234	883	960	always	evening	tell	\N
126	952	93	impact	challenge	moment	\N
386	408	503	economy	almost	spend	\N
292	511	809	rock	model	development	\N
370	551	833	TV	test	sister	\N
113	204	284	understand	sit	task	\N
385	624	86	generation	computer	read	\N
217	188	618	remember	begin	civil	\N
151	619	507	once	page	per	\N
117	507	371	parent	coach	court	\N
127	244	23	impact	defense	woman	\N
264	49	413	here	also	difficult	\N
273	582	400	from	series	real	\N
334	906	742	talk	home	far	\N
221	186	814	stage	marriage	thought	\N
381	270	564	see	send	defense	\N
265	523	959	operation	turn	central	\N
365	990	72	strong	foreign	sort	\N
167	508	149	technology	return	purpose	\N
381	236	615	purpose	whom	artist	\N
369	128	725	guy	word	as	\N
339	938	411	space	sign	continue	\N
161	269	446	best	popular	western	\N
365	36	686	born	yes	show	\N
385	308	954	series	hold	form	\N
316	755	50	join	stop	loss	\N
301	662	956	cost	lot	red	\N
254	370	499	not	the	explain	\N
196	798	99	candidate	identify	board	\N
187	17	208	method	your	different	\N
298	834	359	will	reduce	not	\N
108	128	218	behavior	turn	music	\N
136	255	239	four	off	surface	\N
298	550	300	agency	ask	town	\N
317	897	785	out	gas	everyone	\N
150	460	339	clear	would	sing	\N
244	780	971	piece	rest	guy	\N
256	613	789	peace	end	camera	\N
116	443	676	reduce	hit	energy	\N
199	405	148	use	six	old	\N
319	366	861	trouble	his	very	\N
369	887	314	involve	guess	truth	\N
310	951	34	physical	half	truth	\N
120	57	379	letter	year	bank	\N
188	873	953	simple	college	fish	\N
345	433	290	office	long	improve	\N
353	675	419	former	pick	bank	292
140	929	685	thousand	first	task	1120
103	49	379	may	feeling	somebody	683
323	322	783	sister	local	fear	593
386	532	79	because	see	try	2059
274	888	55	ask	study	certain	1054
391	714	804	necessary	central	difficult	127
335	248	160	must	sister	seat	288
331	529	750	mission	hear	free	624
105	452	573	value	agreement	speak	30
245	7	220	analysis	land	direction	1034
400	660	235	ever	long	image	1823
165	773	180	boy	stage	story	169
289	477	191	book	million	many	1893
193	235	953	financial	card	head	1599
165	42	720	wish	spring	pay	197
309	328	136	show	call	suddenly	615
199	723	205	away	present	could	1485
239	772	152	born	eye	say	1845
127	699	977	those	this	improve	1662
148	383	554	answer	space	cause	869
186	255	734	form	hot	tough	375
325	241	221	serious	recent	door	1223
366	740	617	last	hundred	wrong	42
269	533	278	time	something	rather	977
274	449	358	issue	throw	increase	1922
223	471	761	buy	forward	teacher	9
225	529	685	floor	fly	treatment	2031
336	214	926	huge	else	history	188
322	870	626	reality	with	nor	428
294	815	98	agreement	fire	head	914
202	356	30	character	future	up	471
392	42	177	stand	provide	law	636
244	484	806	find	evidence	court	1035
219	259	677	someone	good	safe	1333
139	22	611	specific	dark	development	1300
286	946	525	mind	tree	bad	567
272	424	949	later	human	ball	1488
377	587	191	hope	itself	long	771
195	629	393	smile	speech	kid	1791
227	359	97	certainly	if	recognize	1082
311	1000	462	performance	best	body	923
297	701	62	material	check	whose	486
230	759	374	each	nice	company	1192
373	449	197	technology	onto	real	1049
353	881	867	above	increase	they	1316
204	496	56	condition	hospital	anyone	2080
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (user_id, session_id, started_at, device) FROM stdin;
7	445	special	war
740	702	whose	yourself
183	47	boy	keep
699	641	picture	task
116	643	pressure	matter
238	748	discuss	size
113	858	us	piece
309	102	work	unit
946	38	practice	themselves
461	322	dog	politics
967	224	chance	bank
619	747	bag	pass
518	578	control	eat
586	63	sign	this
66	685	but	recognize
995	975	pass	prove
648	671	skin	indeed
318	72	site	upon
415	630	level	none
803	783	local	man
208	813	share	marriage
77	899	fast	employee
909	377	will	follow
772	361	degree	fact
898	778	idea	relationship
467	40	off	plant
329	443	during	young
382	748	one	which
315	281	station	church
993	979	my	hard
921	421	agency	late
357	1	yet	pay
102	577	PM	evidence
21	430	next	identify
537	314	catch	international
977	863	option	through
637	447	final	pull
361	792	head	defense
754	709	ball	several
169	717	ready	follow
837	128	create	between
346	49	bad	notice
246	457	recently	bank
266	713	hand	guy
730	848	between	offer
774	872	ever	body
492	268	suddenly	us
197	636	instead	notice
910	571	minute	store
384	489	continue	speak
148	931	hold	while
375	1	some	so
921	316	quality	return
753	264	public	young
314	62	at	arm
784	748	already	media
385	541	free	local
222	366	say	wish
413	672	history	and
751	65	out	side
815	640	everyone	quite
801	607	us	environment
836	7	analysis	matter
458	367	bank	smile
734	152	without	chair
724	28	sometimes	represent
729	889	agent	perhaps
362	437	agree	cut
690	792	action	economic
579	10	interview	road
11	421	member	future
718	82	also	down
294	12	ago	from
390	843	right	teacher
424	838	or	while
636	528	century	treatment
695	301	police	catch
2	169	memory	customer
929	254	player	trip
202	463	like	live
215	649	behavior	recently
465	840	heart	fish
398	789	for	law
132	516	response	music
899	157	note	give
808	893	whatever	finally
240	87	same	choice
815	294	thing	our
114	66	save	partner
613	103	price	of
447	326	where	message
701	1000	page	yard
265	35	author	least
822	905	interest	inside
215	571	present	rule
408	444	yourself	data
466	11	simply	various
382	657	best	if
358	557	garden	official
761	891	many	share
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
97	during	section	\N	\N	\N
5	artist	ever	187	\N	\N
7	let	six	299	\N	\N
16	different	ahead	316	\N	\N
17	rest	during	259	\N	\N
41	physical	kind	261	\N	\N
43	a	everybody	228	\N	\N
48	indicate	really	273	\N	\N
77	meet	ability	299	\N	\N
37	stuff	husband	170	292	575
71	though	bed	163	191	187
52	six	his	292	236	877
36	cultural	democratic	\N	321	203
79	about	meeting	351	133	286
19	draw	memory	250	259	195
49	should	look	\N	360	872
66	form	shoulder	364	177	348
32	group	throw	191	311	794
81	increase	capital	111	380	256
3	very	its	360	128	979
22	lot	big	\N	206	800
75	world	course	305	295	770
80	artist	house	\N	107	668
34	experience	trade	213	186	886
35	behind	before	256	110	790
59	policy	whatever	\N	311	880
40	man	only	\N	218	235
56	technology	special	265	206	496
1	so	still	394	218	235
28	herself	author	260	128	979
84	pretty	city	\N	361	271
25	control	give	389	127	222
78	hundred	standard	167	243	793
65	chair	TV	\N	350	754
21	pressure	image	123	234	159
8	card	majority	283	385	405
4	seem	yeah	\N	317	809
39	worry	detail	190	377	940
64	brother	exist	356	392	397
24	Mrs	gun	363	275	382
27	decade	draw	179	187	675
87	together	hit	\N	316	608
9	modern	task	360	317	809
94	candidate	purpose	\N	150	852
10	foot	particular	338	259	195
12	his	return	174	122	174
63	when	night	\N	257	146
85	idea	security	396	152	924
23	student	indicate	\N	227	758
73	establish	expect	\N	321	262
58	there	think	293	351	490
42	hand	director	\N	172	408
13	stay	now	160	214	809
92	high	better	\N	248	774
70	fly	range	\N	150	852
18	study	record	\N	236	155
57	perhaps	source	188	187	675
46	first	house	\N	242	40
15	the	unit	201	118	573
68	detail	method	\N	243	486
29	hair	process	123	272	478
86	generation	no	154	206	800
61	service	analysis	150	256	878
98	standard	prevent	201	\N	\N
96	she	try	236	272	478
95	window	whole	299	172	408
93	tax	budget	352	122	174
91	meet	successful	298	120	535
89	her	bad	204	382	664
74	yet	color	265	222	139
62	government	issue	314	202	571
38	find	final	\N	392	397
6	leader	free	204	236	155
14	open	whole	226	292	575
31	billion	whom	\N	263	86
2	himself	ball	116	234	159
83	father	citizen	338	126	377
100	early	teach	360	389	39
67	push	spend	374	349	266
90	team	capital	184	214	809
99	early	team	\N	120	535
60	political	their	348	190	399
54	partner	reflect	224	122	174
55	spring	cold	270	185	745
30	information	able	391	398	231
76	speak	wind	\N	311	880
47	adult	throughout	313	112	718
44	organization	four	249	107	668
51	drop	food	312	379	126
53	carry	such	371	330	599
11	right	last	\N	272	478
69	actually	carry	377	330	599
88	that	white	\N	389	39
82	happy	occur	203	133	672
45	receive	good	293	349	266
26	garden	decide	298	122	174
20	space	item	\N	380	256
72	summer	your	128	248	774
50	power	put	396	185	745
33	final	card	\N	107	668
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
53	418	they	film	lot	too	\N
71	664	increase	continue	rate	instead	\N
11	424	enter	newspaper	day	goal	\N
84	807	air	individual	toward	area	\N
64	183	something	issue	new	speak	\N
12	202	next	decision	Republican	spend	40
2	192	check	our	article	fire	92
42	67	stand	across	scientist	computer	47
67	944	nearly	how	our	treatment	2
18	658	cost	central	itself	authority	94
100	407	clear	side	husband	realize	74
59	83	bring	land	including	decade	4
2	590	follow	water	these	pattern	25
68	291	they	fast	option	let	84
77	47	American	herself	job	address	79
52	162	store	white	forward	data	94
78	853	church	able	he	front	4
40	746	water	down	but	camera	37
51	769	son	Republican	value	plant	41
35	685	size	somebody	before	year	4
19	173	a	result	material	cup	51
21	410	approach	Democrat	hot	artist	13
53	426	population	business	yet	past	94
54	445	necessary	three	certainly	here	67
84	573	piece	sport	special	approach	82
100	317	choose	successful	at	account	85
72	342	amount	skin	road	memory	45
96	71	morning	education	instead	short	10
96	302	stop	indicate	oil	reveal	80
14	42	word	though	enter	toward	28
42	540	forget	we	leader	fall	97
44	204	one	avoid	name	chance	14
8	929	answer	fly	sit	now	22
91	971	vote	worry	wrong	up	56
50	682	yeah	rock	someone	place	82
16	927	story	society	news	hair	92
32	246	strategy	interesting	then	why	33
87	925	argue	bring	feel	occur	62
48	120	good	face	later	art	97
37	388	both	interest	position	ground	85
32	170	Democrat	then	parent	me	54
15	93	ready	support	among	actually	23
8	998	day	lay	of	maintain	32
66	796	impact	yet	until	position	73
92	47	improve	one	turn	serious	97
3	5	same	nation	station	both	53
86	599	color	so	total	magazine	84
40	30	television	tree	many	company	86
88	886	magazine	run	visit	ever	68
75	839	ready	might	score	walk	38
11	124	operation	trip	machine	actually	30
92	272	family	pretty	radio	response	31
69	807	commercial	adult	arrive	us	26
21	578	anyone	table	present	magazine	52
62	282	direction	game	art	example	28
75	476	safe	decade	that	increase	73
96	179	four	operation	benefit	evening	42
94	198	option	local	either	land	84
80	639	another	away	above	behind	94
38	137	yeah	seem	south	they	78
61	497	dark	wonder	today	available	60
57	243	discussion	should	car	four	85
100	587	almost	character	each	thousand	87
16	479	put	not	anyone	thing	61
67	61	month	unit	true	sign	86
6	534	foreign	people	during	do	82
49	658	federal	him	make	sense	51
25	75	bring	ask	age	who	50
27	234	indeed	modern	whatever	her	43
72	513	coach	wait	focus	agency	31
51	819	subject	owner	particular	at	77
82	931	level	see	no	give	19
46	550	team	the	cultural	case	14
64	50	big	attack	issue	ground	94
11	51	perform	enter	control	almost	26
61	239	put	little	child	democratic	40
21	946	almost	realize	push	high	2
79	170	small	stand	cost	fight	100
47	984	yes	order	rock	computer	96
54	214	property	plan	cost	size	61
43	78	girl	yeah	both	lawyer	36
35	562	inside	red	garden	speak	17
85	368	control	door	shoulder	hair	62
75	350	pass	society	change	account	40
93	416	meet	long	energy	population	32
43	473	couple	perform	across	happy	16
73	231	similar	do	a	across	5
88	794	often	interest	hour	American	27
27	24	relate	second	gas	first	41
66	52	play	up	group	agent	77
46	279	world	certainly	respond	science	65
33	610	necessary	find	attack	later	77
43	382	soldier	glass	seat	continue	18
57	984	building	campaign	official	piece	3
60	769	prove	ever	her	budget	60
17	293	area	either	raise	student	29
71	535	machine	when	may	another	95
65	19	upon	technology	age	east	95
83	891	center	all	fact	Mr	85
55	342	field	practice	ability	instead	19
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	rock	best	debate	strategy	newspaper
2	among	tell	baby	inside	this
3	nature	current	central	word	order
4	per	when	reach	garden	assume
5	language	each	white	feel	available
6	society	key	official	summer	almost
7	guess	phone	total	already	compare
8	really	plant	customer	executive	explain
9	while	think	your	degree	design
10	most	middle	purpose	kind	I
11	win	rule	strategy	range	teach
12	message	direction	anyone	bit	rate
13	per	history	second	agency	anyone
14	purpose	former	difference	rock	top
15	bring	against	grow	call	box
16	coach	color	style	available	challenge
17	base	parent	themselves	might	concern
18	oil	know	let	return	place
19	require	sell	show	space	success
20	health	public	lay	maybe	can
21	skin	however	guess	who	because
22	meet	property	similar	dog	first
23	poor	not	always	less	door
24	close	use	keep	material	imagine
25	listen	let	street	dream	believe
26	heart	yet	you	describe	face
27	enter	race	visit	language	theory
28	idea	picture	quickly	material	parent
29	shake	last	case	pass	group
30	peace	order	just	program	central
31	center	go	run	while	wait
32	customer	use	on	firm	for
33	another	sing	of	four	parent
34	general	we	consumer	agent	world
35	address	lawyer	he	again	southern
36	by	factor	although	another	case
37	fire	which	case	night	black
38	hard	yourself	what	kitchen	of
39	present	become	company	understand	green
40	record	finally	increase	easy	wait
41	once	sign	nothing	main	whatever
42	someone	lay	public	town	boy
43	own	against	music	capital	action
44	serious	allow	magazine	manager	certainly
45	begin	huge	their	significant	general
46	big	region	community	much	you
47	central	act	ball	possible	go
48	memory	argue	catch	score	field
49	professor	whatever	affect	beyond	find
50	might	use	necessary	together	large
51	gun	move	focus	himself	trade
52	almost	simple	morning	individual	chance
53	realize	resource	left	west	step
54	else	ago	small	room	during
55	manager	price	bad	about	nothing
56	large	state	fear	specific	here
57	else	think	face	spend	control
58	physical	national	better	box	tough
59	summer	forget	agent	scientist	record
60	low	lawyer	year	much	strategy
61	position	fall	goal	interesting	approach
62	about	happen	nearly	story	among
63	far	all	chance	memory	certain
64	wife	word	represent	most	sport
65	control	opportunity	even	young	cause
66	enjoy	national	present	order	chair
67	return	black	drop	look	try
68	member	as	record	in	sign
69	meeting	focus	professional	region	smile
70	crime	either	car	development	play
71	more	air	spend	analysis	catch
72	question	simple	north	science	half
73	clear	machine	indicate	leader	rock
74	recent	of	guy	full	discuss
75	identify	morning	ask	unit	indicate
76	quickly	training	like	national	leg
77	late	author	activity	enjoy	health
78	project	increase	civil	physical	hundred
79	relationship	face	little	firm	head
80	decision	air	bit	describe	body
81	little	part	perform	forward	town
82	pass	grow	begin	per	anyone
83	responsibility	along	stop	ago	affect
84	not	reduce	parent	blood	foreign
85	age	your	ball	way	mission
86	strong	seek	clearly	you	green
87	writer	cut	movie	measure	lawyer
88	bag	add	probably	sort	hair
89	account	plant	travel	represent	wrong
90	military	lose	south	there	strategy
91	brother	team	old	radio	member
92	draw	knowledge	media	teacher	style
93	least	long	account	discuss	quite
94	practice	class	affect	lose	interesting
95	who	from	hear	instead	whose
96	rule	mother	appear	center	general
97	step	want	exist	act	other
98	try	own	land	bit	part
99	eat	although	successful	score	woman
100	heavy	hour	inside	respond	charge
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
1	especially	identify
2	generation	term
3	him	believe
4	beat	site
5	own	statement
6	general	into
7	matter	last
8	most	girl
9	admit	challenge
10	be	end
11	force	wrong
12	reveal	maybe
13	focus	claim
14	public	yeah
15	agency	whom
16	physical	join
17	which	stuff
18	seat	market
19	store	officer
20	certain	benefit
21	fire	pretty
22	standard	else
23	life	practice
24	cut	traditional
25	again	your
26	know	natural
27	possible	employee
28	choose	until
29	after	three
30	forget	agent
31	it	fight
32	street	affect
33	total	other
34	of	common
35	democratic	sit
36	claim	other
37	into	per
38	performance	person
39	body	hospital
40	director	peace
41	through	throughout
42	world	as
43	cost	sign
44	always	model
45	scene	people
46	home	best
47	line	out
48	performance	ask
49	leave	together
50	heavy	life
51	professional	professional
52	blue	character
53	address	dark
54	cup	majority
55	increase	strong
56	myself	fish
57	factor	this
58	so	later
59	occur	as
60	apply	often
61	behavior	those
62	something	base
63	series	wind
64	either	design
65	include	drug
66	people	ago
67	keep	experience
68	determine	work
69	these	book
70	mouth	stay
71	explain	range
72	conference	history
73	star	state
74	nor	answer
75	ok	five
76	account	game
77	interest	I
78	new	off
79	machine	bank
80	force	leave
81	will	list
82	early	fast
83	expect	any
84	compare	leave
85	the	success
86	sound	politics
87	people	remain
88	book	available
89	court	east
90	reflect	example
91	white	them
92	cell	news
93	institution	often
94	adult	why
95	mention	should
96	because	do
97	reveal	modern
98	such	result
99	table	pressure
100	score	sell
\.


--
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (warehouse_id, bin_id, code) FROM stdin;
58	789	name
40	943	seat
72	244	power
65	777	office
3	398	common
59	180	season
57	823	model
94	989	under
69	35	pretty
2	134	along
39	489	land
79	496	soon
81	661	including
83	790	town
71	727	rate
5	766	nothing
58	253	organization
26	74	mention
2	441	whose
19	5	writer
8	549	several
35	331	go
9	227	whom
1	556	standard
18	99	significant
45	961	plant
82	205	wish
36	493	six
23	845	course
96	679	his
60	639	interesting
19	991	again
69	325	but
21	995	top
51	961	institution
76	214	identify
39	611	partner
87	677	young
33	469	system
57	140	green
24	180	pick
21	511	into
53	765	bag
42	173	ability
80	791	message
18	272	development
70	665	fear
93	676	food
83	24	country
52	818	treatment
69	279	statement
84	954	understand
23	557	establish
46	750	pass
96	112	form
69	257	raise
6	180	development
82	709	sell
55	25	move
9	661	card
3	591	work
70	9	sea
60	552	go
56	375	tree
78	789	form
19	922	home
23	57	explain
2	378	relationship
93	602	season
84	831	move
91	85	yard
8	126	father
19	159	by
3	262	former
29	586	bad
95	580	own
25	693	himself
10	353	me
53	353	move
95	506	exist
50	521	simple
25	276	often
93	565	produce
25	742	read
53	812	kind
31	390	center
28	103	art
52	694	suffer
31	325	everybody
70	951	ever
48	826	food
5	213	four
21	329	remain
39	635	continue
59	103	you
2	192	which
97	732	people
70	377	ahead
26	163	school
36	796	attack
\.


--
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (supplier_id, supplier_name) FROM stdin;
1	American
2	catch
3	expert
4	voice
5	white
6	reveal
7	record
8	respond
9	serious
10	reflect
11	health
12	matter
13	painting
14	dark
15	threat
16	through
17	perform
18	bed
19	allow
20	suddenly
21	late
22	fly
23	commercial
24	hospital
25	still
26	concern
27	personal
28	peace
29	very
30	shoulder
31	personal
32	put
33	response
34	fly
35	yet
36	mention
37	after
38	fight
39	establish
40	across
41	economy
42	sea
43	staff
44	challenge
45	big
46	training
47	relationship
48	follow
49	affect
50	make
51	probably
52	surface
53	until
54	media
55	lay
56	pattern
57	prevent
58	nature
59	physical
60	hundred
61	necessary
62	huge
63	green
64	service
65	for
66	without
67	once
68	may
69	listen
70	visit
71	message
72	head
73	heavy
74	series
75	police
76	central
77	approach
78	nature
79	amount
80	very
81	kitchen
82	thought
83	expert
84	compare
85	type
86	become
87	woman
88	fill
89	call
90	miss
91	suddenly
92	wall
93	inside
94	not
95	yard
96	less
97	do
98	main
99	entire
100	until
\.


--
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	chapmantracy@example.org	economic
25	386	fergusonjuan@example.net	child
72	443	timothyduncan@example.org	into
40	212	sriley@example.com	across
9	290	michael23@example.org	relationship
64	515	prattlaura@example.org	fight
60	233	wnolan@example.org	activity
80	742	amanda23@example.net	could
7	892	helen68@example.net	describe
34	333	derek31@example.net	parent
51	589	munozerica@example.net	rest
95	865	ronald20@example.net	situation
20	946	castromarco@example.com	since
84	346	brownjoseph@example.com	avoid
43	463	christina44@example.net	chance
22	535	alexandermorales@example.org	rate
13	825	eddie25@example.com	head
59	130	sforbes@example.org	decide
20	962	aaronmontgomery@example.com	manage
1	393	jessicahansen@example.com	color
22	135	stevenle@example.org	movement
14	570	iarnold@example.org	then
82	212	joshua21@example.org	others
81	882	schmidtjessica@example.net	it
15	927	afranklin@example.org	opportunity
8	797	tross@example.net	college
74	778	mckaybrandy@example.org	another
63	229	harrisjames@example.com	indicate
70	408	lcook@example.com	manage
92	357	ashlee22@example.com	manage
38	93	mcguirerenee@example.net	professional
29	378	qsnyder@example.net	beautiful
96	25	xmoore@example.com	anything
13	270	michael49@example.org	hotel
36	297	dylan01@example.com	agency
71	318	bgreene@example.org	husband
24	442	kaylapearson@example.net	why
89	502	fphillips@example.com	alone
42	883	sellersemily@example.net	room
49	288	tkelly@example.net	probably
71	790	gmartinez@example.org	attorney
52	928	harrisonemily@example.org	imagine
27	428	awatson@example.net	fill
45	73	dhorn@example.org	war
90	547	martinezcheyenne@example.net	actually
58	312	rebekah91@example.com	turn
40	406	gregory46@example.net	continue
45	725	carlsonnicholas@example.org	seem
85	30	stephaniewright@example.com	help
37	133	ellen20@example.org	available
15	766	ybates@example.com	realize
42	243	fernandeztyler@example.org	boy
86	910	markbowman@example.net	fact
32	529	woodmarcus@example.com	somebody
76	704	cynthiatucker@example.com	last
44	144	jamiefox@example.com	say
77	999	mosleymelissa@example.com	report
6	968	georgepamela@example.org	usually
45	172	vlee@example.net	use
75	258	ysimpson@example.net	market
68	952	rebeccadiaz@example.org	increase
83	880	icalhoun@example.com	other
52	730	garzarebecca@example.org	learn
8	743	qmartinez@example.org	Mrs
80	232	brianjohnson@example.net	exactly
39	909	kmedina@example.com	listen
44	996	wigginsleslie@example.com	then
44	527	bhamilton@example.com	office
96	617	gmorris@example.org	theory
95	869	umartin@example.com	model
6	3	hendersonjodi@example.org	wonder
53	952	patriciawalker@example.com	along
37	838	gmayo@example.net	your
1	102	hamiltondavid@example.org	in
18	599	joseph61@example.net	you
37	112	harpershannon@example.net	course
6	280	steven31@example.com	hear
7	884	jason13@example.net	my
78	489	deborahwalsh@example.net	situation
64	54	phillipskimberly@example.org	evening
27	878	atkinsondavid@example.net	against
25	756	andrew80@example.org	produce
7	865	vlane@example.com	school
45	288	justin05@example.com	threat
48	526	manngabrielle@example.com	recognize
29	329	angela66@example.org	expert
42	505	srogers@example.com	friend
5	606	gonzalezmanuel@example.net	member
81	820	ghogan@example.net	build
18	132	joseph50@example.net	strong
73	194	catherine49@example.org	into
84	241	davidgregory@example.com	concern
92	56	cynthiahernandez@example.com	hard
12	36	danieloliver@example.net	less
7	196	jennifermartinez@example.net	edge
97	368	ybranch@example.net	information
53	803	jessicaperkins@example.org	order
93	162	elliottkathryn@example.com	simply
25	831	rogercooper@example.net	pretty
100	214	jennifer36@example.com	class
\.


--
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (computer_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, category_products_category_id) FROM stdin;
401	detail	seven	32	798	443	{travel,walk}	prove	283	child	956	\N
403	drive	develop	483	798	39	{lot}	key	832	floor	44	\N
404	policy	hope	852	114	602	{behavior}	across	544	religious	521	\N
407	listen	dinner	840	715	252	{read}	professional	109	together	576	\N
410	one	blood	745	355	260	{report}	suggest	632	enjoy	446	\N
411	leave	cost	425	386	368	{where,yes}	especially	773	over	836	\N
413	wide	pass	532	148	58	{choice,finally}	pass	690	relate	117	\N
414	continue	garden	913	526	177	{early,such}	pattern	916	ten	350	\N
417	task	air	234	103	255	{his,report}	south	999	surface	994	\N
418	or	into	337	673	252	{nor,media}	type	761	research	483	\N
419	buy	argue	379	505	668	{voice}	debate	443	too	452	\N
421	young	effect	860	129	154	{improve}	word	386	paper	425	\N
422	arrive	price	112	819	27	{ready}	president	964	remember	188	\N
423	century	three	470	785	387	{century,morning}	year	940	cold	160	\N
425	support	upon	20	476	407	{could}	population	551	themselves	713	\N
426	main	box	401	6	558	{Congress}	measure	434	activity	930	\N
427	beautiful	would	163	679	184	{treatment,sure}	sort	679	them	245	\N
428	thing	skill	78	794	550	{police}	reflect	180	energy	385	\N
430	music	herself	814	42	959	{life}	court	718	unit	517	\N
431	red	rather	708	627	670	{reflect}	experience	254	walk	408	\N
433	level	country	574	97	657	{nearly,material}	argue	47	number	531	\N
437	ten	seem	652	460	514	{for,side}	conference	568	training	172	\N
438	international	scene	716	405	716	{common,road}	four	828	individual	206	\N
440	I	even	266	581	287	{dinner}	least	800	see	739	\N
442	speech	north	147	265	262	{yourself,challenge}	better	358	responsibility	394	\N
443	leader	dream	286	580	479	{great}	building	153	leg	977	\N
444	with	task	134	982	259	{everybody}	Republican	202	international	73	\N
445	ground	management	821	594	551	{nature}	hit	557	field	440	\N
446	laugh	commercial	734	893	246	{radio}	without	568	contain	472	\N
448	accept	stop	80	157	806	{least}	wall	31	Congress	765	\N
451	service	maintain	871	391	143	{source,market}	very	208	myself	678	\N
452	word	significant	737	407	366	{next}	nothing	231	everyone	305	\N
453	key	call	727	148	357	{pay,answer}	throw	549	factor	299	\N
455	edge	modern	475	23	298	{determine}	affect	630	image	382	\N
456	war	nearly	773	455	262	{since}	attack	54	same	849	\N
458	effort	become	645	842	106	{foot}	evidence	875	floor	446	\N
459	his	voice	649	601	252	{where}	bank	517	concern	520	\N
460	minute	activity	407	125	935	{west}	hard	839	think	970	\N
461	important	set	394	677	946	{establish}	ago	834	night	734	\N
463	join	compare	829	207	782	{rather,building}	any	679	first	494	\N
464	affect	Congress	559	629	237	{far,structure}	TV	39	same	654	\N
466	attention	seat	991	281	788	{state,interest}	drive	409	whom	279	\N
467	kitchen	system	506	101	686	{child}	artist	192	special	573	\N
468	evening	stuff	17	465	772	{two}	something	501	street	220	\N
469	cost	continue	404	843	748	{effort,hit}	ask	930	bag	250	\N
470	identify	among	97	79	695	{last}	certainly	867	institution	433	\N
471	by	huge	854	453	194	{play}	idea	610	artist	515	\N
473	else	with	202	239	369	{there}	message	350	assume	928	\N
474	owner	answer	54	470	46	{think}	picture	913	religious	152	\N
475	war	suffer	875	929	962	{by,nice}	why	481	floor	45	\N
476	assume	floor	598	514	67	{them,know}	no	95	help	410	\N
477	physical	it	816	525	863	{fish,top}	owner	404	back	275	\N
479	this	rise	932	893	489	{tree}	result	438	myself	312	\N
480	view	member	603	767	325	{but}	standard	611	study	604	\N
481	maintain	set	570	872	285	{from}	brother	886	produce	622	\N
482	less	our	807	810	795	{follow,pressure}	may	426	look	401	\N
483	teacher	prepare	533	810	25	{staff}	southern	38	moment	588	\N
484	note	work	543	15	104	{tree,employee}	upon	345	former	956	\N
485	always	realize	378	769	565	{middle}	fact	653	especially	380	\N
486	out	military	597	76	497	{hot}	through	868	staff	553	\N
488	within	history	932	333	370	{professional}	movie	150	available	918	\N
492	face	specific	786	646	253	{natural,responsibility}	reflect	773	organization	993	\N
493	particularly	address	407	564	291	{policy}	everyone	77	true	726	\N
494	believe	discover	175	927	959	{any,guess}	sport	424	bad	86	\N
495	amount	participant	130	290	565	{yard,although}	entire	241	candidate	216	\N
496	second	eye	102	284	740	{commercial,research}	significant	49	who	756	\N
500	own	help	373	819	766	{know}	feel	30	rather	324	\N
487	crime	partner	457	343	513	{dog}	off	945	look	165	74
432	law	place	799	477	122	{artist}	fish	397	job	92	30
449	study	their	416	392	428	{get}	beat	606	year	612	60
424	impact	nice	158	996	538	{condition}	step	970	fill	261	85
447	issue	determine	401	729	201	{run}	strategy	641	goal	958	82
408	trial	house	975	367	893	{talk}	wide	120	sea	796	7
436	good	partner	137	576	725	{into,adult}	school	790	year	548	35
498	window	hotel	77	564	324	{religious,main}	available	949	beautiful	304	93
409	majority	government	42	939	721	{artist,quality}	white	433	party	901	94
429	who	know	600	23	526	{magazine}	series	438	chance	242	27
457	town	stand	801	324	164	{so}	life	980	others	946	52
439	piece	before	508	837	286	{agency,capital}	movement	951	girl	156	11
454	would	community	91	527	848	{outside,single}	situation	214	both	723	62
412	full	structure	350	452	818	{artist}	member	651	red	625	66
450	charge	put	133	689	552	{ever}	fly	950	group	248	56
435	start	wife	320	478	285	{reality,should}	four	171	chance	610	33
499	part	home	881	529	137	{eight}	forget	453	personal	834	72
489	list	key	595	152	604	{yeah}	when	414	wait	325	7
434	poor	middle	245	797	13	{bring}	animal	979	forget	880	26
497	could	investment	525	309	807	{season}	leg	842	trade	557	59
405	indicate	direction	782	365	565	{son,movement}	something	802	save	582	32
402	five	chair	380	419	416	{especially,number}	reality	55	environment	102	43
441	compare	successful	637	86	749	{feeling,lose}	study	345	special	951	21
490	floor	per	888	521	431	{thus,contain}	lose	350	continue	873	37
420	by	fear	409	556	124	{culture,far}	start	950	listen	273	16
472	protect	record	195	868	522	{although,admit}	civil	535	it	370	90
415	case	common	776	728	125	{night}	look	492	poor	919	88
406	risk	present	931	992	671	{sea,yet}	successful	822	movie	486	5
465	family	news	172	688	687	{per}	watch	876	wall	421	44
478	specific	conference	928	361	482	{wall}	collection	566	year	971	71
462	minute	support	593	261	743	{sense}	own	735	author	124	95
416	dog	trade	215	393	647	{every}	spend	407	to	734	61
491	show	team	267	624	378	{blood}	side	729	hospital	65	78
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
6	organization	politics	\N
11	seven	share	\N
12	book	somebody	\N
21	rule	plant	\N
27	dark	expert	\N
32	relationship	artist	\N
36	dinner	health	\N
46	middle	building	\N
48	know	example	\N
51	with	window	\N
63	own	social	\N
72	professional	pick	\N
87	with	air	\N
30	leave	important	25
97	term	student	38
24	indeed	medical	93
34	line	enjoy	69
4	help	list	25
73	have	officer	94
8	hold	a	57
93	site	write	6
86	central	move	85
17	fill	scene	38
90	former	sea	85
18	partner	hand	77
66	religious	under	21
49	and	parent	85
16	both	institution	2
81	world	then	3
20	six	magazine	77
69	opportunity	design	57
5	wish	along	10
85	leader	trade	24
76	today	music	18
95	attention	hit	66
79	resource	view	73
67	others	grow	72
50	same	next	44
84	bar	pay	77
45	music	only	14
96	early	nice	96
60	election	argue	57
94	available	throw	93
65	however	individual	24
56	practice	same	68
35	free	process	62
39	scene	study	90
82	however	west	74
2	ball	it	53
15	evidence	commercial	84
89	picture	develop	35
42	last	they	16
61	really	partner	73
74	can	set	33
7	above	democratic	24
64	avoid	beautiful	43
10	raise	control	59
80	cold	upon	4
33	use	rock	24
25	subject	maybe	13
43	later	card	21
83	sign	both	61
75	soon	boy	91
13	police	until	66
59	kid	shoulder	38
68	alone	call	31
9	ago	break	44
99	energy	they	64
55	term	born	12
1	window	nothing	90
40	enter	end	29
14	interview	stand	7
92	simple	lay	58
26	account	tax	15
77	sit	however	34
52	low	fund	35
57	financial	owner	49
78	method	significant	33
54	real	doctor	83
22	just	write	49
53	other	raise	16
19	hold	protect	92
62	piece	court	94
98	car	six	30
70	several	I	7
71	project	concern	21
47	draw	fly	31
100	magazine	remain	35
29	through	rest	15
3	affect	behavior	99
23	success	various	98
41	life	my	97
91	into	will	63
37	off	we	27
88	chance	card	97
58	whatever	prevent	81
44	beyond	around	43
38	seat	brother	30
28	resource	low	68
31	school	policy	3
\.


--
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	player	join
2	establish	recently
3	report	now
4	must	else
5	remain	else
6	beautiful	drop
7	anyone	reflect
8	enjoy	time
9	far	against
10	past	economic
11	dream	responsibility
12	right	news
13	speak	that
14	group	town
15	current	base
16	reduce	image
17	per	will
18	later	movement
19	husband	every
20	human	success
21	address	point
22	staff	rate
23	staff	I
24	fight	each
25	seven	pretty
26	debate	box
27	wind	old
28	north	use
29	budget	say
30	treatment	strategy
31	have	none
32	plan	interesting
33	agent	discussion
34	great	half
35	bank	party
36	eye	knowledge
37	television	might
38	scientist	thus
39	attention	property
40	require	especially
41	two	thousand
42	most	current
43	from	seat
44	popular	consumer
45	maintain	thus
46	research	clear
47	score	parent
48	environmental	federal
49	remember	pull
50	last	majority
51	crime	surface
52	cold	civil
53	toward	determine
54	baby	against
55	major	list
56	certain	plant
57	budget	performance
58	someone	price
59	fast	over
60	serve	one
61	represent	player
62	maybe	manage
63	environmental	effort
64	sea	sell
65	local	letter
66	allow	better
67	majority	record
68	manage	up
69	information	young
70	ability	key
71	campaign	organization
72	their	goal
73	religious	feel
74	themselves	machine
75	push	yet
76	meet	player
77	together	special
78	fish	leave
79	east	wide
80	action	hold
81	talk	surface
82	accept	election
83	including	machine
84	there	case
85	movement	seek
86	type	level
87	hour	eat
88	five	policy
89	until	piece
90	describe	particularly
91	entire	current
92	action	sometimes
93	individual	today
94	world	case
95	eight	ever
96	response	lose
97	eight	increase
98	free	Mr
99	son	various
100	long	plan
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

COPY public.relation_6 (desktop_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, form_factor, category_products_category_id) FROM stdin;
501	thank	wear	428	768	168	{that}	couple	724	common	603	break	\N
503	five	usually	925	203	239	{single}	door	602	compare	134	for	\N
505	road	than	470	202	801	{nearly}	Republican	370	fact	986	second	\N
507	enter	why	955	651	10	{television}	treatment	501	beat	34	evidence	\N
508	follow	them	169	260	921	{treat}	foreign	10	PM	236	pattern	\N
509	live	risk	784	909	87	{floor}	natural	36	food	969	either	\N
510	follow	million	541	206	215	{poor,management}	fish	296	poor	249	hair	\N
511	condition	pay	503	519	381	{star,build}	test	402	account	968	work	\N
513	community	whose	639	305	979	{garden,information}	two	629	far	486	soldier	\N
514	that	people	373	24	500	{claim}	their	953	yes	108	upon	\N
516	although	college	597	352	348	{member}	former	663	special	431	still	\N
517	dog	government	200	719	527	{meeting,stand}	a	975	only	863	matter	\N
519	yard	fill	757	590	927	{issue,discuss}	necessary	619	behind	483	me	\N
520	determine	wonder	170	853	275	{call,building}	carry	577	moment	784	home	\N
521	important	soon	826	406	622	{save,body}	right	262	serve	318	yeah	\N
522	our	rest	16	620	776	{ball}	send	801	beautiful	469	north	\N
524	worker	without	215	717	488	{dark,answer}	career	713	baby	641	audience	\N
525	a	use	149	394	884	{employee,middle}	information	56	stay	658	back	\N
528	her	option	333	347	317	{role}	risk	214	student	734	instead	\N
529	Democrat	break	84	337	123	{board}	director	132	benefit	800	its	\N
530	focus	simply	708	302	983	{drug,could}	carry	623	everything	349	or	\N
531	foreign	business	239	28	986	{any}	fear	774	product	785	even	\N
533	goal	huge	388	431	950	{occur,letter}	away	831	probably	888	hard	\N
536	either	interesting	250	731	405	{strong,pressure}	try	216	computer	637	upon	\N
537	fine	low	156	738	307	{so,data}	walk	2	bar	730	itself	\N
539	degree	head	692	150	32	{including,sure}	back	448	open	568	different	\N
540	class	student	351	896	821	{knowledge,bed}	leg	326	spend	962	money	\N
541	back	whole	619	115	598	{its,street}	worry	830	fly	562	agency	\N
542	either	brother	679	283	440	{inside}	child	863	let	319	result	\N
543	the	fly	771	89	655	{while,since}	small	118	president	514	step	\N
544	early	especially	226	892	621	{against,focus}	including	448	case	382	themselves	\N
545	service	parent	804	237	56	{point}	structure	612	democratic	528	customer	\N
546	rule	possible	527	524	167	{take}	once	300	professional	945	land	\N
547	mention	board	50	906	70	{structure}	cell	4	around	689	method	\N
551	option	citizen	273	303	596	{certainly,Mr}	away	911	rise	240	identify	\N
552	eight	onto	188	216	401	{general}	thank	245	continue	994	may	\N
553	war	only	569	718	464	{lay}	economic	340	million	335	agreement	\N
554	believe	issue	417	123	17	{movement}	attack	518	move	656	enough	\N
555	our	imagine	96	780	190	{strong}	training	231	sell	181	where	\N
556	anyone	on	312	928	826	{ask}	herself	61	choose	814	phone	\N
557	read	rich	322	900	744	{probably}	administration	65	important	853	him	\N
560	actually	all	813	234	681	{majority}	paper	123	remember	59	purpose	\N
562	red	you	806	832	761	{edge}	entire	961	these	293	marriage	\N
563	before	back	732	259	540	{life,car}	they	893	ago	255	on	\N
564	financial	knowledge	740	34	742	{reveal,draw}	throw	784	world	200	woman	\N
565	forget	option	334	359	366	{work,hotel}	image	783	perhaps	896	politics	\N
567	east	score	396	92	437	{under}	face	852	campaign	851	try	\N
568	send	very	502	899	352	{avoid}	must	620	bill	665	question	\N
569	race	until	117	246	75	{knowledge,staff}	remember	907	attorney	284	present	\N
570	gun	admit	546	312	943	{heart,matter}	movie	773	rate	852	likely	\N
571	include	key	380	420	468	{one,major}	indeed	361	over	324	like	\N
572	continue	television	406	982	483	{believe}	office	380	local	131	accept	\N
573	simply	require	310	173	310	{big}	at	893	field	562	article	\N
574	already	north	729	745	154	{popular}	budget	469	no	661	grow	\N
575	goal	man	643	156	139	{run}	bar	82	institution	833	spring	\N
576	Mrs	your	627	260	242	{despite,to}	seven	661	more	323	attention	\N
577	example	seat	176	284	877	{result,office}	send	318	pay	80	fire	\N
578	believe	day	439	158	564	{pay,actually}	drive	908	expect	461	together	\N
580	decade	toward	71	702	192	{food,common}	hot	548	answer	36	baby	\N
581	heart	increase	48	744	978	{result}	notice	666	standard	365	adult	\N
582	social	piece	754	986	375	{father,study}	prepare	879	require	872	decide	\N
584	child	stuff	124	190	972	{practice,teacher}	sign	34	now	278	fish	\N
585	behavior	floor	907	629	729	{wall}	majority	64	huge	253	may	\N
586	nothing	meeting	858	869	312	{expert,fill}	drive	577	material	413	majority	\N
587	family	sort	251	369	791	{group}	occur	238	ball	965	long	\N
588	from	thus	298	715	583	{rule}	son	201	nearly	100	where	\N
589	capital	today	1000	139	229	{west,campaign}	write	519	day	912	reflect	\N
590	national	strong	273	145	167	{top}	play	78	father	319	most	\N
591	green	church	588	523	522	{relate,season}	imagine	884	represent	893	trip	\N
592	in	already	450	595	525	{structure,value}	perhaps	188	example	525	dream	\N
594	matter	report	284	211	235	{sure}	charge	137	face	792	agent	\N
596	social	material	51	803	369	{discussion}	language	625	civil	244	continue	\N
597	staff	worry	695	713	889	{whole}	action	90	get	452	writer	\N
598	dinner	collection	660	672	202	{idea,ago}	media	169	candidate	589	brother	\N
599	player	same	708	859	856	{yes}	edge	223	garden	324	capital	\N
512	week	around	670	76	200	{cost}	discussion	193	choice	701	explain	3
548	write	understand	64	434	750	{open}	local	68	minute	57	listen	51
600	cell	effort	912	492	566	{particularly}	recent	923	wrong	54	drive	65
523	its	another	469	914	365	{agreement}	southern	521	exist	455	husband	28
583	after	very	801	516	643	{send,same}	law	351	record	670	power	46
566	reach	end	945	676	889	{experience,husband}	behavior	886	agent	696	bank	10
550	should	interview	20	627	10	{culture}	stage	481	material	205	anyone	98
532	let	magazine	775	517	768	{policy,week}	very	310	morning	301	base	10
595	pick	move	214	22	168	{value,bag}	see	372	chair	189	street	51
518	anyone	campaign	853	623	578	{husband,card}	fall	615	edge	697	necessary	16
506	reason	knowledge	468	343	950	{far,walk}	television	226	ahead	948	feel	91
549	join	might	10	36	551	{gun,stage}	figure	341	mission	804	certainly	74
593	possible	represent	885	365	201	{machine,sure}	decade	824	direction	76	man	65
559	whose	them	985	353	60	{contain}	if	454	job	206	run	32
538	lead	work	722	704	315	{television,resource}	join	510	begin	175	record	88
534	skin	great	879	76	963	{total}	subject	418	be	961	drug	10
502	prevent	result	719	680	645	{soldier,west}	nor	189	enter	997	yet	52
579	across	pressure	939	111	866	{coach}	travel	701	up	324	how	6
561	reveal	manage	208	56	765	{once}	paper	90	television	976	mean	80
515	work	character	675	641	592	{protect,performance}	spring	848	hour	725	else	74
526	population	writer	114	365	893	{sign}	practice	262	report	770	shoulder	87
535	still	civil	238	623	44	{bit}	whether	645	according	230	final	86
527	option	bill	555	760	56	{girl,wonder}	water	388	follow	16	begin	45
504	discover	world	998	601	519	{where}	star	739	star	273	other	31
558	sport	couple	454	154	237	{themselves}	among	766	PM	294	never	99
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

COPY public.relation_7 (laptop_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, battery_wh, category_products_category_id) FROM stdin;
601	sure	short	874	376	512	{guy,hard}	war	139	shake	500	70	\N
602	surface	race	524	327	681	{tell,under}	conference	620	able	326	912	\N
604	any	doctor	74	269	65	{attention,natural}	western	20	station	185	931	\N
609	phone	condition	670	737	580	{media,writer}	blue	590	white	289	624	\N
610	floor	decide	263	692	177	{such,civil}	meeting	147	fine	361	97	\N
612	rise	develop	853	493	995	{value}	arrive	39	goal	748	656	\N
614	simply	this	483	584	496	{though,family}	plan	940	life	533	815	\N
615	picture	much	175	577	726	{can,good}	window	408	course	14	396	\N
616	many	president	566	742	576	{single,land}	line	170	right	608	603	\N
617	current	degree	383	53	861	{age,according}	time	842	administration	362	449	\N
618	nearly	trip	244	705	661	{number,each}	make	872	eat	91	453	\N
619	challenge	himself	777	893	366	{area}	skin	166	seat	138	453	\N
620	country	back	953	853	47	{themselves,figure}	both	581	small	346	994	\N
621	professor	home	828	178	583	{him,now}	son	490	every	9	590	\N
622	development	season	240	906	898	{challenge}	society	455	child	671	168	\N
623	common	put	522	214	410	{color,meeting}	water	127	you	323	269	\N
624	remember	reason	142	174	338	{despite}	raise	185	bank	825	934	\N
625	national	Republican	760	633	543	{pressure,Republican}	wrong	240	with	568	724	\N
626	win	able	438	480	469	{a,between}	value	174	method	533	631	\N
629	social	know	731	671	526	{inside}	name	633	blue	909	451	\N
630	party	campaign	461	835	547	{defense,cultural}	son	373	war	856	212	\N
631	feeling	impact	56	88	740	{threat}	appear	100	current	552	397	\N
632	image	federal	141	455	407	{four}	public	487	various	460	535	\N
633	church	care	874	608	38	{door}	receive	970	operation	1000	605	\N
634	machine	will	461	501	400	{run,daughter}	more	935	conference	358	795	\N
635	thus	likely	775	178	863	{candidate,sense}	statement	185	performance	899	795	\N
636	somebody	decade	29	570	63	{high}	partner	999	whether	951	564	\N
637	type	study	236	457	871	{ago,place}	get	453	debate	344	911	\N
638	blood	better	764	105	398	{thought}	total	766	everyone	480	285	\N
639	rule	plant	953	420	477	{actually,east}	change	520	agent	99	169	\N
640	debate	international	411	555	887	{treat,control}	often	905	or	910	629	\N
641	design	mission	759	877	490	{available}	police	328	reach	150	359	\N
642	feeling	source	995	141	626	{conference}	man	231	tax	806	831	\N
644	tax	test	436	54	465	{hit}	third	384	style	574	330	\N
647	remain	Mr	321	870	772	{happy,billion}	hair	179	mission	103	502	\N
649	art	have	550	327	324	{bill,sense}	gas	975	second	694	573	\N
650	maybe	glass	958	651	350	{two,Democrat}	specific	576	artist	607	819	\N
651	possible	speech	474	332	497	{reflect,go}	travel	844	but	550	930	\N
652	the	across	224	171	247	{ever}	throw	880	well	609	956	\N
653	pay	career	252	53	800	{technology,audience}	even	928	kitchen	635	778	\N
654	task	performance	64	337	430	{show}	case	353	interview	369	371	\N
655	big	because	615	610	903	{build,call}	five	215	both	806	924	\N
656	bill	fear	875	296	929	{kitchen}	yourself	322	trouble	407	716	\N
657	Congress	debate	394	686	793	{so}	surface	9	pick	399	667	\N
658	state	section	924	992	983	{outside,all}	however	619	sit	803	799	\N
659	especially	exist	631	860	916	{in}	red	240	lawyer	68	843	\N
660	eye	western	627	328	394	{edge}	reflect	728	bed	893	301	\N
661	half	great	99	445	5	{radio,contain}	yard	96	like	828	418	\N
662	treatment	discussion	975	157	115	{art}	seek	772	those	349	148	\N
664	laugh	apply	199	163	169	{practice}	than	988	method	992	151	\N
667	mouth	take	368	798	179	{plan}	west	241	class	710	509	\N
669	part	medical	579	147	215	{three,meet}	computer	726	film	142	287	\N
671	feel	admit	542	473	909	{computer}	choose	737	increase	247	212	\N
675	exactly	film	108	457	736	{before,then}	speech	684	expert	288	147	\N
676	money	nice	442	381	664	{daughter,town}	exist	955	join	769	393	\N
677	practice	system	422	447	377	{present}	fine	201	service	67	149	\N
678	soon	building	244	246	22	{himself}	month	686	information	404	468	\N
679	foot	you	804	632	452	{score}	himself	56	threat	177	835	\N
681	include	development	805	286	426	{issue}	oil	881	audience	242	712	\N
682	attorney	choice	791	677	384	{property,politics}	road	798	culture	351	600	\N
683	my	force	766	49	519	{authority,rise}	short	133	expect	706	942	\N
684	thing	next	536	373	599	{lot}	teacher	358	adult	121	862	\N
685	score	eight	883	252	651	{where}	can	448	join	974	153	\N
686	long	left	825	20	375	{two}	candidate	155	task	296	26	\N
687	nature	so	484	654	28	{law,perform}	society	69	itself	769	816	\N
689	attention	ahead	100	132	552	{old,add}	phone	659	support	617	558	\N
691	argue	military	325	449	120	{minute}	already	216	major	607	626	\N
692	at	act	887	715	379	{yard}	but	99	future	364	109	\N
693	check	simply	905	929	201	{difference}	amount	707	third	670	606	\N
694	decision	like	90	4	525	{wish,decade}	create	934	idea	988	241	\N
695	mission	our	94	315	500	{hot}	art	588	every	440	574	\N
696	doctor	certainly	306	402	644	{news}	share	687	main	610	30	\N
697	rest	road	284	931	636	{traditional,whom}	information	449	huge	225	276	\N
698	would	threat	932	891	330	{account,set}	protect	453	cup	547	57	\N
699	central	kid	276	527	178	{common,stay}	language	467	response	303	600	\N
700	environmental	my	605	187	329	{space,woman}	glass	778	response	991	683	\N
605	marriage	move	336	232	321	{there,oil}	against	855	fact	838	259	55
643	dark	attention	222	909	465	{create}	support	106	down	716	106	13
670	tell	prepare	916	759	357	{opportunity}	finish	393	without	487	31	7
613	best	produce	254	81	759	{prepare}	enjoy	40	range	532	520	43
690	action	would	975	420	248	{speak,easy}	hair	490	admit	853	752	81
665	pick	window	123	453	599	{support}	avoid	442	inside	138	871	88
648	firm	box	185	457	158	{television,become}	might	109	physical	552	127	22
663	form	source	385	448	334	{among,investment}	business	965	today	961	214	55
627	simply	discussion	520	979	317	{rather}	culture	290	certain	690	159	90
666	well	huge	342	622	813	{short,push}	ago	609	doctor	141	22	75
628	enter	mention	699	7	833	{Mrs,amount}	cup	122	rule	436	390	93
672	foot	actually	706	931	817	{professional}	exist	740	everyone	714	312	84
606	order	quickly	891	314	975	{suggest,population}	baby	426	box	974	13	51
645	same	simple	961	287	408	{town}	quality	397	purpose	499	734	32
668	discuss	son	607	501	36	{owner}	just	137	rate	546	481	49
680	information	suddenly	841	839	540	{return}	speech	46	recently	441	875	89
611	different	save	407	366	535	{must}	learn	406	year	461	154	84
688	special	election	604	442	95	{carry,production}	business	558	would	618	514	83
608	girl	quickly	441	950	628	{argue}	me	285	daughter	366	787	95
603	weight	environmental	803	587	92	{several,before}	voice	347	rate	426	872	64
646	back	authority	457	309	759	{single,amount}	natural	660	star	596	397	26
674	in	kitchen	833	823	790	{unit}	bed	888	pressure	410	340	25
673	college	ten	44	274	840	{home}	how	74	dream	817	109	29
607	through	successful	302	167	649	{song,social}	food	50	central	119	442	87
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (tablet_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, screen_size_in, category_products_category_id) FROM stdin;
701	certainly	police	710	424	702	{reason,share}	finish	489	771	\N
702	argue	street	646	226	314	{full}	north	65	152	\N
703	remember	easy	506	997	842	{professor}	spring	847	369	\N
704	whatever	reality	266	866	859	{tend,specific}	big	809	555	\N
705	fight	create	901	311	142	{indeed}	bed	514	142	\N
706	condition	away	467	872	39	{mention,reduce}	step	481	748	\N
707	range	your	584	933	334	{increase,leader}	road	129	729	\N
708	once	activity	1000	15	551	{laugh}	cold	789	276	\N
709	field	when	638	830	67	{science,edge}	quality	291	13	\N
713	method	pattern	511	543	352	{accept}	still	193	174	\N
714	bag	line	57	632	120	{sister}	partner	121	569	\N
715	leave	capital	543	313	772	{stay}	available	166	547	\N
716	imagine	case	154	234	887	{our}	either	92	516	\N
717	about	happy	362	920	707	{admit,find}	position	274	630	\N
718	cause	capital	138	293	592	{because}	growth	72	877	\N
719	practice	road	611	272	59	{commercial}	change	443	626	\N
720	resource	history	989	290	864	{quality,way}	guess	433	447	\N
721	quite	fly	861	829	70	{short}	free	220	787	\N
722	pull	participant	696	35	954	{speech,consumer}	per	977	870	\N
723	both	to	425	364	964	{herself,fine}	pressure	524	933	\N
724	would	of	152	184	809	{choose}	protect	235	830	\N
725	media	environmental	965	61	375	{process}	can	889	458	\N
726	health	her	330	834	223	{right}	box	264	159	\N
727	environment	call	708	913	722	{let,question}	hair	110	490	\N
728	hard	hand	702	750	921	{health}	responsibility	484	320	\N
730	accept	easy	818	136	707	{soldier,series}	walk	679	36	\N
731	certain	since	807	787	392	{defense,medical}	only	549	886	\N
733	bring	professor	908	304	719	{sister,explain}	force	206	529	\N
735	view	event	119	183	509	{husband,hold}	some	724	659	\N
736	family	economic	966	610	650	{ask,natural}	effect	410	567	\N
737	near	region	996	432	858	{customer}	recently	641	409	\N
738	boy	leader	969	890	145	{laugh,product}	able	131	63	\N
739	show	physical	300	398	632	{drive,reach}	condition	654	98	\N
740	Republican	issue	207	613	278	{suggest,think}	dinner	610	433	\N
743	far	community	924	694	26	{myself}	have	789	380	\N
744	way	Republican	466	272	769	{lawyer}	smile	291	143	\N
745	draw	find	823	87	417	{detail,recognize}	than	29	491	\N
746	site	feeling	597	737	134	{here,avoid}	officer	504	821	\N
747	before	father	862	791	239	{western}	change	386	823	\N
748	what	American	64	421	616	{likely}	seven	256	689	\N
751	nor	too	848	47	599	{medical,plant}	action	363	316	\N
753	pretty	box	877	788	176	{year,mother}	late	898	539	\N
755	quality	subject	791	719	223	{together,officer}	card	980	314	\N
756	generation	green	852	550	331	{gas,rock}	mouth	602	5	\N
758	nor	view	248	882	166	{than}	energy	266	409	\N
759	everybody	officer	208	142	169	{table}	mouth	324	396	\N
762	girl	quality	319	791	226	{stock,great}	right	524	814	\N
763	east	check	668	457	345	{bed}	school	71	73	\N
764	beautiful	action	844	237	123	{detail,live}	TV	732	848	\N
765	kitchen	recent	570	470	11	{research}	too	470	444	\N
766	control	top	554	113	197	{unit}	actually	250	316	\N
767	but	of	220	532	622	{no,look}	head	931	316	\N
768	music	last	271	943	358	{step,reach}	fast	295	49	\N
769	vote	travel	30	896	11	{parent,government}	them	44	212	\N
770	language	federal	79	324	464	{miss,sit}	painting	118	253	\N
771	action	middle	690	891	114	{film}	would	31	200	\N
773	program	police	30	573	233	{professor,it}	small	178	858	\N
774	reduce	sound	545	973	939	{situation}	trial	230	142	\N
775	under	hot	65	17	893	{difficult}	guess	329	936	\N
776	against	floor	591	87	530	{anyone,city}	candidate	200	408	\N
777	feel	maybe	9	557	287	{activity,decide}	memory	266	556	\N
778	feel	claim	395	895	414	{wish,right}	simple	286	91	\N
779	floor	yourself	185	778	491	{course,force}	probably	137	924	\N
781	drug	wait	867	325	149	{blue}	despite	327	407	\N
782	organization	so	42	902	419	{say,carry}	politics	852	515	\N
783	describe	approach	901	804	67	{resource}	size	135	569	\N
784	each	explain	421	560	399	{Mrs,cup}	adult	607	46	\N
785	line	whose	223	199	312	{at,environmental}	rate	981	307	\N
786	least	international	932	531	24	{industry,television}	marriage	196	549	\N
787	college	ground	534	759	547	{yet}	value	236	91	\N
790	contain	difficult	102	859	969	{front}	former	726	602	\N
791	suffer	tend	441	487	979	{order}	together	965	839	\N
792	guy	garden	224	580	480	{security}	body	994	885	\N
795	huge	agreement	377	444	837	{minute}	when	867	975	\N
796	party	same	454	267	965	{rule,central}	attention	365	396	\N
797	bag	teacher	822	580	235	{policy,what}	major	924	636	\N
798	simple	there	887	109	186	{space,human}	cup	78	27	\N
800	decade	detail	472	923	113	{else}	administration	466	360	\N
788	try	often	216	492	169	{itself}	person	674	862	23
760	choose	country	931	723	217	{issue}	simple	40	457	79
799	Republican	agree	430	897	601	{drive,serve}	million	63	781	30
742	couple	free	967	157	575	{program,kid}	meeting	967	689	66
757	today	discuss	673	493	259	{kid}	top	152	996	86
754	number	health	256	336	618	{drop}	couple	255	650	62
789	stuff	support	413	911	290	{official}	hope	155	821	41
772	around	name	652	928	139	{third}	away	451	747	14
729	people	Mr	269	796	813	{environmental,everyone}	east	920	214	22
761	upon	agreement	222	411	810	{institution}	party	718	919	45
794	never	dog	347	519	487	{also,expect}	great	525	677	19
780	save	as	633	214	539	{poor}	than	530	53	55
734	and	do	342	101	255	{system}	appear	504	589	9
741	democratic	big	271	521	850	{important}	soon	334	802	42
732	travel	win	25	135	238	{forward,bad}	effort	661	102	5
711	since	particularly	115	101	702	{suffer,room}	trouble	620	635	56
749	among	loss	41	923	466	{throw}	agree	301	626	53
712	hot	already	653	713	705	{soldier,against}	throw	94	626	56
710	sing	season	663	273	743	{become}	crime	580	412	80
793	management	finish	679	415	894	{both}	rise	65	131	97
752	part	information	93	551	482	{four,very}	arm	871	335	81
750	can	safe	41	356	788	{remain}	market	70	75	57
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (smartwatch_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, band_size, category_products_category_id, bundled_phone_smart_watch_phone_id) FROM stdin;
801	such	people	525	94	910	{care,soldier}	meet	694	money	\N	\N
803	city	subject	586	172	441	{sometimes,wrong}	wall	734	effort	\N	\N
804	cell	technology	454	748	250	{per,six}	operation	768	management	\N	\N
805	evening	realize	393	29	984	{Congress,offer}	day	124	statement	\N	\N
808	simply	increase	301	758	83	{move}	former	467	better	\N	\N
812	who	kid	20	286	38	{rich,leg}	hotel	319	program	\N	\N
813	ability	rate	181	551	489	{activity,film}	career	18	road	\N	\N
815	majority	yard	991	232	355	{federal}	clear	24	picture	\N	\N
819	environment	bag	836	635	540	{fact}	husband	40	fire	\N	\N
820	government	building	858	433	228	{green,page}	itself	690	discover	\N	\N
823	strategy	not	409	524	437	{believe,grow}	final	454	so	\N	\N
825	moment	wife	484	853	750	{situation,girl}	nor	166	draw	\N	\N
834	tree	floor	17	164	841	{large,today}	resource	114	wear	\N	\N
835	radio	people	225	156	116	{glass,official}	expert	59	purpose	\N	\N
836	response	church	177	70	98	{share,loss}	them	563	brother	\N	\N
837	police	play	748	671	480	{tell}	dream	60	kitchen	\N	\N
838	hear	fight	278	53	542	{rate,find}	entire	911	study	\N	\N
840	now	sister	449	114	347	{seem,house}	wait	895	trouble	\N	\N
844	hour	happen	273	192	155	{key}	very	339	keep	\N	\N
845	most	result	986	361	991	{piece,different}	early	69	store	\N	\N
848	this	discuss	737	937	862	{public}	wish	545	next	\N	\N
852	treat	Democrat	410	436	501	{lot,ago}	system	721	ground	\N	\N
857	enter	country	349	84	607	{suffer}	everyone	796	experience	\N	\N
858	back	ever	143	940	869	{she,toward}	property	971	foreign	\N	\N
859	create	fish	181	94	9	{it}	can	25	discover	\N	\N
860	safe	community	188	286	199	{develop,recently}	letter	412	because	\N	\N
862	example	old	997	881	943	{clearly,blood}	moment	571	so	\N	\N
863	matter	six	394	890	108	{him,rock}	candidate	475	fish	\N	1018
806	yourself	firm	294	266	26	{yard}	machine	333	star	\N	1063
828	detail	decide	356	959	725	{turn,rather}	drive	892	somebody	\N	1082
814	speak	work	466	895	351	{approach}	imagine	869	main	\N	1060
854	ok	just	377	255	160	{seem}	act	932	seem	\N	1078
855	red	industry	406	455	523	{learn,education}	day	437	industry	\N	1081
810	one	realize	828	695	484	{service}	list	577	standard	\N	1001
821	ball	practice	532	995	982	{either,alone}	discussion	194	industry	\N	1081
829	range	actually	408	565	386	{second,style}	true	246	paper	\N	1018
817	safe	thank	184	238	84	{dog,measure}	guess	42	once	\N	1019
831	two	true	21	873	674	{center}	present	270	father	\N	1044
816	newspaper	require	452	525	203	{ability,reality}	performance	157	name	\N	1090
853	almost	economy	799	35	545	{a}	list	25	scene	\N	1009
856	act	I	611	880	347	{right,rock}	go	922	machine	\N	1098
830	drop	hospital	368	556	558	{remember}	owner	272	like	\N	1045
867	become	maintain	636	450	325	{according}	feeling	781	road	\N	\N
868	product	human	546	324	942	{sing,report}	military	712	shoulder	\N	\N
871	industry	never	416	754	127	{man}	only	12	heavy	\N	\N
874	it	student	42	147	951	{possible,avoid}	threat	529	involve	\N	\N
875	public	thus	718	628	421	{ready}	plan	808	hundred	\N	\N
879	easy	sense	150	332	175	{book,push}	skin	403	possible	\N	\N
882	table	budget	402	501	747	{official}	laugh	824	whom	\N	\N
883	fine	data	642	758	298	{finish}	song	863	painting	\N	\N
885	whether	sort	128	262	989	{buy}	throw	994	situation	\N	\N
886	center	appear	123	854	688	{management}	test	480	thought	\N	\N
889	action	upon	835	955	99	{truth}	answer	593	list	\N	\N
890	artist	war	674	117	45	{difference,line}	market	425	war	\N	\N
893	when	administration	814	629	640	{sign}	good	164	tree	\N	\N
894	boy	public	550	588	502	{site}	science	361	soldier	\N	\N
896	manage	else	543	877	73	{else}	traditional	980	area	45	\N
851	cut	operation	209	307	176	{cultural}	scene	663	speak	79	\N
843	surface	do	358	438	442	{alone,last}	heart	602	leg	50	\N
876	say	training	584	481	741	{later,right}	explain	597	usually	26	\N
898	table	easy	462	90	1	{smile}	anything	760	sit	96	\N
802	smile	notice	38	284	863	{hospital,million}	box	133	point	18	\N
839	stand	us	760	658	213	{southern,several}	lose	610	job	90	\N
878	enter	action	904	401	553	{get,quite}	explain	936	nor	37	\N
841	medical	unit	392	959	670	{education,challenge}	service	298	walk	75	\N
809	no	material	381	409	653	{human,about}	sit	887	according	19	\N
861	fund	wish	731	555	524	{toward,simple}	growth	715	change	13	\N
866	under	participant	58	298	354	{television}	left	712	alone	\N	1038
842	could	marriage	85	235	838	{couple,type}	certainly	575	senior	95	1064
849	issue	beyond	210	489	970	{mouth}	source	368	song	55	1063
869	system	new	968	778	750	{model}	their	598	quality	\N	1050
827	each	hospital	423	767	493	{role,operation}	table	981	from	77	1032
832	peace	road	727	898	400	{many}	participant	271	require	39	1091
895	way	analysis	849	620	408	{treat}	no	334	offer	\N	1066
833	also	dream	789	820	603	{animal,group}	against	503	run	67	1037
873	sea	will	996	357	180	{benefit,condition}	agree	753	by	\N	1037
899	financial	business	288	562	313	{month,natural}	far	470	especially	\N	1070
900	begin	card	393	121	832	{military}	likely	314	must	\N	1044
880	yard	cold	592	949	937	{box}	by	516	state	\N	1046
888	popular	truth	244	43	231	{court}	available	111	how	\N	1100
811	skin	piece	501	577	86	{base}	within	61	mention	25	1034
865	piece	relate	703	619	28	{while,he}	he	653	be	\N	1043
884	bed	professional	649	959	276	{purpose,station}	once	281	million	\N	1078
881	modern	effect	917	658	81	{fact,above}	hit	267	decade	\N	1093
877	health	yes	831	610	263	{recent}	away	798	population	\N	1064
892	value	moment	863	818	932	{discuss,focus}	development	999	his	\N	1011
891	rather	the	151	835	356	{speak}	likely	52	draw	\N	1071
897	those	can	16	828	590	{thank,available}	amount	102	white	\N	1075
872	yes	that	937	957	794	{but,eat}	American	781	write	\N	1056
826	treatment	voice	919	441	165	{indeed}	design	274	pattern	31	1071
847	include	big	925	994	182	{including}	positive	783	second	59	1091
846	to	arrive	647	608	813	{hot,generation}	blue	590	marriage	\N	1036
824	sport	animal	346	579	948	{contain}	Mrs	81	choice	\N	1026
850	government	shoulder	632	541	934	{back}	PM	792	brother	\N	1066
807	enough	water	641	527	679	{listen}	institution	225	fish	\N	1018
818	look	step	179	328	5	{ago,training}	strategy	552	church	\N	1022
870	give	man	833	700	458	{character}	certain	434	last	92	1014
864	truth	effort	248	73	745	{gun,each}	clearly	138	possible	\N	1041
887	appear	no	970	155	478	{medical}	occur	802	language	76	1034
822	beat	certainly	859	42	620	{soon,including}	however	421	rise	34	1052
\.


--
-- Data for Name: temp_bundled_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_bundled_phone (phone_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, carrier_lock, category_products_category_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1009	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1024
1092	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1022
1012	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1004
1097	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1093
1031	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1005
1044	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1010
1020	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1071
1085	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1055
1079	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1092
1083	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1040
1017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1086
1038	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1097
\.


--
-- Data for Name: temp_bundled_phone_smart_watch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_bundled_phone_smart_watch (smartwatch_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, band_size, category_products_category_id, bundled_phone_smart_watch_phone_id) FROM stdin;
866	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1038
863	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1018
842	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1064
849	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1063
869	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1050
806	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1063
827	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1032
828	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1082
832	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1091
895	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1066
833	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1037
814	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1060
873	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1037
899	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1070
900	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1044
854	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1078
855	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1081
880	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1046
888	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1100
810	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1001
821	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1081
811	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1034
865	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1043
829	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1018
817	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1019
831	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1044
884	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1078
816	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1090
881	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1093
853	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1009
877	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1064
892	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1011
891	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1071
856	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1098
897	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1075
872	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1056
826	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1071
847	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1091
830	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1045
846	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1036
824	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1026
850	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1066
807	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1018
818	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1022
870	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1014
864	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1041
887	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1034
822	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1052
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

