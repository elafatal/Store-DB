toc.dat                                                                                             0000600 0004000 0002000 00000040421 14437437366 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6                     {           StoreDB    15.2    15.2 >    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         H           1262    17079    StoreDB    DATABASE     �   CREATE DATABASE "StoreDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "StoreDB";
                postgres    false         �            1259    17090    address    TABLE     �   CREATE TABLE public.address (
    address_id integer NOT NULL,
    postal_code character varying(200),
    country character varying(150),
    city character varying(150),
    exacte_address text
);
    DROP TABLE public.address;
       public         heap    postgres    false         �            1259    17089    address_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_address_id_seq;
       public          postgres    false    217         I           0    0    address_address_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;
          public          postgres    false    216         �            1259    17123    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    purchase_invoice_id integer,
    discount_id integer,
    customer_id integer,
    total_price integer
);
    DROP TABLE public.cart;
       public         heap    postgres    false         �            1259    17122    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    226         J           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    225         �            1259    17130 	   cart_item    TABLE     �   CREATE TABLE public.cart_item (
    cart_item_id integer NOT NULL,
    quantity integer,
    cart_id integer,
    product_id integer
);
    DROP TABLE public.cart_item;
       public         heap    postgres    false         �            1259    17129    cart_item_cart_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_item_cart_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cart_item_cart_item_id_seq;
       public          postgres    false    228         K           0    0    cart_item_cart_item_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cart_item_cart_item_id_seq OWNED BY public.cart_item.cart_item_id;
          public          postgres    false    227         �            1259    17081    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(250),
    last_name character varying(250),
    phone_number text,
    address_id text
);
    DROP TABLE public.customer;
       public         heap    postgres    false         �            1259    17080    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    215         L           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    214         �            1259    17116    discount    TABLE        CREATE TABLE public.discount (
    discount_id integer NOT NULL,
    start_date date,
    end_date date,
    amount integer
);
    DROP TABLE public.discount;
       public         heap    postgres    false         �            1259    17115    discount_discount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discount_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.discount_discount_id_seq;
       public          postgres    false    224         M           0    0    discount_discount_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.discount_discount_id_seq OWNED BY public.discount.discount_id;
          public          postgres    false    223         �            1259    17105 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer,
    product_id integer,
    store_id integer,
    quantity integer
);
    DROP TABLE public.inventory;
       public         heap    postgres    false         �            1259    17109    product    TABLE     �   CREATE TABLE public.product (
    product_id integer NOT NULL,
    color character varying(200),
    size character varying(200),
    price integer
);
    DROP TABLE public.product;
       public         heap    postgres    false         �            1259    17108    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    222         N           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    221         �            1259    17137    purchase_invoice    TABLE     �   CREATE TABLE public.purchase_invoice (
    purchase_invoice_id integer NOT NULL,
    address_id integer,
    purchase_invoice_date date
);
 $   DROP TABLE public.purchase_invoice;
       public         heap    postgres    false         �            1259    17136 (   purchase_invoice_purchase_invoice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.purchase_invoice_purchase_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.purchase_invoice_purchase_invoice_id_seq;
       public          postgres    false    230         O           0    0 (   purchase_invoice_purchase_invoice_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.purchase_invoice_purchase_invoice_id_seq OWNED BY public.purchase_invoice.purchase_invoice_id;
          public          postgres    false    229         �            1259    17099    store    TABLE     v   CREATE TABLE public.store (
    store_id integer NOT NULL,
    name character varying(200),
    address_id integer
);
    DROP TABLE public.store;
       public         heap    postgres    false         �            1259    17098    store_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.store_store_id_seq;
       public          postgres    false    219         P           0    0    store_store_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store.store_id;
          public          postgres    false    218         �           2604    17093    address address_id    DEFAULT     x   ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);
 A   ALTER TABLE public.address ALTER COLUMN address_id DROP DEFAULT;
       public          postgres    false    217    216    217         �           2604    17126    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    226    225    226         �           2604    17133    cart_item cart_item_id    DEFAULT     �   ALTER TABLE ONLY public.cart_item ALTER COLUMN cart_item_id SET DEFAULT nextval('public.cart_item_cart_item_id_seq'::regclass);
 E   ALTER TABLE public.cart_item ALTER COLUMN cart_item_id DROP DEFAULT;
       public          postgres    false    228    227    228         �           2604    17084    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    214    215    215         �           2604    17119    discount discount_id    DEFAULT     |   ALTER TABLE ONLY public.discount ALTER COLUMN discount_id SET DEFAULT nextval('public.discount_discount_id_seq'::regclass);
 C   ALTER TABLE public.discount ALTER COLUMN discount_id DROP DEFAULT;
       public          postgres    false    224    223    224         �           2604    17112    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    222    222         �           2604    17140 $   purchase_invoice purchase_invoice_id    DEFAULT     �   ALTER TABLE ONLY public.purchase_invoice ALTER COLUMN purchase_invoice_id SET DEFAULT nextval('public.purchase_invoice_purchase_invoice_id_seq'::regclass);
 S   ALTER TABLE public.purchase_invoice ALTER COLUMN purchase_invoice_id DROP DEFAULT;
       public          postgres    false    229    230    230         �           2604    17102    store store_id    DEFAULT     p   ALTER TABLE ONLY public.store ALTER COLUMN store_id SET DEFAULT nextval('public.store_store_id_seq'::regclass);
 =   ALTER TABLE public.store ALTER COLUMN store_id DROP DEFAULT;
       public          postgres    false    219    218    219         5          0    17090    address 
   TABLE DATA                 public          postgres    false    217       3381.dat >          0    17123    cart 
   TABLE DATA                 public          postgres    false    226       3390.dat @          0    17130 	   cart_item 
   TABLE DATA                 public          postgres    false    228       3392.dat 3          0    17081    customer 
   TABLE DATA                 public          postgres    false    215       3379.dat <          0    17116    discount 
   TABLE DATA                 public          postgres    false    224       3388.dat 8          0    17105 	   inventory 
   TABLE DATA                 public          postgres    false    220       3384.dat :          0    17109    product 
   TABLE DATA                 public          postgres    false    222       3386.dat B          0    17137    purchase_invoice 
   TABLE DATA                 public          postgres    false    230       3394.dat 7          0    17099    store 
   TABLE DATA                 public          postgres    false    219       3383.dat Q           0    0    address_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);
          public          postgres    false    216         R           0    0    cart_cart_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, false);
          public          postgres    false    225         S           0    0    cart_item_cart_item_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cart_item_cart_item_id_seq', 1, false);
          public          postgres    false    227         T           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    214         U           0    0    discount_discount_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.discount_discount_id_seq', 1, false);
          public          postgres    false    223         V           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public          postgres    false    221         W           0    0 (   purchase_invoice_purchase_invoice_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.purchase_invoice_purchase_invoice_id_seq', 1, false);
          public          postgres    false    229         X           0    0    store_store_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.store_store_id_seq', 1, false);
          public          postgres    false    218         �           2606    17097    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    217         �           2606    17135    cart_item cart_item_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (cart_item_id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public            postgres    false    228         �           2606    17128    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    226         �           2606    17088    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    215         �           2606    17121    discount discount_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (discount_id);
 @   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_pkey;
       public            postgres    false    224         �           2606    17114    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    222         �           2606    17142 &   purchase_invoice purchase_invoice_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.purchase_invoice
    ADD CONSTRAINT purchase_invoice_pkey PRIMARY KEY (purchase_invoice_id);
 P   ALTER TABLE ONLY public.purchase_invoice DROP CONSTRAINT purchase_invoice_pkey;
       public            postgres    false    230         �           2606    17104    store store_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public            postgres    false    219                                                                                                                                                                                                                                                       3381.dat                                                                                            0000600 0004000 0002000 00000165547 14437437366 0014313 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (1, NULL, 'Iran', 'Konārak', '05 Manitowish Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (2, NULL, 'Iran', 'Sūrīān', '353 Huxley Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (3, NULL, 'Iran', 'Galūgāh', '7349 Duke Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (4, NULL, 'Iran', 'Saqqez', '91 Bowman Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (5, NULL, 'Iran', 'Langarūd', '0068 Golf Course Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (6, NULL, 'Iran', 'Sūrak', '0 7th Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (7, NULL, 'Iran', 'Varazqān', '8043 Moland Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (8, NULL, 'Iran', 'Borāzjān', '8012 Grayhawk Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (9, NULL, 'Iran', 'Şaḩneh', '40213 Badeau Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (10, NULL, 'Iran', 'Borūjerd', '470 Anzinger Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (11, NULL, 'Iran', 'Bandar ‘Abbās', '3 Towne Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (12, NULL, 'Iran', 'Māsāl', '50 Anthes Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (13, NULL, 'Iran', 'Rey', '967 Morning Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (14, NULL, 'Iran', 'Qorveh', '3 Logan Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (15, NULL, 'Iran', 'Lāmerd', '70 Mosinee Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (16, NULL, 'Iran', 'Dargaz', '3094 Comanche Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (17, NULL, 'Iran', 'Shaft', '2 Old Gate Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (18, NULL, 'Iran', 'Masjed Soleymān', '2237 Hoepker Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (19, NULL, 'Iran', 'Dārān', '802 Thompson Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (20, NULL, 'Iran', 'Kaleybar', '6909 Meadow Vale Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (21, NULL, 'Iran', 'Mahābād', '9888 6th Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (22, NULL, 'Iran', 'Kāshān', '09604 Pierstorff Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (23, NULL, 'Iran', 'Takāb', '36 Scott Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (24, NULL, 'Iran', '‘Alīābād-e Katūl', '04239 Moose Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (25, NULL, 'Iran', 'Rāmsar', '164 Stone Corner Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (26, NULL, 'Iran', 'Zanjān', '35409 Riverside Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (27, NULL, 'Iran', 'Tehrān', '1402 Bowman Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (28, NULL, 'Iran', 'Bardaskan', '13353 Milwaukee Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (29, NULL, 'Iran', 'Konārak', '93 Lunder Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (30, NULL, 'Iran', 'Qal‘eh-ye Khvājeh', '08804 Northland Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (31, NULL, 'Iran', 'Chelgard', '63 Mesta Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (32, NULL, 'Iran', 'Malāyer', '0240 Spenser Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (33, NULL, 'Iran', 'Jahrom', '977 Esker Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (34, NULL, 'Iran', 'Dorūd', '03615 Barby Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (35, NULL, 'Iran', 'Oshnavīyeh', '94 Little Fleur Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (36, NULL, 'Iran', 'Sarbīsheh', '24 Fulton Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (37, NULL, 'Iran', 'Dasht-e Lati', '71943 Harper Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (38, NULL, 'Iran', 'Kāshān', '64203 Loomis Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (39, NULL, 'Iran', 'Abū Mūsā', '4 Delladonna Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (40, NULL, 'Iran', 'Dogonbadan', '4119 Marquette Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (41, NULL, 'Iran', 'Shāhīn Dezh', '19 Kedzie Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (42, NULL, 'Iran', 'Fāmenīn', '5389 Ridgeway Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (43, NULL, 'Iran', 'Şaḩneh', '94 Arrowood Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (44, NULL, 'Iran', 'Ahar', '5 Eggendart Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (45, NULL, 'Iran', 'Shahre Jadide Andisheh', '8 Cascade Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (46, NULL, 'Iran', 'Qal‘eh-ye Khvājeh', '39977 Lukken Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (47, NULL, 'Iran', 'Chenārān', '17324 Talmadge Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (48, NULL, 'Iran', 'Eyvān', '3 Bowman Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (49, NULL, 'Iran', 'Javānrūd', '66688 8th Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (50, NULL, 'Iran', 'Pā’īn-e Bāzār-e Rūdbār', '43229 Manitowish Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (51, NULL, 'Iran', 'Sanandaj', '2127 Haas Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (52, NULL, 'Iran', 'Gorgān', '34 La Follette Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (53, NULL, 'Iran', 'Dārān', '34377 Red Cloud Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (54, NULL, 'Iran', 'Ravānsar', '1 Maple Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (55, NULL, 'Iran', 'Qeshm', '78 Eastwood Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (56, NULL, 'Iran', 'Varazqān', '3 Boyd Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (57, NULL, 'Iran', 'Herīs', '09 Riverside Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (58, NULL, 'Iran', 'Oshnavīyeh', '820 Prairie Rose Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (59, NULL, 'Iran', 'Shahrud', '765 Garrison Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (60, NULL, 'Iran', 'Tehrān', '2707 Anhalt Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (61, NULL, 'Iran', 'Hashtgerd', '38 Messerschmidt Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (62, NULL, 'Iran', 'Sūrān', '9 Stang Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (63, NULL, 'Iran', 'Garmeh', '64 Loftsgordon Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (64, NULL, 'Iran', 'Dorūd', '31852 Warbler Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (65, NULL, 'Iran', 'Kahrīz', '67414 Tony Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (66, NULL, 'Iran', 'pamas', '0 Anderson Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (67, NULL, 'Iran', 'Dārān', '05 Hagan Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (68, NULL, 'Iran', 'Nashtā Rūd', '52 Swallow Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (69, NULL, 'Iran', 'Tākestān', '6481 South Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (70, NULL, 'Iran', 'Nūr', '70070 Nancy Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (71, NULL, 'Iran', 'Varāmīn', '23 Transport Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (72, NULL, 'Iran', 'Shalamzār', '4 Corscot Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (73, NULL, 'Iran', 'Āq Qāyeh', '94 Wayridge Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (74, NULL, 'Iran', 'Khorramdarreh', '89455 Hauk Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (75, NULL, 'Iran', 'Hashtgerd', '3300 Hoard Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (76, NULL, 'Iran', 'Qorveh', '0 Mayer Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (77, NULL, 'Iran', 'Līkak', '91 Debra Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (78, NULL, 'Iran', 'Varazqān', '3755 Bayside Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (79, NULL, 'Iran', 'Shahr-e Bābak', '61 Coleman Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (80, NULL, 'Iran', 'Āzādshahr', '60770 Calypso Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (81, NULL, 'Iran', 'Kahrīz', '687 Manufacturers Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (82, NULL, 'Iran', 'Shahre Jadide Andisheh', '4057 Stang Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (83, NULL, 'Iran', 'Dorūd', '95 American Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (84, NULL, 'Iran', 'Ābdānān', '64424 Sullivan Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (85, NULL, 'Iran', 'Shahrak-e Bākharz', '6 Bluejay Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (86, NULL, 'Iran', 'Qeshm', '53582 Portage Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (87, NULL, 'Iran', 'Tāybād', '2907 Commercial Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (88, NULL, 'Iran', 'Qeshm', '831 Becker Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (89, NULL, 'Iran', 'Sardasht', '7203 Nelson Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (90, NULL, 'Iran', 'Shāhīn Dezh', '748 Kinsman Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (91, NULL, 'Iran', 'Sari', '64 Melody Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (92, NULL, 'Iran', 'Āzādshahr', '57 Hauk Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (93, NULL, 'Iran', 'Nowshahr', '864 Vidon Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (94, NULL, 'Iran', 'Bīleh Savār', '372 Artisan Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (95, NULL, 'Iran', 'Alīgūdarz', '517 La Follette Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (96, NULL, 'Iran', 'Isfahan', '3 Meadow Vale Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (97, NULL, 'Iran', 'Qorveh', '6964 Vernon Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (98, NULL, 'Iran', 'Shaft', '39838 Bunker Hill Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (99, NULL, 'Iran', 'Gonābād', '51 Blackbird Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (100, NULL, 'Iran', 'Bandar-e Lengeh', '85190 Merchant Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (101, NULL, 'Iran', 'Āzādshahr', '1693 Hazelcrest Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (102, NULL, 'Iran', 'Khorramābād', '8254 Schiller Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (103, NULL, 'Iran', 'Shāhīn Shahr', '61774 Nelson Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (104, NULL, 'Iran', 'Bāfq', '015 Cardinal Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (105, NULL, 'Iran', 'Khalkhāl', '50536 Dovetail Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (106, NULL, 'Iran', 'Mahābād', '0748 Manley Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (107, NULL, 'Iran', 'Khondāb', '2380 Oneill Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (108, NULL, 'Iran', 'Eslāmābād', '530 Fremont Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (109, NULL, 'Iran', 'Gāvbandī', '3835 Holmberg Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (110, NULL, 'Iran', 'Eslāmābād', '12309 Swallow Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (111, NULL, 'Iran', 'Qal‘eh-ye Khvājeh', '02 Northridge Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (112, NULL, 'Iran', 'Namīn', '9664 Fieldstone Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (113, NULL, 'Iran', 'Bandar-e ‘Asalūyeh', '64020 Banding Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (114, NULL, 'Iran', 'Jahrom', '90029 Scofield Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (115, NULL, 'Iran', 'Malāyer', '1448 Springview Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (116, NULL, 'Iran', 'Tehrān', '5 Pankratz Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (117, NULL, 'Iran', 'Dorūd', '110 Tomscot Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (118, NULL, 'Iran', 'Herīs', '7697 Chive Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (119, NULL, 'Iran', 'Kalāleh', '9 Anniversary Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (120, NULL, 'Iran', 'Dalgān', '0 Tennyson Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (121, NULL, 'Iran', 'Borāzjān', '46296 Jay Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (122, NULL, 'Iran', 'Lāmerd', '598 South Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (123, NULL, 'Iran', 'Mahdishahr', '01 Annamark Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (124, NULL, 'Iran', 'Āq Qāyeh', '4 Lien Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (125, NULL, 'Iran', 'Behābād', '18 Northwestern Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (126, NULL, 'Iran', 'Neyrīz', '504 Mallard Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (127, NULL, 'Iran', 'Damāvand', '181 Lukken Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (128, NULL, 'Iran', 'Khondāb', '66066 Carey Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (129, NULL, 'Iran', 'Bandar ‘Abbās', '55 Delaware Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (130, NULL, 'Iran', 'Rāmsar', '608 Manley Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (131, NULL, 'Iran', 'Ravānsar', '6 Namekagon Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (132, NULL, 'Iran', 'Bandar ‘Abbās', '3 David Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (133, NULL, 'Iran', 'Bandar ‘Abbās', '88674 Autumn Leaf Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (134, NULL, 'Iran', 'Kāmyārān', '1 Talmadge Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (135, NULL, 'Iran', 'Bāgh-e Malek', '56136 Heffernan Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (136, NULL, 'Iran', 'Jūybār', '802 Pond Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (137, NULL, 'Iran', 'Şafāshahr', '61503 Arapahoe Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (138, NULL, 'Iran', 'Kāshmar', '2201 Jackson Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (139, NULL, 'Iran', 'Bardaskan', '807 Browning Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (140, NULL, 'Iran', 'Dorūd', '0 Eastwood Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (141, NULL, 'Iran', 'Sūrīān', '062 Onsgard Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (142, NULL, 'Iran', 'Khorramdarreh', '23 Commercial Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (143, NULL, 'Iran', 'Damāvand', '9 Killdeer Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (144, NULL, 'Iran', 'Jājarm', '484 Bay Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (145, NULL, 'Iran', '‘Alīābād-e Katūl', '3 Summer Ridge Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (146, NULL, 'Iran', 'Eyvān', '77683 Esker Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (147, NULL, 'Iran', 'Sanandaj', '68 Grover Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (148, NULL, 'Iran', 'Jīroft', '5 Vernon Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (149, NULL, 'Iran', 'Takāb', '60617 Straubel Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (150, NULL, 'Iran', 'Gorgān', '64980 Sundown Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (151, NULL, 'Iran', 'Tīrān', '69158 Havey Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (152, NULL, 'Iran', 'Isfahan', '9 Loomis Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (153, NULL, 'Iran', 'Rehnān', '4737 Katie Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (154, NULL, 'Iran', 'Bastak', '807 Harper Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (155, NULL, 'Iran', 'Mahābād', '8558 Darwin Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (156, NULL, 'Iran', 'Arāk', '273 Ridgeway Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (157, NULL, 'Iran', 'Tonekābon', '082 Farragut Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (158, NULL, 'Iran', 'Sūrān', '5 Ridgeway Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (159, NULL, 'Iran', 'Meybod', '88791 Bay Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (160, NULL, 'Iran', 'Falāvarjān', '26021 Rigney Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (161, NULL, 'Iran', 'Shalamzār', '92714 Sunbrook Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (162, NULL, 'Iran', 'Varāmīn', '22895 Schurz Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (163, NULL, 'Iran', 'Gālīkesh', '37345 West Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (164, NULL, 'Iran', 'Malekān', '5187 Corscot Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (165, NULL, 'Iran', 'Nīkshahr', '63525 Monica Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (166, NULL, 'Iran', 'Mahābād', '7 Loeprich Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (167, NULL, 'Iran', 'Bandar-e Māhshahr', '9954 Raven Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (168, NULL, 'Iran', 'Kelīshād va Sūdarjān', '750 Magdeline Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (169, NULL, 'Iran', 'Borūjen', '63073 Duke Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (170, NULL, 'Iran', 'Pīshvā', '40820 Burning Wood Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (171, NULL, 'Iran', 'Mollās̄ānī', '20 Spaight Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (172, NULL, 'Iran', 'Dogonbadan', '6 Gina Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (173, NULL, 'Iran', 'Ābdānān', '67 Karstens Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (174, NULL, 'Iran', 'Qom', '501 Sutteridge Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (175, NULL, 'Iran', 'Fāryāb', '09 Sutherland Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (176, NULL, 'Iran', 'Kahnūj', '7 Sauthoff Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (177, NULL, 'Iran', 'Zanjān', '8665 Fieldstone Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (178, NULL, 'Iran', 'Nowshahr', '8 Kennedy Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (179, NULL, 'Iran', 'Nahāvand', '4 Westerfield Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (180, NULL, 'Iran', 'Omīdcheh', '9764 Esker Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (181, NULL, 'Iran', 'Gāvbandī', '41 Kingsford Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (182, NULL, 'Iran', 'Khalīlābād', '8 Elka Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (183, NULL, 'Iran', 'Farīmān', '5936 Sutteridge Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (184, NULL, 'Iran', 'Sarvābād', '45 Anzinger Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (185, NULL, 'Iran', 'Eqbālīyeh', '759 Toban Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (186, NULL, 'Iran', 'Āq Qāyeh', '393 Kenwood Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (187, NULL, 'Iran', 'Alīgūdarz', '26175 Ryan Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (188, NULL, 'Iran', 'Sanandaj', '900 Victoria Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (189, NULL, 'Iran', 'Sari', '3222 Bultman Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (190, NULL, 'Iran', 'Razan', '9371 Ruskin Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (191, NULL, 'Iran', 'Qal‘eh-ye Khvājeh', '439 Hallows Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (192, NULL, 'Iran', 'Jāsk', '4 Del Mar Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (193, NULL, 'Iran', 'Namīn', '28 Wayridge Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (194, NULL, 'Iran', 'Jājarm', '05 Sachtjen Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (195, NULL, 'Iran', 'Garmeh', '1 Cascade Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (196, NULL, 'Iran', 'Fīrūzābād', '18007 Commercial Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (197, NULL, 'Iran', 'Nowshahr', '75 5th Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (198, NULL, 'Iran', 'Tāybād', '91 Heath Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (199, NULL, 'Iran', 'Namīn', '2344 Mayer Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (200, NULL, 'Iran', 'Ahar', '34559 Red Cloud Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (201, NULL, 'Iran', 'Āshkhāneh', '210 Johnson Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (202, NULL, 'Iran', 'Dūst Moḩammad Khān', '1490 Bartelt Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (203, NULL, 'Iran', 'Sūrān', '9804 Crowley Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (204, NULL, 'Iran', 'Isfahan', '49189 Bayside Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (205, NULL, 'Iran', 'Bandar-e Torkaman', '0 Scott Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (206, NULL, 'Iran', 'Şafāshahr', '214 Stone Corner Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (207, NULL, 'Iran', 'Āzādshahr', '223 Fallview Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (208, NULL, 'Iran', 'Abū Mūsā', '1 Eagle Crest Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (209, NULL, 'Iran', 'Kavār', '99 Eastlawn Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (210, NULL, 'Iran', 'Bāgh-e Malek', '29 Lillian Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (211, NULL, 'Iran', 'Neyrīz', '438 Eagle Crest Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (212, NULL, 'Iran', 'Khorramābād', '11 Talisman Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (213, NULL, 'Iran', 'Varazqān', '39 Mallard Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (214, NULL, 'Iran', 'Ravānsar', '10 Sutteridge Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (215, NULL, 'Iran', 'Şaḩneh', '418 Roxbury Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (216, NULL, 'Iran', 'Jam', '92 Miller Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (217, NULL, 'Iran', 'Dasht-e Lati', '41 Calypso Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (218, NULL, 'Iran', 'Shahr-e Qods', '79 Atwood Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (219, NULL, 'Iran', 'Fūman', '16491 Mesta Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (220, NULL, 'Iran', 'Shahre Jadide Andisheh', '6 Del Mar Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (221, NULL, 'Iran', 'Dasht-e Lati', '399 Trailsway Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (222, NULL, 'Iran', 'Nashtā Rūd', '055 Rieder Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (223, NULL, 'Iran', 'Tāybād', '49 Moland Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (224, NULL, 'Iran', 'Āzādshahr', '96 Maple Wood Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (225, NULL, 'Iran', 'Shīrvān', '75524 Sundown Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (226, NULL, 'Iran', 'Bandar ‘Abbās', '07 Orin Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (227, NULL, 'Iran', 'Sardasht', '45 Porter Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (228, NULL, 'Iran', 'Tajrīsh', '0925 Mesta Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (229, NULL, 'Iran', 'Rey', '10 Kingsford Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (230, NULL, 'Iran', 'Kāshmar', '6 Vernon Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (231, NULL, 'Iran', 'Javānrūd', '200 2nd Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (232, NULL, 'Iran', 'Arāk', '2 Macpherson Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (233, NULL, 'Iran', 'Bandar-e Torkaman', '884 7th Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (234, NULL, 'Iran', 'Shāhīn Dezh', '204 Banding Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (235, NULL, 'Iran', 'Shīrvān', '5 Crownhardt Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (236, NULL, 'Iran', 'Fāryāb', '764 Melrose Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (237, NULL, 'Iran', 'Yazd', '28423 Maple Wood Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (238, NULL, 'Iran', 'Gonbad-e Kāvūs', '747 Kingsford Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (239, NULL, 'Iran', 'Shahre Jadide Andisheh', '2930 Arizona Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (240, NULL, 'Iran', 'Malārd', '0 Longview Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (241, NULL, 'Iran', 'Kavār', '870 Burrows Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (242, NULL, 'Iran', 'Kāshmar', '609 Harbort Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (243, NULL, 'Iran', 'Qarah Ẕīā’ od Dīn', '5 Manley Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (244, NULL, 'Iran', 'Sepīdān', '1 Iowa Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (245, NULL, 'Iran', 'Bandar-e Torkaman', '91917 Eagle Crest Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (246, NULL, 'Iran', 'Alīgūdarz', '64291 Pankratz Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (247, NULL, 'Iran', 'Rāvar', '230 Eastwood Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (248, NULL, 'Iran', 'Kaleybar', '42 Maple Wood Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (249, NULL, 'Iran', 'Konārak', '8 Paget Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (250, NULL, 'Iran', 'Alvand', '833 Moland Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (251, NULL, 'Iran', 'Galūgāh', '11 Maywood Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (252, NULL, 'Iran', 'Shahr-e Bābak', '29 Acker Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (253, NULL, 'Iran', 'Razan', '92007 Leroy Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (254, NULL, 'Iran', 'Kabūdarāhang', '687 Macpherson Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (255, NULL, 'Iran', 'Bandar-e Ganāveh', '78467 Fordem Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (256, NULL, 'Iran', 'Anār', '90 Thackeray Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (257, NULL, 'Iran', 'Namīn', '52 Mallory Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (258, NULL, 'Iran', 'Şaḩneh', '21337 Trailsway Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (259, NULL, 'Iran', 'Hashtpar', '2 Glendale Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (260, NULL, 'Iran', 'Bandar-e Torkaman', '6647 Anniversary Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (261, NULL, 'Iran', 'Qarah Ẕīā’ od Dīn', '28 Texas Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (262, NULL, 'Iran', 'Lāmerd', '206 Becker Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (263, NULL, 'Iran', 'Gīvī', '518 Delaware Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (264, NULL, 'Iran', 'Shahr-e Bābak', '5 Graceland Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (265, NULL, 'Iran', '‘Abbāsābād', '6 Rusk Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (266, NULL, 'Iran', 'Khvānsār', '9951 Almo Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (267, NULL, 'Iran', 'Aleshtar', '5098 Arkansas Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (268, NULL, 'Iran', 'Shahrak-e Bākharz', '467 Nevada Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (269, NULL, 'Iran', 'Jājarm', '408 Hanson Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (270, NULL, 'Iran', 'Shalamzār', '0 Tennessee Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (271, NULL, 'Iran', 'Bāsht', '90546 Gerald Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (272, NULL, 'Iran', '‘Abbāsābād', '67 American Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (273, NULL, 'Iran', 'Semīrom', '7 Graceland Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (274, NULL, 'Iran', 'Tīrān', '88532 Macpherson Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (275, NULL, 'Iran', 'Māsāl', '7969 Drewry Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (276, NULL, 'Iran', 'Āq Qāyeh', '9 Hanson Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (277, NULL, 'Iran', 'Varāmīn', '4 Stang Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (278, NULL, 'Iran', 'Feyẕābād', '3241 Ramsey Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (279, NULL, 'Iran', 'Sarāvān', '0 Mariners Cove Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (280, NULL, 'Iran', 'Bābol', '398 Bluejay Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (281, NULL, 'Iran', 'Sarvābād', '9 Cody Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (282, NULL, 'Iran', 'Kangān', '8 5th Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (283, NULL, 'Iran', 'Qarah Ẕīā’ od Dīn', '6880 Derek Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (284, NULL, 'Iran', 'Kāshān', '30830 Tony Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (285, NULL, 'Iran', 'Tāybād', '673 Grim Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (286, NULL, 'Iran', 'Kabūdarāhang', '96 Miller Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (287, NULL, 'Iran', 'Rehnān', '9002 Saint Paul Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (288, NULL, 'Iran', 'Solţānābād', '40581 Dunning Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (289, NULL, 'Iran', 'Nūrābād', '410 Shelley Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (290, NULL, 'Iran', 'Alvand', '6 Mitchell Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (291, NULL, 'Iran', 'Neqāb', '5184 Lawn Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (292, NULL, 'Iran', 'Shāhīn Shahr', '4918 Roth Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (293, NULL, 'Iran', 'Alvand', '7 Lukken Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (294, NULL, 'Iran', 'Rāmsar', '45 Hermina Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (295, NULL, 'Iran', 'Sardasht', '667 Lillian Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (296, NULL, 'Iran', 'Sarāvān', '3 Glendale Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (297, NULL, 'Iran', 'Marvdasht', '21147 Mayer Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (298, NULL, 'Iran', 'Behbahān', '6 Thackeray Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (299, NULL, 'Iran', 'Kāshān', '92 Westport Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (300, NULL, 'Iran', 'Kāshmar', '1 Village Green Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (301, NULL, 'Iran', 'Āstārā', '83111 Vahlen Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (302, NULL, 'Iran', 'Kalāt-e Nāderī', '8 Meadow Vale Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (303, NULL, 'Iran', 'Bāgh-e Malek', '963 Tennyson Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (304, NULL, 'Iran', 'Nīshābūr', '25565 Dayton Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (305, NULL, 'Iran', 'Shūsh', '6 Summit Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (306, NULL, 'Iran', 'Damāvand', '34185 Paget Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (307, NULL, 'Iran', 'Ḩājjīābād', '977 Prairieview Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (308, NULL, 'Iran', 'Sarbīsheh', '1332 Forest Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (309, NULL, 'Iran', 'Dārān', '96 Forest Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (310, NULL, 'Iran', 'Āzādshahr', '5 Spaight Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (311, NULL, 'Iran', 'Sarāb', '342 Logan Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (312, NULL, 'Iran', 'Hendījān', '86588 Killdeer Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (313, NULL, 'Iran', 'Ravānsar', '8915 Shelley Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (314, NULL, 'Iran', 'Zahedan', '0531 2nd Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (315, NULL, 'Iran', 'Ābdānān', '607 Dakota Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (316, NULL, 'Iran', 'Pā’īn-e Bāzār-e Rūdbār', '1154 Cascade Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (317, NULL, 'Iran', 'Nashtā Rūd', '6017 Scott Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (318, NULL, 'Iran', 'Rey', '992 Hoffman Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (319, NULL, 'Iran', 'Shahr-e Qods', '2 Brentwood Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (320, NULL, 'Iran', 'pamas', '74 Grim Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (321, NULL, 'Iran', 'Shāhīn Shahr', '9365 Park Meadow Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (322, NULL, 'Iran', 'Āshkhāneh', '0363 Calypso Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (323, NULL, 'Iran', 'Galūgāh', '1480 Badeau Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (324, NULL, 'Iran', 'Fūman', '0299 Welch Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (325, NULL, 'Iran', 'Fīrūzābād', '764 Haas Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (326, NULL, 'Iran', 'Gāvbandī', '14138 7th Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (327, NULL, 'Iran', 'Shiraz', '61884 Sycamore Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (328, NULL, 'Iran', 'Borāzjān', '77370 Comanche Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (329, NULL, 'Iran', 'Īz̄eh', '1173 Cambridge Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (330, NULL, 'Iran', 'Āshtīān', '7 Arkansas Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (331, NULL, 'Iran', 'Noşratābād', '854 Blaine Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (332, NULL, 'Iran', 'Bardaskan', '5372 Northview Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (333, NULL, 'Iran', 'Bandar ‘Abbās', '6 Fairfield Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (334, NULL, 'Iran', 'Behbahān', '734 Linden Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (335, NULL, 'Iran', 'Qorveh', '2 Dahle Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (336, NULL, 'Iran', 'Dorūd', '79846 Weeping Birch Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (337, NULL, 'Iran', 'Sarakhs', '37 Logan Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (338, NULL, 'Iran', 'Semīrom', '585 Manufacturers Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (339, NULL, 'Iran', 'Damāvand', '11856 Commercial Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (340, NULL, 'Iran', 'Jongīyeh', '06842 Kenwood Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (341, NULL, 'Iran', 'Farīmān', '1211 Lukken Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (342, NULL, 'Iran', 'Bāgh-e Malek', '70173 Buhler Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (343, NULL, 'Iran', 'Malāyer', '396 Monument Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (344, NULL, 'Iran', 'Aleshtar', '1 Mifflin Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (345, NULL, 'Iran', 'Tehrān', '921 Rusk Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (346, NULL, 'Iran', 'Mākū', '4 Superior Point');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (347, NULL, 'Iran', 'Shādegān', '438 Nevada Place');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (348, NULL, 'Iran', 'Mehrān', '48491 Kropf Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (349, NULL, 'Iran', 'Varazqān', '242 Starling Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (350, NULL, 'Iran', 'Sharīfābād', '836 Gale Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (351, NULL, 'Iran', 'Jūybār', '727 Westerfield Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (352, NULL, 'Iran', 'Ābdānān', '118 Elka Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (353, NULL, 'Iran', 'Fareydūnshahr', '5 Annamark Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (354, NULL, 'Iran', 'Nowshahr', '0457 Oak Valley Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (355, NULL, 'Iran', 'Kalāleh', '13784 Kim Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (356, NULL, 'Iran', 'Kelīshād va Sūdarjān', '1 Loomis Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (357, NULL, 'Iran', 'Esfarāyen', '7522 Bay Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (358, NULL, 'Iran', 'Oshnavīyeh', '16 Moland Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (359, NULL, 'Iran', 'Fahraj', '5318 Towne Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (360, NULL, 'Iran', 'Ahar', '5179 Doe Crossing Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (361, NULL, 'Iran', 'Mākū', '11 Badeau Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (362, NULL, 'Iran', 'Marāveh Tappeh', '8393 Miller Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (363, NULL, 'Iran', 'Mahābād', '07 Bonner Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (364, NULL, 'Iran', 'Īlām', '3 Glacier Hill Crossing');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (365, NULL, 'Iran', 'Tāybād', '09 Scofield Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (366, NULL, 'Iran', 'Bāgh-e Malek', '82264 Bunting Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (367, NULL, 'Iran', 'Ārān Bīdgol', '301 Novick Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (368, NULL, 'Iran', 'Kahnūj', '861 Sommers Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (369, NULL, 'Iran', 'Nīshābūr', '6810 Mallard Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (370, NULL, 'Iran', 'Shahrīār', '3 Dennis Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (371, NULL, 'Iran', 'Jīroft', '7 Colorado Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (372, NULL, 'Iran', 'Dogonbadan', '03526 Kropf Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (373, NULL, 'Iran', 'Hashtgerd', '6565 Sherman Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (374, NULL, 'Iran', 'Jūybār', '13 Haas Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (375, NULL, 'Iran', 'Zehak', '5717 Lunder Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (376, NULL, 'Iran', 'Farrokh Shahr', '7547 Center Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (377, NULL, 'Iran', '‘Alīābād-e Katūl', '6 Loeprich Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (378, NULL, 'Iran', 'Pā’īn-e Bāzār-e Rūdbār', '73063 Carey Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (379, NULL, 'Iran', 'Bāfq', '57428 Pawling Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (380, NULL, 'Iran', 'Feyẕābād', '348 Charing Cross Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (381, NULL, 'Iran', 'Gālīkesh', '42265 Green Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (382, NULL, 'Iran', 'Āstārā', '028 Dryden Hill');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (383, NULL, 'Iran', 'Varāmīn', '810 Stang Street');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (384, NULL, 'Iran', 'Sūrān', '81156 Mccormick Court');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (385, NULL, 'Iran', 'Jam', '8 Memorial Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (386, NULL, 'Iran', 'Zanjān', '44962 Maryland Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (387, NULL, 'Iran', 'Fūman', '31 Alpine Road');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (388, NULL, 'Iran', 'Jahrom', '05415 Graceland Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (389, NULL, 'Iran', 'Dārān', '3754 Barby Lane');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (390, NULL, 'Iran', 'Qal‘eh-ye Khvājeh', '683 Artisan Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (391, NULL, 'Iran', 'Āshkhāneh', '77332 Chive Parkway');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (392, NULL, 'Iran', 'Gīvī', '0504 Old Shore Avenue');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (393, NULL, 'Iran', 'Jam', '61117 Gerald Alley');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (394, NULL, 'Iran', 'Qarah Ẕīā’ od Dīn', '17 Rusk Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (395, NULL, 'Iran', 'pamas', '4294 Bowman Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (396, NULL, 'Iran', 'Dalgān', '89581 Loomis Way');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (397, NULL, 'Iran', 'Tajrīsh', '751 6th Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (398, NULL, 'Iran', 'Bardaskan', '2 Loftsgordon Terrace');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (399, NULL, 'Iran', 'Kalāt-e Nāderī', '914 Bayside Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (400, NULL, 'Iran', 'Khondāb', '5931 Morningstar Drive');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (401, NULL, 'Iran', 'Qā’en', '8 Macpherson Junction');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (402, NULL, 'Iran', 'Neyrīz', '58 Gulseth Center');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (403, NULL, 'Iran', 'Anār', '157 Stang Park');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (404, NULL, 'Iran', 'Hendījān', '28 Victoria Plaza');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (405, NULL, 'Iran', 'Kahnūj', '4 5th Circle');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (406, NULL, 'Iran', 'Jīroft', '25197 Stephen Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (407, NULL, 'Iran', 'Sepīdān', '0 Beilfuss Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (408, NULL, 'Iran', 'Bandar-e ‘Asalūyeh', '697 Monument Pass');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (409, NULL, 'Iran', 'Damāvand', '8 Ridgeway Trail');
INSERT INTO public.address (address_id, postal_code, country, city, exacte_address) VALUES (410, NULL, 'Iran', 'Zanjān', '6 Kensington Terrace');


                                                                                                                                                         3390.dat                                                                                            0000600 0004000 0002000 00000225642 14437437366 0014304 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (1, 1, 199, 260, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (2, 2, 73, 204, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (3, 3, 139, 170, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (4, 4, 23, 281, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (5, 5, 47, 4, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (6, 6, 93, 43, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (7, 7, 90, 201, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (8, 8, 14, 275, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (9, 9, 151, 356, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (10, 10, 27, 246, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (11, 11, 61, 327, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (12, 12, 191, 59, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (13, 13, 79, 167, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (14, 14, 7, 360, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (15, NULL, 155, 160, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (16, 16, 26, 253, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (17, 17, 26, 297, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (18, 18, 116, 170, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (19, 19, 37, 227, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (20, 20, 128, 192, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (21, 21, 5, 236, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (22, 22, 83, 103, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (23, 23, 40, 317, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (24, 24, 182, 209, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (25, 25, 84, 349, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (26, 26, 86, 343, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (27, 27, 158, 358, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (28, 28, 149, 400, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (29, 29, 187, 166, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (30, 30, 82, 40, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (31, 31, 59, 108, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (32, 32, 14, 198, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (33, 33, 172, 167, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (34, 34, 152, 309, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (35, 35, 152, 341, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (36, 36, 96, 33, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (37, 37, 198, 144, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (38, 38, 2, 118, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (39, 39, 110, 264, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (40, 40, 134, 318, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (41, 41, 14, 367, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (42, 42, 168, 128, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (43, 43, 85, 283, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (44, 44, 168, 332, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (45, 45, 125, 128, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (46, 46, 144, 30, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (47, 47, 40, 39, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (48, 48, 81, 217, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (49, 49, 39, 135, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (50, 50, 69, 115, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (51, 51, 38, 279, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (52, 52, 27, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (53, 53, 93, 102, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (54, 54, 138, 283, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (55, 55, 78, 102, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (56, 56, 173, 150, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (57, 57, 196, 367, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (58, 58, 131, 237, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (59, 59, 119, 344, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (60, 60, 106, 338, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (61, 61, 172, 24, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (62, NULL, 36, 239, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (63, 63, 48, 375, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (64, 64, 101, 97, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (65, 65, 27, 74, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (66, 66, 42, 77, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (67, 67, 15, 84, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (68, 68, 62, 283, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (69, 69, 126, 324, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (70, 70, 33, 163, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (71, 71, 198, 313, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (72, 72, 41, 113, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (73, 73, 31, 287, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (74, 74, 154, 86, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (75, 75, 120, 184, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (76, 76, 82, 198, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (77, 77, 163, 351, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (78, 78, 167, 195, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (79, 79, 61, 58, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (80, 80, 118, 181, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (81, 81, 183, 262, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (82, 82, 75, 326, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (83, 83, 154, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (84, 84, 13, 305, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (85, 85, 127, 41, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (86, 86, 136, 293, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (87, 87, 199, 90, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (88, 88, 13, 279, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (89, 89, 108, 221, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (90, 90, 140, 311, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (91, 91, 182, 15, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (92, 92, 182, 130, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (93, 93, 151, 284, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (94, 94, 66, 166, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (95, 95, 90, 42, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (96, 96, 139, 132, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (97, 97, 114, 363, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (98, 98, 19, 385, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (99, 99, 24, 26, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (100, 100, 181, 11, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (101, 101, 53, 355, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (102, 102, 160, 332, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (103, 103, 51, 149, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (104, 104, 32, 196, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (105, 105, 115, 22, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (106, 106, 173, 300, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (107, 107, 194, 79, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (108, 108, 6, 400, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (109, 109, 147, 273, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (110, 110, 91, 112, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (111, 111, 117, 38, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (112, 112, 118, 40, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (113, 113, 35, 301, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (114, 114, 123, 302, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (115, 115, 96, 19, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (116, 116, 6, 31, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (117, 117, 34, 313, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (118, 118, 160, 99, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (119, 119, 167, 155, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (120, 120, 137, 304, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (121, 121, 91, 54, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (122, 122, 166, 99, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (123, 123, 5, 292, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (124, 124, 157, 185, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (125, 125, 12, 366, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (126, 126, 189, 243, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (127, 127, 20, 6, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (128, 128, 82, 147, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (129, 129, 108, 147, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (130, 130, 51, 44, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (131, 131, 152, 34, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (132, 132, 178, 248, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (133, 133, 146, 25, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (134, 134, 59, 159, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (135, 135, 25, 236, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (136, 136, 1, 168, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (137, 137, 61, 31, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (138, 138, 2, 244, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (139, 139, 176, 132, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (140, 140, 21, 200, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (141, 141, 168, 348, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (142, 142, 168, 399, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (143, 143, 117, 297, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (144, 144, 153, 276, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (145, 145, 129, 342, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (146, 146, 118, 236, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (147, 147, 129, 260, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (148, 148, 99, 233, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (149, 149, 181, 239, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (150, 150, 169, 16, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (151, 151, 171, 241, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (152, 152, 153, 310, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (153, 153, 182, 273, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (154, 154, 63, 273, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (155, 155, 196, 91, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (156, 156, 166, 339, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (157, 157, 145, 62, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (158, 158, 180, 377, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (159, 159, 155, 352, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (160, 160, 75, 346, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (161, 161, 84, 82, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (162, 162, 164, 55, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (163, 163, 139, 197, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (164, 164, 180, 124, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (165, 165, 168, 255, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (166, 166, 36, 80, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (167, 167, 12, 179, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (168, 168, 154, 336, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (169, 169, 178, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (170, 170, 14, 18, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (171, 171, 165, 399, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (172, 172, 178, 324, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (173, 173, 197, 334, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (174, 174, 13, 329, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (175, 175, 59, 200, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (176, 176, 28, 361, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (177, 177, 22, 269, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (178, 178, 168, 242, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (179, 179, 32, 226, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (180, 180, 66, 144, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (181, NULL, 5, 305, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (182, 182, 45, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (183, 183, 147, 350, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (184, 184, 69, 195, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (185, 185, 105, 208, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (186, 186, 176, 190, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (187, 187, 29, 336, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (188, 188, 193, 380, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (189, 189, 185, 146, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (190, 190, 122, 363, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (191, 191, 136, 391, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (192, 192, 66, 135, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (193, 193, 31, 215, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (194, 194, 92, 95, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (195, 195, 18, 48, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (196, 196, 143, 58, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (197, 197, 76, 300, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (198, 198, 115, 390, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (199, 199, 27, 201, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (200, 200, 114, 15, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (201, 201, 46, 86, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (202, 202, 132, 291, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (203, 203, 181, 243, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (204, 204, 75, 94, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (205, 205, 140, 246, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (206, 206, 123, 195, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (207, 207, 89, 286, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (208, 208, 173, 221, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (209, 209, 134, 69, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (210, 210, 119, 193, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (211, 211, 9, 70, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (212, 212, 10, 317, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (213, 213, 175, 179, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (214, 214, 13, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (215, 215, 76, 135, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (216, 216, 125, 199, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (217, 217, 12, 86, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (218, 218, 89, 43, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (219, 219, 181, 310, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (220, 220, 50, 221, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (221, 221, 45, 400, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (222, 222, 139, 393, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (223, 223, 82, 138, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (224, 224, 82, 261, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (225, 225, 146, 354, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (226, 226, 142, 266, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (227, 227, 55, 121, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (228, NULL, 131, 20, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (229, 229, 134, 79, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (230, 230, 160, 342, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (231, 231, 63, 167, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (232, 232, 15, 75, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (233, 233, 107, 229, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (234, 234, 155, 83, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (235, 235, 101, 394, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (236, 236, 36, 224, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (237, 237, 137, 151, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (238, 238, 152, 321, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (239, 239, 135, 331, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (240, 240, 117, 157, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (241, 241, 75, 154, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (242, 242, 119, 272, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (243, 243, 164, 31, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (244, 244, 29, 37, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (245, 245, 77, 219, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (246, 246, 129, 318, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (247, 247, 25, 279, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (248, 248, 176, 136, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (249, 249, 200, 321, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (250, 250, 136, 302, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (251, 251, 118, 48, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (252, 252, 134, 88, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (253, 253, 91, 182, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (254, 254, 160, 56, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (255, 255, 53, 357, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (256, 256, 44, 261, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (257, 257, 89, 86, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (258, 258, 112, 286, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (259, 259, 124, 194, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (260, 260, 195, 111, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (261, 261, 116, 163, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (262, 262, 171, 50, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (263, 263, 142, 253, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (264, 264, 199, 255, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (265, 265, 123, 275, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (266, 266, 132, 304, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (267, 267, 186, 303, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (268, 268, 141, 261, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (269, 269, 49, 391, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (270, 270, 64, 392, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (271, 271, 22, 238, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (272, 272, 150, 101, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (273, 273, 185, 148, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (274, 274, 68, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (275, 275, 56, 277, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (276, 276, 90, 328, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (277, 277, 98, 63, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (278, 278, 69, 74, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (279, 279, 72, 10, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (280, 280, 150, 253, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (281, 281, 140, 52, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (282, 282, 54, 227, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (283, 283, 101, 153, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (284, 284, 75, 141, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (285, NULL, 60, 296, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (286, 286, 98, 207, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (287, 287, 127, 330, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (288, 288, 84, 391, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (289, NULL, 149, 183, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (290, 290, 194, 135, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (291, 291, 51, 389, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (292, 292, 134, 364, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (293, 293, 40, 153, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (294, 294, 150, 58, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (295, 295, 8, 114, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (296, 296, 153, 215, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (297, 297, 194, 313, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (298, 298, 124, 315, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (299, 299, 21, 228, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (300, 300, 186, 103, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (301, 301, 27, 197, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (302, 302, 178, 192, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (303, 303, 73, 266, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (304, 304, 5, 367, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (305, 305, 63, 222, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (306, 306, 30, 319, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (307, 307, 128, 8, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (308, 308, 109, 257, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (309, 309, 143, 205, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (310, 310, 198, 102, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (311, 311, 27, 369, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (312, 312, 26, 211, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (313, 313, 48, 185, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (314, 314, 98, 263, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (315, 315, 190, 359, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (316, 316, 99, 72, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (317, 317, 100, 1, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (318, 318, 105, 252, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (319, 319, 186, 165, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (320, 320, 152, 347, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (321, 321, 24, 244, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (322, 322, 109, 221, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (323, 323, 45, 70, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (324, 324, 18, 182, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (325, 325, 64, 259, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (326, 326, 137, 246, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (327, 327, 112, 50, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (328, 328, 40, 60, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (329, 329, 45, 128, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (330, 330, 174, 359, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (331, 331, 1, 12, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (332, 332, 5, 374, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (333, 333, 5, 20, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (334, 334, 117, 317, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (335, 335, 179, 223, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (336, 336, 92, 102, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (337, 337, 81, 6, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (338, 338, 192, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (339, 339, 94, 9, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (340, 340, 88, 316, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (341, 341, 48, 286, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (342, 342, 79, 157, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (343, 343, 44, 131, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (344, 344, 31, 231, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (345, 345, 142, 102, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (346, 346, 56, 311, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (347, 347, 111, 107, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (348, 348, 93, 183, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (349, 349, 185, 136, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (350, 350, 159, 95, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (351, 351, 20, 266, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (352, 352, 9, 11, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (353, 353, 185, 318, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (354, 354, 84, 69, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (355, 355, 67, 205, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (356, 356, 188, 379, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (357, 357, 130, 373, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (358, 358, 150, 240, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (359, 359, 198, 281, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (360, 360, 9, 327, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (361, 361, 147, 206, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (362, NULL, 123, 3, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (363, 363, 125, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (364, 364, 116, 112, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (365, 365, 51, 87, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (366, 366, 188, 24, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (367, 367, 55, 365, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (368, 368, 187, 250, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (369, 369, 45, 6, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (370, 370, 17, 166, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (371, 371, 113, 162, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (372, 372, 57, 212, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (373, 373, 168, 163, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (374, 374, 185, 236, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (375, 375, 147, 183, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (376, 376, 168, 228, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (377, 377, 89, 372, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (378, 378, 16, 328, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (379, 379, 103, 202, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (380, 380, 57, 299, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (381, 381, 79, 328, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (382, 382, 96, 209, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (383, 383, 83, 124, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (384, 384, 117, 267, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (385, 385, 62, 174, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (386, 386, 56, 137, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (387, 387, 121, 371, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (388, 388, 136, 11, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (389, 389, 54, 181, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (390, 390, 2, 323, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (391, 391, 58, 262, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (392, 392, 40, 346, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (393, 393, 181, 388, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (394, 394, 7, 216, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (395, 395, 181, 202, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (396, 396, 200, 51, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (397, 397, 182, 330, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (398, 398, 36, 130, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (399, 399, 89, 115, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (400, 400, 57, 64, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (401, 401, 169, 42, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (402, 402, 160, 88, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (403, 403, 128, 369, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (404, 404, 182, 213, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (405, 405, 58, 36, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (406, 406, 22, 49, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (407, 407, 199, 139, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (408, 408, 4, 244, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (409, 409, 80, 63, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (410, 410, 69, 381, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (411, 411, 158, 49, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (412, 412, 159, 396, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (413, 413, 45, 92, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (414, 414, 130, 99, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (415, 415, 29, 147, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (416, 416, 151, 3, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (417, 417, 100, 164, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (418, 418, 174, 44, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (419, 419, 8, 391, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (420, 420, 139, 376, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (421, 421, 164, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (422, 422, 7, 219, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (423, 423, 96, 138, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (424, 424, 98, 75, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (425, 425, 191, 326, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (426, 426, 2, 37, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (427, 427, 28, 17, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (428, 428, 87, 48, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (429, 429, 13, 276, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (430, 430, 14, 275, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (431, 431, 62, 164, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (432, 432, 130, 188, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (433, 433, 102, 42, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (434, 434, 184, 1, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (435, 435, 47, 304, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (436, 436, 199, 286, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (437, 437, 77, 98, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (438, 438, 190, 65, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (439, 439, 133, 321, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (440, 440, 65, 16, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (441, 441, 60, 222, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (442, 442, 12, 284, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (443, 443, 61, 13, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (444, 444, 120, 260, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (445, 445, 45, 230, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (446, 446, 175, 355, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (447, 447, 127, 349, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (448, 448, 150, 155, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (449, 449, 145, 28, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (450, 450, 58, 357, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (451, 451, 100, 60, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (452, 452, 4, 361, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (453, 453, 192, 369, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (454, 454, 90, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (455, 455, 94, 201, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (456, 456, 113, 140, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (457, 457, 14, 145, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (458, 458, 159, 276, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (459, 459, 31, 48, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (460, 460, 171, 54, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (461, 461, 129, 74, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (462, 462, 104, 260, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (463, 463, 55, 196, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (464, 464, 80, 314, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (465, 465, 77, 390, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (466, 466, 39, 292, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (467, 467, 48, 310, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (468, 468, 151, 178, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (469, 469, 163, 168, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (470, 470, 151, 132, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (471, 471, 37, 108, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (472, 472, 73, 167, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (473, 473, 11, 293, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (474, 474, 192, 288, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (475, 475, 171, 257, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (476, 476, 15, 349, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (477, 477, 192, 158, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (478, 478, 57, 157, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (479, 479, 64, 361, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (480, 480, 22, 11, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (481, 481, 151, 350, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (482, 482, 163, 159, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (483, 483, 46, 118, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (484, 484, 35, 205, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (485, 485, 42, 165, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (486, 486, 200, 107, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (487, 487, 100, 219, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (488, 488, 122, 161, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (489, 489, 31, 135, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (490, 490, 119, 5, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (491, 491, 34, 395, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (492, 492, 46, 234, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (493, 493, 180, 329, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (494, 494, 146, 88, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (495, 495, 64, 279, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (496, 496, 36, 53, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (497, 497, 109, 388, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (498, 498, 186, 57, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (499, 499, 36, 21, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (500, 500, 185, 117, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (501, 501, 40, 66, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (502, 502, 186, 272, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (503, 503, 40, 206, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (504, 504, 168, 398, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (505, 505, 138, 388, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (506, 506, 156, 33, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (507, 507, 86, 280, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (508, 508, 24, 281, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (509, 509, 128, 340, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (510, 510, 8, 342, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (511, 511, 124, 251, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (512, 512, 64, 338, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (513, 513, 137, 95, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (514, 514, 22, 175, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (515, 515, 76, 370, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (516, 516, 135, 287, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (517, 517, 2, 285, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (518, 518, 124, 174, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (519, 519, 21, 106, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (520, 520, 1, 268, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (521, 521, 180, 360, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (522, 522, 48, 195, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (523, 523, 97, 61, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (524, 524, 15, 45, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (525, 525, 84, 96, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (526, 526, 75, 207, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (527, 527, 136, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (528, 528, 124, 368, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (529, 529, 149, 256, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (530, 530, 73, 137, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (531, 531, 164, 35, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (532, 532, 178, 100, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (533, 533, 6, 155, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (534, 534, 146, 325, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (535, 535, 83, 355, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (536, 536, 75, 290, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (537, 537, 113, 247, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (538, 538, 62, 65, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (539, 539, 131, 335, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (540, 540, 45, 366, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (541, 541, 73, 73, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (542, 542, 197, 20, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (543, 543, 144, 188, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (544, 544, 117, 202, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (545, 545, 14, 124, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (546, 546, 133, 186, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (547, 547, 167, 389, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (548, 548, 100, 325, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (549, 549, 163, 54, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (550, 550, 85, 304, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (551, 551, 6, 69, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (552, 552, 86, 366, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (553, 553, 121, 251, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (554, 554, 157, 287, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (555, 555, 79, 357, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (556, 556, 102, 280, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (557, 557, 150, 47, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (558, 558, 38, 57, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (559, 559, 43, 187, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (560, 560, 56, 47, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (561, 561, 41, 257, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (562, 562, 77, 201, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (563, 563, 181, 87, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (564, 564, 60, 262, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (565, 565, 73, 82, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (566, 566, 151, 305, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (567, 567, 63, 57, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (568, 568, 98, 241, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (569, 569, 63, 27, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (570, 570, 100, 301, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (571, 571, 94, 222, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (572, 572, 178, 270, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (573, 573, 84, 86, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (574, 574, 178, 253, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (575, 575, 110, 224, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (576, 576, 199, 306, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (577, 577, 48, 244, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (578, 578, 86, 100, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (579, 579, 150, 238, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (580, 580, 139, 53, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (581, 581, 184, 105, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (582, 582, 119, 216, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (583, 583, 162, 165, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (584, 584, 39, 347, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (585, 585, 86, 202, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (586, 586, 178, 143, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (587, 587, 24, 79, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (588, 588, 75, 107, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (589, 589, 25, 182, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (590, 590, 92, 306, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (591, 591, 160, 370, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (592, 592, 56, 302, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (593, 593, 98, 180, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (594, 594, 103, 381, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (595, 595, 58, 323, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (596, 596, 192, 8, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (597, 597, 135, 169, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (598, NULL, 165, 69, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (599, 599, 140, 197, NULL);
INSERT INTO public.cart (cart_id, purchase_invoice_id, discount_id, customer_id, total_price) VALUES (600, 600, 87, 346, NULL);


                                                                                              3392.dat                                                                                            0000600 0004000 0002000 00000306500 14437437366 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (1, 2, 118, 994);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (2, 10, 114, 74);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (3, 9, 173, 807);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (4, 10, 27, 597);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (5, 1, 433, 10);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (6, 5, 280, 694);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (7, 3, 36, 315);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (8, 5, 501, 612);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (9, 10, 454, 80);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (10, 8, 304, 688);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (11, 1, 578, 289);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (12, 8, 369, 297);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (13, 6, 133, 935);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (14, 5, 133, 769);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (15, 6, 447, 587);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (16, 10, 480, 670);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (17, 6, 75, 866);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (18, 1, 8, 149);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (19, 7, 287, 900);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (20, 8, 38, 500);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (21, 9, 106, 827);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (22, 1, 43, 593);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (23, 6, 237, 558);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (24, 4, 407, 200);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (25, 9, 70, 836);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (26, 1, 431, 221);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (27, 6, 261, 289);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (28, 5, 450, 42);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (29, 10, 24, 123);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (30, 3, 190, 413);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (31, 4, 226, 572);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (32, 10, 330, 760);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (33, 7, 243, 983);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (34, 8, 427, 941);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (35, 10, 526, 395);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (36, 4, 231, 212);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (37, 9, 26, 552);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (38, 7, 562, 403);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (39, 4, 52, 798);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (40, 3, 503, 700);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (41, 5, 409, 583);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (42, 6, 529, 489);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (43, 8, 197, 518);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (44, 4, 7, 641);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (45, 2, 80, 154);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (46, 5, 310, 976);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (47, 1, 71, 53);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (48, 1, 566, 631);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (49, 5, 253, 624);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (50, 4, 294, 490);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (51, 4, 456, 965);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (52, 4, 531, 369);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (53, 2, 76, 225);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (54, 8, 322, 552);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (55, 10, 73, 615);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (56, 2, 388, 415);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (57, 1, 390, 665);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (58, 5, 8, 950);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (59, 1, 505, 413);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (60, 8, 196, 424);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (61, 3, 285, 211);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (62, 3, 170, 333);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (63, 4, 573, 577);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (64, 6, 449, 211);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (65, 3, 7, 29);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (66, 6, 73, 503);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (67, 2, 565, 99);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (68, 4, 242, 256);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (69, 10, 269, 642);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (70, 10, 462, 311);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (71, 7, 280, 453);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (72, 6, 438, 366);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (73, 9, 524, 169);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (74, 8, 557, 524);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (75, 9, 479, 49);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (76, 10, 169, 403);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (77, 5, 48, 888);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (78, 8, 403, 764);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (79, 8, 126, 606);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (80, 8, 102, 341);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (81, 5, 406, 220);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (82, 4, 547, 360);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (83, 9, 333, 903);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (84, 3, 461, 431);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (85, 7, 186, 460);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (86, 6, 415, 614);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (87, 4, 565, 405);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (88, 4, 443, 822);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (89, 2, 382, 23);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (90, 7, 266, 216);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (91, 7, 352, 175);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (92, 9, 9, 103);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (93, 9, 446, 717);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (94, 4, 506, 151);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (95, 7, 221, 448);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (96, 3, 589, 749);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (97, 1, 233, 102);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (98, 7, 249, 816);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (99, 4, 260, 93);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (100, 4, 213, 162);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (101, 9, 164, 582);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (102, 1, 594, 49);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (103, 7, 30, 486);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (104, 3, 149, 433);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (105, 6, 47, 977);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (106, 5, 55, 678);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (107, 10, 233, 35);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (108, 5, 572, 319);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (109, 1, 276, 317);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (110, 7, 560, 748);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (111, 4, 235, 170);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (112, 6, 22, 761);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (113, 1, 298, 307);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (114, 5, 344, 296);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (115, 2, 224, 386);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (116, 2, 496, 332);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (117, 6, 474, 817);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (118, 6, 542, 836);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (119, 5, 193, 434);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (120, 2, 63, 472);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (121, 4, 350, 739);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (122, 9, 33, 235);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (123, 9, 151, 276);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (124, 1, 162, 695);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (125, 1, 477, 518);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (126, 3, 336, 186);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (127, 10, 316, 342);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (128, 5, 527, 104);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (129, 6, 582, 6);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (130, 5, 157, 555);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (131, 2, 529, 836);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (132, 3, 578, 133);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (133, 7, 486, 33);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (134, 4, 583, 821);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (135, 4, 331, 264);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (136, 3, 230, 324);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (137, 2, 393, 237);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (138, 7, 518, 793);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (139, 1, 93, 190);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (140, 10, 138, 138);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (141, 2, 432, 767);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (142, 10, 46, 19);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (143, 8, 518, 822);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (144, 8, 509, 523);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (145, 7, 17, 719);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (146, 7, 23, 754);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (147, 7, 371, 821);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (148, 3, 456, 303);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (149, 5, 169, 467);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (150, 6, 586, 290);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (151, 6, 381, 522);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (152, 1, 274, 802);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (153, 5, 410, 504);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (154, 5, 447, 60);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (155, 9, 221, 690);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (156, 5, 29, 402);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (157, 7, 440, 625);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (158, 2, 466, 304);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (159, 1, 130, 911);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (160, 6, 473, 357);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (161, 7, 352, 279);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (162, 5, 144, 796);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (163, 10, 243, 198);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (164, 5, 283, 859);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (165, 3, 326, 614);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (166, 9, 413, 617);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (167, 4, 22, 77);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (168, 10, 74, 653);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (169, 3, 439, 733);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (170, 6, 596, 844);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (171, 8, 34, 768);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (172, 8, 253, 208);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (173, 7, 413, 333);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (174, 4, 49, 800);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (175, 1, 568, 232);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (176, 2, 144, 729);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (177, 2, 263, 53);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (178, 1, 397, 615);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (179, 7, 93, 322);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (180, 7, 444, 282);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (181, 3, 555, 93);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (182, 4, 240, 623);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (183, 3, 244, 447);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (184, 2, 282, 153);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (185, 2, 327, 977);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (186, 9, 255, 956);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (187, 9, 64, 571);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (188, 7, 328, 485);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (189, 6, 40, 371);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (190, 1, 197, 120);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (191, 1, 110, 225);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (192, 9, 532, 474);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (193, 5, 211, 348);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (194, 3, 19, 483);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (195, 9, 81, 911);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (196, 10, 231, 799);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (197, 8, 544, 563);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (198, 5, 236, 981);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (199, 8, 42, 632);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (200, 7, 245, 211);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (201, 4, 364, 172);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (202, 9, 136, 551);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (203, 4, 108, 740);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (204, 4, 101, 856);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (205, 4, 217, 644);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (206, 9, 218, 953);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (207, 7, 3, 222);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (208, 6, 192, 751);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (209, 4, 574, 896);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (210, 10, 357, 712);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (211, 8, 600, 332);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (212, 5, 510, 358);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (213, 6, 225, 204);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (214, 10, 306, 395);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (215, 4, 62, 359);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (216, 4, 269, 126);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (217, 8, 317, 542);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (218, 5, 368, 412);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (219, 7, 17, 668);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (220, 3, 128, 954);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (221, 8, 340, 621);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (222, 3, 65, 439);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (223, 9, 489, 184);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (224, 6, 249, 655);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (225, 8, 7, 98);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (226, 5, 212, 341);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (227, 7, 509, 882);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (228, 9, 565, 58);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (229, 1, 127, 196);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (230, 1, 385, 417);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (231, 9, 303, 831);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (232, 2, 74, 384);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (233, 5, 260, 70);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (234, 7, 386, 130);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (235, 4, 245, 576);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (236, 2, 287, 268);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (237, 5, 479, 853);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (238, 6, 564, 923);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (239, 3, 335, 56);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (240, 3, 467, 584);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (241, 2, 309, 1000);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (242, 2, 315, 437);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (243, 7, 236, 284);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (244, 6, 507, 504);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (245, 7, 218, 274);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (246, 8, 255, 823);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (247, 6, 449, 768);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (248, 9, 445, 317);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (249, 4, 166, 497);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (250, 8, 577, 188);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (251, 8, 337, 377);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (252, 4, 423, 847);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (253, 7, 496, 937);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (254, 7, 319, 137);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (255, 1, 338, 767);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (256, 6, 553, 456);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (257, 1, 499, 478);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (258, 6, 79, 839);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (259, 8, 29, 763);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (260, 4, 48, 568);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (261, 7, 407, 472);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (262, 5, 526, 629);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (263, 10, 435, 974);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (264, 2, 23, 642);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (265, 4, 451, 182);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (266, 2, 5, 253);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (267, 7, 167, 923);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (268, 4, 407, 883);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (269, 5, 469, 353);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (270, 6, 467, 936);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (271, 1, 361, 538);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (272, 3, 525, 593);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (273, 1, 185, 827);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (274, 8, 379, 102);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (275, 5, 147, 207);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (276, 6, 365, 798);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (277, 7, 426, 383);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (278, 7, 295, 446);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (279, 4, 66, 905);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (280, 9, 210, 726);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (281, 5, 279, 190);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (282, 8, 175, 465);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (283, 10, 509, 150);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (284, 1, 27, 925);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (285, 1, 250, 572);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (286, 10, 406, 977);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (287, 3, 287, 499);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (288, 4, 521, 409);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (289, 2, 363, 247);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (290, 8, 105, 747);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (291, 2, 569, 942);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (292, 2, 545, 221);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (293, 9, 359, 736);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (294, 2, 72, 404);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (295, 4, 191, 556);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (296, 3, 393, 661);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (297, 4, 70, 842);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (298, 5, 295, 343);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (299, 6, 531, 282);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (300, 3, 392, 271);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (301, 7, 581, 305);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (302, 9, 578, 499);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (303, 2, 273, 42);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (304, 9, 542, 836);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (305, 4, 293, 42);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (306, 3, 520, 128);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (307, 4, 558, 12);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (308, 2, 63, 615);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (309, 7, 59, 244);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (310, 7, 453, 464);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (311, 9, 484, 392);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (312, 3, 505, 935);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (313, 8, 197, 515);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (314, 7, 230, 840);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (315, 8, 10, 918);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (316, 5, 410, 909);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (317, 8, 21, 33);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (318, 9, 109, 559);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (319, 2, 285, 727);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (320, 1, 555, 771);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (321, 9, 346, 418);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (322, 1, 275, 321);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (323, 3, 463, 89);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (324, 5, 206, 660);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (325, 7, 385, 777);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (326, 4, 327, 901);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (327, 10, 505, 741);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (328, 2, 459, 804);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (329, 10, 27, 876);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (330, 3, 513, 891);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (331, 6, 157, 864);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (332, 9, 453, 584);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (333, 5, 319, 932);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (334, 6, 127, 733);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (335, 2, 76, 891);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (336, 9, 461, 481);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (337, 2, 403, 456);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (338, 9, 443, 142);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (339, 2, 265, 442);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (340, 9, 475, 844);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (341, 3, 146, 667);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (342, 2, 464, 796);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (343, 8, 319, 20);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (344, 5, 260, 835);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (345, 10, 244, 76);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (346, 2, 564, 703);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (347, 10, 218, 118);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (348, 3, 396, 833);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (349, 5, 537, 481);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (350, 8, 562, 525);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (351, 6, 148, 988);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (352, 9, 60, 767);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (353, 5, 60, 249);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (354, 6, 260, 76);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (355, 3, 517, 388);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (356, 2, 138, 902);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (357, 9, 495, 81);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (358, 6, 515, 926);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (359, 6, 439, 210);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (360, 10, 436, 843);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (361, 10, 349, 851);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (362, 4, 159, 185);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (363, 6, 193, 467);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (364, 5, 320, 558);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (365, 7, 34, 662);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (366, 8, 254, 663);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (367, 6, 110, 472);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (368, 6, 534, 10);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (369, 10, 362, 951);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (370, 6, 363, 597);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (371, 8, 266, 552);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (372, 1, 523, 211);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (373, 1, 302, 29);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (374, 4, 308, 299);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (375, 3, 121, 786);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (376, 9, 145, 797);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (377, 1, 3, 305);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (378, 3, 462, 522);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (379, 2, 155, 558);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (380, 2, 90, 545);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (381, 2, 123, 240);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (382, 3, 544, 652);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (383, 9, 381, 195);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (384, 10, 12, 138);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (385, 9, 422, 120);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (386, 9, 518, 750);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (387, 9, 594, 701);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (388, 4, 209, 275);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (389, 10, 181, 703);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (390, 5, 41, 104);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (391, 4, 395, 882);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (392, 7, 127, 267);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (393, 3, 530, 730);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (394, 9, 43, 741);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (395, 8, 369, 508);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (396, 6, 363, 375);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (397, 1, 251, 361);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (398, 1, 495, 207);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (399, 9, 416, 615);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (400, 5, 109, 481);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (401, 6, 272, 352);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (402, 8, 245, 625);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (403, 7, 315, 90);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (404, 10, 212, 107);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (405, 8, 273, 567);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (406, 10, 24, 217);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (407, 2, 521, 930);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (408, 2, 183, 2);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (409, 1, 37, 713);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (410, 3, 211, 413);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (411, 2, 582, 894);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (412, 4, 250, 401);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (413, 7, 544, 738);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (414, 7, 65, 154);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (415, 3, 170, 103);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (416, 6, 202, 662);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (417, 5, 408, 268);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (418, 5, 481, 431);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (419, 6, 197, 682);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (420, 10, 542, 394);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (421, 2, 107, 430);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (422, 7, 557, 815);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (423, 4, 535, 916);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (424, 7, 148, 171);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (425, 7, 309, 394);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (426, 2, 529, 329);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (427, 7, 251, 18);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (428, 10, 334, 953);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (429, 2, 366, 949);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (430, 4, 528, 600);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (431, 8, 323, 786);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (432, 9, 213, 388);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (433, 10, 497, 559);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (434, 10, 423, 36);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (435, 3, 64, 392);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (436, 1, 571, 842);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (437, 7, 357, 886);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (438, 1, 252, 356);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (439, 2, 218, 746);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (440, 10, 556, 556);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (441, 3, 341, 313);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (442, 2, 195, 954);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (443, 4, 580, 610);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (444, 10, 392, 812);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (445, 1, 115, 566);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (446, 1, 347, 637);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (447, 9, 282, 436);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (448, 7, 254, 214);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (449, 10, 132, 888);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (450, 5, 279, 762);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (451, 2, 72, 668);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (452, 5, 410, 722);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (453, 9, 461, 247);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (454, 5, 171, 596);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (455, 8, 15, 233);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (456, 3, 402, 80);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (457, 9, 145, 400);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (458, 3, 276, 160);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (459, 2, 39, 975);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (460, 10, 279, 160);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (461, 7, 223, 472);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (462, 7, 174, 717);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (463, 1, 288, 244);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (464, 6, 290, 329);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (465, 1, 69, 99);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (466, 6, 344, 643);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (467, 2, 364, 981);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (468, 6, 410, 638);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (469, 8, 123, 67);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (470, 2, 199, 79);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (471, 9, 430, 584);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (472, 4, 497, 254);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (473, 6, 286, 735);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (474, 5, 464, 558);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (475, 10, 505, 991);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (476, 9, 236, 502);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (477, 9, 388, 345);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (478, 4, 241, 341);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (479, 8, 486, 301);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (480, 6, 289, 433);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (481, 3, 2, 670);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (482, 2, 98, 962);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (483, 4, 192, 230);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (484, 5, 115, 476);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (485, 2, 507, 74);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (486, 3, 471, 589);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (487, 3, 480, 687);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (488, 7, 531, 98);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (489, 1, 254, 314);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (490, 4, 91, 19);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (491, 9, 237, 672);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (492, 7, 402, 785);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (493, 7, 527, 796);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (494, 3, 237, 691);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (495, 9, 252, 256);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (496, 7, 220, 138);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (497, 1, 577, 757);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (498, 1, 306, 780);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (499, 8, 10, 608);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (500, 10, 533, 303);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (501, 5, 494, 719);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (502, 3, 268, 268);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (503, 3, 216, 303);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (504, 2, 466, 276);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (505, 1, 290, 370);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (506, 4, 492, 538);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (507, 1, 416, 902);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (508, 7, 120, 477);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (509, 10, 16, 76);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (510, 9, 547, 202);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (511, 5, 193, 569);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (512, 6, 329, 842);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (513, 5, 416, 481);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (514, 5, 234, 610);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (515, 10, 256, 151);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (516, 7, 63, 169);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (517, 9, 343, 717);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (518, 5, 587, 6);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (519, 10, 362, 181);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (520, 3, 69, 709);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (521, 5, 51, 853);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (522, 4, 476, 678);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (523, 5, 419, 604);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (524, 9, 325, 548);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (525, 2, 119, 148);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (526, 10, 369, 739);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (527, 1, 456, 223);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (528, 7, 254, 791);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (529, 2, 349, 298);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (530, 2, 67, 516);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (531, 5, 588, 349);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (532, 6, 10, 373);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (533, 9, 268, 877);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (534, 7, 165, 409);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (535, 2, 301, 142);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (536, 7, 600, 626);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (537, 3, 237, 17);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (538, 8, 49, 479);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (539, 1, 178, 377);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (540, 1, 512, 167);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (541, 9, 590, 602);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (542, 2, 13, 646);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (543, 1, 48, 48);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (544, 3, 253, 276);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (545, 3, 214, 98);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (546, 1, 423, 976);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (547, 5, 27, 518);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (548, 3, 473, 561);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (549, 9, 141, 763);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (550, 10, 326, 253);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (551, 4, 513, 29);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (552, 9, 327, 59);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (553, 7, 310, 181);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (554, 1, 126, 82);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (555, 5, 100, 59);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (556, 6, 123, 396);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (557, 3, 397, 907);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (558, 4, 472, 966);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (559, 7, 297, 65);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (560, 8, 515, 295);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (561, 2, 335, 447);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (562, 4, 256, 241);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (563, 6, 320, 626);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (564, 10, 527, 975);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (565, 8, 195, 504);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (566, 6, 77, 918);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (567, 4, 58, 399);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (568, 1, 191, 664);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (569, 5, 402, 25);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (570, 3, 572, 591);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (571, 9, 122, 579);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (572, 7, 352, 868);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (573, 3, 412, 878);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (574, 2, 585, 705);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (575, 2, 66, 753);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (576, 10, 541, 55);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (577, 9, 39, 277);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (578, 7, 209, 566);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (579, 4, 468, 368);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (580, 4, 585, 881);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (581, 8, 25, 74);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (582, 9, 299, 835);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (583, 2, 35, 423);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (584, 8, 121, 745);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (585, 2, 6, 761);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (586, 10, 20, 44);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (587, 6, 371, 704);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (588, 1, 543, 517);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (589, 3, 226, 168);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (590, 10, 32, 601);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (591, 3, 166, 259);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (592, 7, 217, 311);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (593, 8, 168, 979);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (594, 7, 397, 348);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (595, 4, 484, 469);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (596, 6, 426, 467);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (597, 3, 443, 954);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (598, 9, 560, 48);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (599, 4, 121, 994);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (600, 10, 493, 224);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (601, 9, 413, 931);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (602, 5, 65, 149);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (603, 8, 267, 354);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (604, 3, 266, 284);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (605, 6, 441, 66);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (606, 4, 119, 171);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (607, 8, 405, 507);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (608, 8, 377, 374);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (609, 7, 313, 136);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (610, 5, 143, 228);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (611, 7, 530, 770);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (612, 2, 210, 106);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (613, 7, 117, 28);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (614, 6, 441, 872);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (615, 5, 457, 903);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (616, 2, 9, 180);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (617, 5, 481, 586);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (618, 8, 227, 457);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (619, 8, 408, 967);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (620, 5, 501, 792);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (621, 4, 470, 190);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (622, 4, 268, 886);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (623, 10, 427, 849);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (624, 6, 297, 673);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (625, 8, 569, 177);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (626, 1, 334, 313);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (627, 9, 232, 105);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (628, 4, 78, 121);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (629, 1, 592, 22);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (630, 6, 284, 674);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (631, 2, 244, 949);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (632, 9, 239, 867);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (633, 7, 17, 189);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (634, 2, 49, 17);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (635, 5, 225, 165);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (636, 6, 347, 10);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (637, 5, 510, 963);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (638, 2, 449, 652);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (639, 5, 187, 577);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (640, 7, 335, 849);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (641, 6, 415, 65);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (642, 9, 37, 160);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (643, 7, 239, 109);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (644, 7, 507, 896);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (645, 10, 225, 260);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (646, 9, 540, 578);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (647, 10, 30, 43);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (648, 3, 285, 188);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (649, 2, 20, 936);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (650, 6, 192, 183);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (651, 5, 287, 154);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (652, 7, 440, 754);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (653, 1, 119, 919);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (654, 9, 512, 328);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (655, 1, 58, 811);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (656, 8, 464, 334);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (657, 7, 93, 24);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (658, 2, 320, 28);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (659, 4, 486, 436);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (660, 6, 37, 528);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (661, 3, 189, 591);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (662, 9, 123, 323);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (663, 2, 349, 956);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (664, 9, 242, 212);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (665, 7, 477, 468);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (666, 3, 60, 751);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (667, 1, 147, 321);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (668, 5, 163, 29);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (669, 9, 235, 202);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (670, 6, 509, 887);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (671, 4, 412, 57);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (672, 6, 28, 538);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (673, 2, 15, 463);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (674, 1, 328, 193);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (675, 6, 138, 925);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (676, 4, 383, 924);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (677, 4, 45, 5);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (678, 9, 44, 101);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (679, 2, 569, 470);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (680, 4, 584, 49);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (681, 10, 423, 115);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (682, 9, 46, 438);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (683, 5, 157, 78);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (684, 1, 215, 351);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (685, 4, 80, 806);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (686, 3, 407, 145);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (687, 1, 253, 460);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (688, 1, 598, 796);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (689, 10, 53, 774);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (690, 7, 468, 8);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (691, 1, 113, 431);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (692, 4, 576, 512);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (693, 6, 301, 746);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (694, 10, 525, 612);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (695, 6, 262, 346);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (696, 7, 554, 265);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (697, 7, 555, 371);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (698, 10, 164, 183);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (699, 7, 592, 576);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (700, 10, 564, 821);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (701, 9, 70, 335);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (702, 1, 427, 169);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (703, 4, 117, 355);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (704, 2, 421, 758);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (705, 6, 232, 599);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (706, 6, 326, 502);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (707, 10, 475, 953);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (708, 7, 217, 639);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (709, 1, 497, 931);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (710, 4, 573, 483);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (711, 3, 508, 468);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (712, 10, 189, 503);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (713, 8, 316, 805);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (714, 8, 463, 589);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (715, 5, 188, 286);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (716, 6, 484, 632);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (717, 8, 38, 400);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (718, 1, 323, 748);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (719, 2, 395, 145);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (720, 5, 9, 619);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (721, 5, 532, 560);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (722, 3, 521, 237);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (723, 4, 126, 724);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (724, 3, 542, 609);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (725, 3, 436, 969);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (726, 8, 30, 684);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (727, 10, 48, 323);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (728, 8, 301, 630);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (729, 6, 289, 813);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (730, 4, 63, 26);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (731, 2, 529, 646);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (732, 10, 508, 547);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (733, 4, 463, 276);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (734, 7, 118, 682);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (735, 5, 253, 454);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (736, 9, 312, 810);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (737, 5, 272, 883);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (738, 6, 87, 780);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (739, 6, 440, 314);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (740, 3, 35, 891);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (741, 4, 451, 612);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (742, 6, 228, 742);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (743, 4, 34, 856);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (744, 2, 499, 88);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (745, 9, 544, 266);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (746, 4, 446, 565);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (747, 8, 250, 348);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (748, 5, 283, 209);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (749, 2, 439, 434);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (750, 3, 472, 501);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (751, 2, 460, 175);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (752, 8, 337, 651);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (753, 3, 373, 734);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (754, 3, 441, 168);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (755, 9, 368, 737);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (756, 8, 99, 111);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (757, 9, 304, 233);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (758, 5, 435, 875);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (759, 1, 352, 812);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (760, 2, 513, 654);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (761, 6, 286, 943);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (762, 7, 144, 486);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (763, 5, 277, 713);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (764, 10, 172, 420);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (765, 10, 527, 468);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (766, 10, 487, 800);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (767, 6, 4, 779);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (768, 4, 572, 928);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (769, 6, 216, 286);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (770, 10, 288, 941);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (771, 1, 528, 636);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (772, 6, 310, 65);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (773, 3, 103, 418);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (774, 5, 224, 432);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (775, 6, 127, 210);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (776, 3, 393, 433);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (777, 8, 301, 346);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (778, 10, 78, 19);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (779, 6, 531, 465);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (780, 1, 96, 476);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (781, 7, 469, 278);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (782, 2, 157, 254);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (783, 1, 62, 493);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (784, 7, 471, 583);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (785, 10, 62, 557);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (786, 3, 350, 148);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (787, 8, 479, 710);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (788, 9, 149, 952);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (789, 7, 219, 604);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (790, 7, 536, 842);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (791, 8, 424, 281);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (792, 9, 116, 497);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (793, 4, 340, 334);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (794, 9, 305, 479);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (795, 3, 315, 56);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (796, 7, 213, 425);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (797, 10, 206, 260);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (798, 2, 523, 993);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (799, 8, 10, 530);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (800, 6, 399, 16);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (801, 6, 176, 637);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (802, 5, 126, 342);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (803, 2, 296, 250);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (804, 3, 345, 324);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (805, 7, 102, 653);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (806, 8, 127, 549);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (807, 9, 340, 382);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (808, 1, 545, 781);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (809, 8, 530, 172);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (810, 10, 200, 567);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (811, 2, 442, 79);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (812, 7, 255, 879);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (813, 4, 402, 916);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (814, 8, 134, 47);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (815, 4, 138, 891);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (816, 5, 29, 114);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (817, 5, 406, 764);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (818, 1, 284, 605);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (819, 4, 86, 685);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (820, 3, 552, 281);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (821, 3, 433, 627);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (822, 9, 149, 33);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (823, 2, 467, 91);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (824, 5, 191, 158);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (825, 10, 6, 602);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (826, 8, 598, 934);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (827, 3, 114, 138);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (828, 3, 511, 669);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (829, 6, 189, 109);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (830, 10, 444, 906);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (831, 2, 460, 64);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (832, 3, 290, 384);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (833, 3, 134, 833);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (834, 9, 76, 254);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (835, 2, 449, 478);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (836, 4, 179, 115);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (837, 5, 400, 410);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (838, 3, 131, 299);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (839, 4, 483, 355);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (840, 3, 149, 267);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (841, 8, 344, 191);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (842, 7, 154, 842);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (843, 1, 453, 681);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (844, 7, 107, 278);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (845, 4, 523, 891);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (846, 10, 382, 445);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (847, 7, 97, 588);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (848, 7, 415, 84);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (849, 8, 518, 607);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (850, 6, 91, 171);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (851, 8, 209, 371);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (852, 10, 131, 20);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (853, 5, 93, 235);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (854, 7, 424, 100);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (855, 9, 564, 796);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (856, 2, 530, 440);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (857, 4, 65, 365);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (858, 4, 60, 171);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (859, 3, 446, 115);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (860, 3, 546, 591);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (861, 10, 187, 424);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (862, 3, 257, 684);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (863, 9, 553, 325);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (864, 1, 149, 870);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (865, 6, 254, 690);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (866, 8, 503, 236);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (867, 7, 217, 173);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (868, 2, 522, 993);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (869, 1, 214, 573);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (870, 3, 212, 716);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (871, 6, 452, 16);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (872, 4, 553, 90);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (873, 3, 580, 544);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (874, 2, 366, 246);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (875, 9, 42, 282);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (876, 8, 44, 213);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (877, 10, 282, 593);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (878, 9, 72, 820);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (879, 1, 25, 438);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (880, 4, 225, 404);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (881, 4, 127, 155);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (882, 8, 84, 386);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (883, 3, 117, 95);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (884, 10, 411, 735);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (885, 10, 454, 133);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (886, 9, 423, 604);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (887, 10, 223, 732);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (888, 10, 555, 934);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (889, 4, 319, 307);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (890, 5, 85, 194);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (891, 10, 420, 640);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (892, 9, 18, 850);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (893, 6, 352, 460);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (894, 6, 375, 992);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (895, 6, 313, 414);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (896, 5, 149, 242);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (897, 5, 70, 634);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (898, 3, 60, 209);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (899, 4, 554, 904);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (900, 10, 96, 429);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (901, 5, 426, 924);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (902, 7, 594, 526);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (903, 7, 205, 452);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (904, 8, 89, 913);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (905, 10, 189, 323);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (906, 5, 553, 219);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (907, 10, 40, 432);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (908, 4, 121, 933);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (909, 3, 311, 685);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (910, 7, 142, 327);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (911, 3, 230, 560);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (912, 5, 3, 913);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (913, 8, 342, 814);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (914, 8, 255, 471);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (915, 5, 274, 956);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (916, 1, 474, 702);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (917, 10, 71, 803);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (918, 1, 274, 1);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (919, 5, 313, 650);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (920, 5, 193, 542);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (921, 7, 304, 683);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (922, 7, 225, 103);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (923, 5, 75, 853);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (924, 10, 379, 7);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (925, 2, 197, 752);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (926, 8, 383, 273);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (927, 9, 4, 172);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (928, 2, 294, 2);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (929, 10, 96, 174);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (930, 7, 403, 534);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (931, 2, 11, 325);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (932, 7, 228, 177);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (933, 1, 285, 761);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (934, 8, 141, 314);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (935, 10, 354, 615);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (936, 6, 114, 688);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (937, 9, 499, 631);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (938, 9, 406, 914);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (939, 2, 343, 389);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (940, 9, 55, 274);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (941, 4, 179, 169);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (942, 4, 199, 207);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (943, 5, 455, 117);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (944, 9, 85, 742);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (945, 2, 70, 95);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (946, 8, 188, 861);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (947, 2, 390, 305);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (948, 4, 385, 872);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (949, 1, 554, 383);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (950, 2, 556, 503);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (951, 6, 132, 724);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (952, 10, 396, 741);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (953, 8, 108, 458);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (954, 4, 175, 429);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (955, 6, 273, 429);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (956, 10, 374, 256);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (957, 1, 379, 230);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (958, 9, 504, 334);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (959, 7, 225, 261);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (960, 9, 585, 634);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (961, 7, 274, 146);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (962, 3, 415, 320);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (963, 9, 251, 27);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (964, 4, 244, 291);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (965, 7, 122, 215);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (966, 6, 384, 994);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (967, 2, 16, 755);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (968, 10, 168, 79);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (969, 9, 588, 56);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (970, 2, 167, 850);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (971, 3, 74, 371);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (972, 2, 270, 19);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (973, 9, 173, 790);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (974, 8, 60, 53);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (975, 3, 237, 338);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (976, 6, 564, 273);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (977, 3, 177, 825);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (978, 10, 6, 47);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (979, 6, 342, 362);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (980, 1, 476, 630);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (981, 8, 425, 754);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (982, 1, 177, 864);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (983, 6, 214, 713);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (984, 2, 306, 937);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (985, 4, 478, 746);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (986, 8, 321, 441);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (987, 4, 127, 66);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (988, 1, 359, 650);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (989, 10, 467, 584);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (990, 4, 558, 472);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (991, 2, 294, 976);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (992, 5, 147, 550);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (993, 3, 545, 666);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (994, 2, 245, 907);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (995, 10, 52, 167);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (996, 7, 384, 166);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (997, 5, 593, 908);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (998, 10, 576, 532);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (999, 6, 128, 210);
INSERT INTO public.cart_item (cart_item_id, quantity, cart_id, product_id) VALUES (1000, 9, 570, 116);


                                                                                                                                                                                                3379.dat                                                                                            0000600 0004000 0002000 00000170702 14437437366 0014307 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (1, 'Jody', 'Legrave', '+1 (585) 315-6765', '1');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (2, 'Collen', 'Grasner', '+84 (430) 375-5048', '2');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (3, 'Lindsey', 'Naris', '+55 (311) 648-2711', '3');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (4, 'Lynnea', 'Wager', '+55 (639) 644-2913', '4');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (5, 'Thaine', 'Watkins', '+380 (275) 230-6097', '5');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (6, 'Oswell', 'Matuszynski', '+373 (733) 656-4477', '6');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (7, 'Zabrina', 'Glassopp', '+381 (466) 334-2824', '7');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (8, 'Jerrilee', 'Obington', '+63 (815) 657-5144', '8');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (9, 'Margaret', 'Aloshechkin', '+375 (454) 487-5420', '9');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (10, 'Amelina', 'Mirrlees', '+234 (871) 542-3448', '10');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (11, 'Desirae', 'McNalley', '+55 (189) 424-6938', '11');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (12, 'Mark', 'Cow', '+1 (912) 318-0592', '12');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (13, 'Lauren', 'Larimer', '+506 (399) 383-6104', '13');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (14, 'Anastasia', 'Osmant', '+33 (496) 910-8131', '14');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (15, 'Roy', 'Baldocci', '+385 (214) 887-4357', '15');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (16, 'Guglielmo', 'Ratcliff', '+55 (767) 291-2855', '16');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (17, 'Rosabella', 'Tyght', '+7 (711) 886-1961', '17');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (18, 'Karlen', 'Warrington', '+7 (937) 758-5229', '18');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (19, 'Brandyn', 'Morteo', '+62 (250) 764-7149', '19');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (20, 'Dorolisa', 'MacGuigan', '+86 (419) 155-3795', '20');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (21, 'Zaccaria', 'Beckwith', '+57 (255) 251-2184', '21');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (22, 'Calypso', 'Sorsbie', '+256 (155) 229-3091', '22');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (23, 'Maryanna', 'Sivills', '+30 (666) 734-5953', '23');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (24, 'Doralin', 'Brand-Hardy', '+351 (621) 508-7717', '24');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (25, 'Cleve', 'Mummery', '+359 (106) 564-5151', '25');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (26, 'Maris', 'Carn', '+86 (875) 533-8758', '26');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (27, 'Jeremias', 'Leidecker', '+380 (200) 854-4184', '27');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (28, 'Nerti', 'Hartell', '+81 (732) 275-6780', '28');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (29, 'Wanids', 'Rizzello', '+62 (829) 215-7698', '29');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (30, 'Roselia', 'Yu', '+250 (276) 916-1371', '30');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (31, 'Shell', 'Ghiriardelli', '+420 (583) 397-9965', '31');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (32, 'Dalis', 'Dayment', '+86 (918) 235-5728', '32');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (33, 'Jacob', 'Sewart', '+62 (284) 412-1504', '33');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (34, 'Retha', 'Meigh', '+251 (326) 657-6880', '34');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (35, 'Sidney', 'Strelitzki', '+86 (304) 376-1588', '35');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (36, 'Cyrillus', 'Bohje', '+86 (792) 950-7068', '36');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (37, 'Gabriello', 'Gorwood', '+62 (564) 782-6246', '37');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (38, 'Norrie', 'O''Hdirscoll', '+86 (344) 808-7930', '38');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (39, 'Zara', 'Chellam', '+86 (164) 796-5096', '39');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (40, 'Laurie', 'Clineck', '+7 (621) 187-9727', '40');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (41, 'Tobey', 'Mapholm', '+63 (470) 844-0900', '41');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (42, 'Gunilla', 'Gate', '+1 (655) 689-1729', '42');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (43, 'Ilario', 'Betun', '+55 (843) 450-4009', '43');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (44, 'Gabbi', 'Welland', '+63 (432) 671-5001', '44');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (45, 'Nertie', 'Raftery', '+33 (848) 736-6305', '45');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (46, 'Gerrie', 'Mower', '+44 (168) 560-6174', '46');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (47, 'Danna', 'Coltart', '+86 (567) 944-5734', '47');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (48, 'Ardyce', 'Derisley', '+86 (480) 977-4236', '48');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (49, 'Byram', 'Pretley', '+856 (709) 185-9627', '49');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (50, 'Tremayne', 'Fossick', '+62 (414) 200-7033', '50');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (51, 'Kimberlee', 'Freebury', '+1 (815) 771-3001', '51');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (52, 'Roselia', 'Harkus', '+380 (602) 833-6844', '52');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (53, 'Guy', 'Bullon', '+63 (589) 845-9481', '53');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (54, 'Sidoney', 'Lumbly', '+86 (207) 171-8685', '54');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (55, 'Joanie', 'Hancell', '+66 (531) 673-2668', '55');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (56, 'Rice', 'Howat', '+62 (949) 745-9621', '56');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (57, 'Gabriell', 'Perago', '+64 (133) 844-2490', '57');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (58, 'Chad', 'Luquet', '+7 (674) 488-2549', '58');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (59, 'Faun', 'Lawless', '+48 (263) 310-6593', '59');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (60, 'Cyb', 'McQuaker', '+7 (586) 885-9956', '60');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (61, 'Geri', 'Kobu', '+351 (553) 599-2847', '61');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (62, 'Hartley', 'Brehault', '+86 (857) 671-1491', '62');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (63, 'Hermia', 'Pessold', '+62 (548) 854-3987', '63');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (64, 'Geri', 'Impy', '+57 (259) 124-4996', '64');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (65, 'Christine', 'Shepeard', '+86 (244) 245-4047', '65');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (66, 'Harriett', 'Gillett', '+62 (194) 807-1433', '66');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (67, 'Marsiella', 'Cromwell', '+86 (419) 284-8003', '67');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (68, 'Felice', 'Radke', '+61 (599) 470-9345', '68');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (69, 'Sauncho', 'Cabble', '+86 (505) 747-0269', '69');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (70, 'Dermot', 'Rieme', '+82 (392) 747-0317', '70');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (71, 'Shurwood', 'Spollen', '+86 (258) 195-5823', '71');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (72, 'Cristiano', 'Casford', '+86 (198) 894-2592', '72');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (73, 'Raynor', 'MacAnelley', '+92 (614) 819-8192', '73');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (74, 'Cobbie', 'Iacovacci', '+33 (329) 240-0476', '74');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (75, 'Kelsy', 'Tiernan', '+86 (421) 712-3793', '75');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (76, 'Moira', 'Parke', '+51 (174) 922-3658', '76');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (77, 'Uriah', 'Kissell', '+33 (161) 364-0576', '77');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (78, 'Calv', 'Broderick', '+86 (466) 455-8852', '78');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (79, 'Helene', 'Frosdick', '+63 (537) 699-8299', '79');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (80, 'Cal', 'Guilliland', '+62 (434) 410-8409', '80');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (81, 'Johannes', 'Giacomuzzi', '+966 (962) 804-9506', '81');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (82, 'Farah', 'Korous', '+81 (173) 556-4968', '82');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (83, 'Garner', 'Livett', '+381 (157) 118-0047', '83');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (84, 'Shawn', 'Cumberbatch', '+86 (106) 668-4141', '84');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (85, 'Zelig', 'Seivwright', '+506 (372) 188-8245', '85');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (86, 'Kriste', 'Swayte', '+63 (528) 267-8730', '86');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (87, 'Simone', 'Midlar', '+57 (199) 136-7797', '87');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (88, 'Birdie', 'Lashmar', '+7 (891) 240-9318', '88');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (89, 'Vittorio', 'Domniney', '+880 (417) 845-5897', '89');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (90, 'Sigismond', 'Groundwator', '+7 (250) 222-0469', '90');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (91, 'Arv', 'Giampietro', '+1 (950) 254-6528', '91');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (92, 'Tyne', 'Lowles', '+262 (844) 732-3205', '92');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (93, 'Eddie', 'Trewett', '+7 (492) 532-6024', '93');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (94, 'Clarette', 'Rowlett', '+86 (887) 321-7444', '94');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (95, 'Fredra', 'Buttfield', '+48 (424) 528-5806', '95');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (96, 'Damaris', 'Sabater', '+1 (198) 453-7865', '96');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (97, 'Solly', 'Zuenelli', '+509 (891) 340-1058', '97');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (98, 'Wash', 'O''Scandall', '+351 (322) 413-8335', '98');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (99, 'Margaretta', 'Andrioletti', '+30 (270) 235-3792', '99');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (100, 'Ben', 'Conibear', '+62 (534) 476-5406', '100');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (101, 'Shanta', 'Axelbey', '+57 (396) 623-2527', '101');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (102, 'Joell', 'Kinahan', '+994 (280) 145-0738', '102');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (103, 'Cyb', 'Cheeke', '+39 (336) 318-9736', '103');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (104, 'Sansone', 'Clayfield', '+66 (231) 431-8408', '104');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (105, 'Kameko', 'Sunners', '+1 (800) 704-1302', '105');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (106, 'Angie', 'Linfoot', '+62 (827) 631-3185', '106');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (107, 'Elysee', 'Muxworthy', '+7 (658) 800-0706', '107');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (108, 'Paul', 'Powis', '+86 (571) 747-1038', '108');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (109, 'Kristin', 'Thonason', '+260 (395) 516-2305', '109');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (110, 'Stephan', 'Calderhead', '+60 (760) 241-6592', '110');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (111, 'Franny', 'Glazyer', '+48 (777) 525-1925', '111');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (112, 'Michelle', 'Blencowe', '+385 (744) 143-8121', '112');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (113, 'Caleb', 'St. Ledger', '+86 (308) 573-7438', '113');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (114, 'Siana', 'Tume', '+357 (329) 232-5741', '114');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (115, 'Brittney', 'Eggers', '+84 (231) 613-0475', '115');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (116, 'Aeriela', 'Sebrens', '+86 (605) 968-3018', '116');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (117, 'Roda', 'Legrave', '+86 (113) 325-0043', '117');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (118, 'Vanda', 'Leppo', '+351 (689) 743-6093', '118');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (119, 'Aura', 'Ainsworth', '+62 (567) 893-7959', '119');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (120, 'Della', 'Berryann', '+7 (629) 632-1564', '120');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (121, 'Irene', 'Carrabot', '+86 (744) 884-5948', '121');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (122, 'Merline', 'Ginnaly', '+55 (250) 397-0816', '122');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (123, 'Andras', 'Minchin', '+351 (760) 968-2376', '123');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (124, 'Cornall', 'Anfosso', '+359 (504) 197-6303', '124');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (125, 'Sabrina', 'Bradnum', '+1 (886) 907-1688', '125');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (126, 'Leonardo', 'Katt', '+62 (420) 726-3073', '126');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (127, 'Jamil', 'Marchenko', '+7 (372) 549-1981', '127');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (128, 'Evelina', 'Giblett', '+55 (364) 425-2311', '128');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (129, 'Marcile', 'Scholtz', '+63 (291) 906-6585', '129');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (130, 'Jillayne', 'McLese', '+63 (447) 247-0277', '130');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (131, 'Roxanne', 'Reinhard', '+250 (648) 887-5103', '131');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (132, 'Hedwiga', 'Lambarth', '+375 (461) 148-2536', '132');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (133, 'Davie', 'Esslement', '+86 (730) 467-1480', '133');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (134, 'Agnella', 'Cadwaladr', '+262 (914) 560-6692', '134');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (135, 'Spencer', 'Huerta', '+355 (775) 412-2165', '135');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (136, 'Fidelia', 'Cops', '+222 (160) 936-5530', '136');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (137, 'Julissa', 'Storer', '+63 (426) 542-7826', '137');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (138, 'Lee', 'Gumbley', '+39 (191) 817-4195', '138');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (139, 'Jakie', 'Kesten', '+52 (929) 156-8340', '139');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (140, 'Mathilde', 'Gellion', '+380 (910) 943-3901', '140');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (141, 'Gertrud', 'Broadberrie', '+57 (477) 421-5972', '141');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (142, 'Wilbert', 'Danniell', '+86 (425) 522-8258', '142');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (143, 'Betsy', 'Sahlstrom', '+7 (603) 178-3597', '143');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (144, 'Norina', 'Sallowaye', '+86 (461) 932-2621', '144');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (145, 'Ferdy', 'Wodham', '+86 (350) 307-6823', '145');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (146, 'Aristotle', 'Hearne', '+47 (446) 534-6322', '146');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (147, 'Montgomery', 'Stook', '+86 (133) 102-3206', '147');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (148, 'Worthington', 'Shelliday', '+63 (724) 594-4470', '148');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (149, 'Sigrid', 'Melsome', '+63 (228) 202-7983', '149');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (150, 'Arliene', 'O''dell', '+86 (691) 897-0939', '150');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (151, 'Kathleen', 'Burnep', '+62 (401) 507-1293', '151');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (152, 'Mellie', 'Aymer', '+54 (356) 224-4359', '152');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (153, 'Fernande', 'Dalgarnocht', '+380 (184) 974-0711', '153');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (154, 'Grantley', 'Roughan', '+81 (291) 931-6195', '154');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (155, 'Marlyn', 'Halpin', '+1 (918) 202-9264', '155');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (156, 'Celestina', 'Gavan', '+1 (972) 106-9370', '156');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (157, 'Lane', 'Slane', '+62 (859) 756-4894', '157');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (158, 'Twyla', 'Grastye', '+212 (503) 503-5102', '158');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (159, 'Judith', 'Szabo', '+7 (891) 991-9735', '159');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (160, 'Lilli', 'Barukh', '+86 (833) 306-8294', '160');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (161, 'Kinsley', 'Beaufoy', '+81 (945) 177-7378', '161');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (162, 'Pansy', 'Dunderdale', '+351 (999) 246-9380', '162');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (163, 'Barnabe', 'Frowen', '+62 (558) 587-2533', '163');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (164, 'Vivienne', 'Dunphy', '+66 (907) 142-3644', '164');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (165, 'Peggie', 'Hubner', '+357 (731) 875-6145', '165');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (166, 'Lesly', 'Jeske', '+53 (860) 529-5462', '166');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (167, 'Deane', 'Buttrey', '+63 (389) 712-7050', '167');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (168, 'Arte', 'Goodlud', '+86 (719) 965-0991', '168');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (169, 'Cirillo', 'Aggiss', '+48 (520) 768-5717', '169');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (170, 'Fremont', 'Yateman', '+966 (577) 562-0336', '170');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (171, 'Robinia', 'Haston', '+235 (427) 703-0077', '171');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (172, 'Tristam', 'Hartwright', '+7 (151) 518-9392', '172');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (173, 'Genevieve', 'Balazs', '+7 (350) 651-0924', '173');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (174, 'Tadio', 'McGougan', '+381 (705) 836-9635', '174');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (175, 'Nixie', 'Branchett', '+242 (131) 404-5087', '175');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (176, 'Brody', 'Bulward', '+7 (822) 805-0300', '176');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (177, 'Markos', 'Philippsohn', '+86 (782) 512-3028', '177');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (178, 'Jackson', 'Bingall', '+86 (905) 868-7991', '178');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (179, 'Roxy', 'Bugdell', '+1 (599) 139-7703', '179');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (180, 'Rainer', 'Kierans', '+1 (141) 890-3434', '180');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (181, 'Horten', 'MacKaig', '+7 (225) 586-2068', '181');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (182, 'Karel', 'Durden', '+48 (857) 353-7753', '182');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (183, 'Lura', 'Barracks', '+374 (365) 943-6283', '183');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (184, 'Antoinette', 'Castellani', '+7 (611) 247-8426', '184');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (185, 'Annaliese', 'Aucutt', '+351 (320) 908-9335', '185');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (186, 'Ax', 'Touret', '+33 (538) 284-0133', '186');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (187, 'Viole', 'Hitscher', '+55 (146) 745-9110', '187');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (188, 'Andromache', 'Wren', '+54 (603) 940-1714', '188');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (189, 'Amby', 'Scotson', '+420 (771) 310-7474', '189');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (190, 'Lorene', 'Sieur', '+234 (549) 359-6182', '190');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (191, 'Sumner', 'Woodall', '+58 (416) 437-8888', '191');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (192, 'Christina', 'Luffman', '+62 (207) 245-4681', '192');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (193, 'Fayette', 'Rummery', '+385 (494) 116-8386', '193');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (194, 'Coral', 'Poxon', '+46 (700) 398-9731', '194');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (195, 'Gaston', 'Lurner', '+7 (483) 317-8589', '195');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (196, 'Perceval', 'Oliva', '+43 (284) 577-2536', '196');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (197, 'Carlin', 'Padkin', '+48 (990) 113-3181', '197');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (198, 'Cassy', 'Joist', '+7 (217) 753-6242', '198');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (199, 'Jody', 'Castro', '+234 (539) 356-2654', '199');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (200, 'Twila', 'Caffery', '+380 (177) 892-5067', '200');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (201, 'Roslyn', 'Nelles', '+351 (158) 347-4834', '201');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (202, 'Reinald', 'Pucknell', '+381 (601) 232-0697', '202');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (203, 'Babs', 'Meneer', '+93 (683) 680-4240', '203');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (204, 'Whitby', 'Dunlop', '+7 (347) 886-0521', '204');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (205, 'Natal', 'Mugford', '+7 (105) 590-6599', '205');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (206, 'Candie', 'Milberry', '+223 (369) 918-5328', '206');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (207, 'Quintilla', 'Bocke', '+48 (591) 511-1651', '207');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (208, 'Pegeen', 'Pllu', '+57 (443) 200-1304', '208');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (209, 'Kinnie', 'Stevings', '+55 (152) 202-0808', '209');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (210, 'Klaus', 'Loades', '+86 (510) 336-7533', '210');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (211, 'Rebekah', 'Maystone', '+63 (529) 941-9097', '211');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (212, 'Benedicto', 'Parmenter', '+27 (496) 434-8528', '212');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (213, 'Jennilee', 'Lathy', '+86 (541) 188-5452', '213');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (214, 'Michael', 'Spare', '+242 (385) 449-1071', '214');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (215, 'Sheffield', 'Bedham', '+351 (249) 376-8349', '215');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (216, 'Bernardina', 'Jenks', '+63 (390) 882-3259', '216');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (217, 'Lilla', 'Veschi', '+86 (916) 655-2774', '217');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (218, 'Anthe', 'Edmundson', '+380 (840) 655-5901', '218');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (219, 'Harriet', 'Beden', '+55 (649) 634-2844', '219');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (220, 'Etti', 'Donnelly', '+86 (292) 905-9415', '220');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (221, 'Case', 'Culbert', '+351 (367) 950-2808', '221');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (222, 'Archambault', 'Yuranovev', '+86 (261) 291-9639', '222');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (223, 'Boy', 'Canter', '+1 (162) 975-5036', '223');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (224, 'Carry', 'Macewan', '+55 (408) 313-5488', '224');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (225, 'Travis', 'Ickovitz', '+63 (155) 753-8432', '225');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (226, 'Viva', 'Galvan', '+86 (989) 816-7334', '226');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (227, 'Eulalie', 'Clinton', '+86 (556) 961-1925', '227');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (228, 'Traci', 'Glashby', '+1 (196) 408-1338', '228');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (229, 'Hildagarde', 'Hullot', '+261 (135) 980-4066', '229');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (230, 'Massimiliano', 'O''Heaney', '+86 (443) 455-6806', '230');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (231, 'Kingston', 'Pochin', '+380 (607) 467-6124', '231');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (232, 'Nicolle', 'Kosel', '+62 (302) 453-5285', '232');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (233, 'Cahra', 'Dami', '+7 (584) 611-4740', '233');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (234, 'Vale', 'Aizikovitz', '+55 (499) 131-1754', '234');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (235, 'Karie', 'Suttling', '+593 (383) 899-7396', '235');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (236, 'Jewel', 'Partlett', '+86 (718) 878-8494', '236');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (237, 'Deena', 'Rishman', '+420 (318) 218-4328', '237');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (238, 'Vera', 'Jerzycowski', '+1 (816) 292-1241', '238');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (239, 'Raina', 'Cordingley', '+34 (916) 403-8946', '239');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (240, 'Krispin', 'Ruzic', '+86 (293) 126-7037', '240');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (241, 'Gaylene', 'Calton', '+33 (294) 888-1167', '241');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (242, 'Belle', 'Hatherley', '+46 (583) 669-9728', '242');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (243, 'Deeann', 'Hensmans', '+235 (789) 526-7195', '243');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (244, 'Jenilee', 'Alcock', '+62 (138) 432-7805', '244');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (245, 'Abigale', 'Flann', '+63 (281) 585-2218', '245');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (246, 'Luz', 'Tottie', '+507 (937) 969-3645', '246');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (247, 'Dela', 'Spyby', '+86 (253) 800-4598', '247');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (248, 'Clarabelle', 'McIlveen', '+63 (991) 592-9869', '248');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (249, 'Conrade', 'Smuth', '+86 (363) 483-3140', '249');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (250, 'Kally', 'Bordes', '+86 (549) 918-1800', '250');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (251, 'Alphard', 'Callister', '+86 (568) 664-4017', '251');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (252, 'Emile', 'Daltry', '+33 (471) 283-8925', '252');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (253, 'Thadeus', 'Apfler', '+420 (244) 113-2625', '253');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (254, 'Sara', 'Pulham', '+7 (992) 905-5696', '254');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (255, 'Eddy', 'Forrester', '+46 (628) 905-2036', '255');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (256, 'Kennedy', 'Prier', '+62 (180) 811-1893', '256');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (257, 'Sidoney', 'Kilty', '+62 (236) 688-7492', '257');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (258, 'Pat', 'Stains', '+62 (371) 372-8233', '258');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (259, 'Otto', 'Stepto', '+86 (821) 411-6640', '259');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (260, 'Wendye', 'Ockenden', '+66 (292) 909-2597', '260');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (261, 'Luca', 'Batterton', '+86 (719) 485-9837', '261');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (262, 'Vanya', 'Hartless', '+86 (485) 330-8135', '262');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (263, 'Clemence', 'Frude', '+7 (720) 988-3108', '263');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (264, 'Sidnee', 'Gerault', '+351 (289) 403-7405', '264');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (265, 'Sandi', 'Plimmer', '+86 (399) 586-4486', '265');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (266, 'Pearla', 'Fairfoul', '+351 (717) 653-8331', '266');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (267, 'Olivier', 'Tesauro', '+81 (612) 196-1475', '267');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (268, 'Sylvester', 'Gorhardt', '+218 (744) 673-1666', '268');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (269, 'Alair', 'Dashper', '+53 (561) 125-2421', '269');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (270, 'Cristionna', 'Pallesen', '+86 (708) 485-2171', '270');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (271, 'Mufinella', 'MacKaig', '+1 (206) 304-6578', '271');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (272, 'Giffer', 'Gossan', '+66 (945) 361-2725', '272');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (273, 'Karl', 'Sorrie', '+386 (476) 785-3394', '273');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (274, 'Mayor', 'Whetland', '+249 (143) 840-2980', '274');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (275, 'Lorain', 'Bellin', '+52 (168) 462-3762', '275');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (276, 'Noelani', 'Blunsden', '+63 (938) 150-1778', '276');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (277, 'Steffane', 'O''Hdirscoll', '+86 (635) 861-5629', '277');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (278, 'Eartha', 'Bedburrow', '+49 (676) 218-2533', '278');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (279, 'Mychal', 'Glowacha', '+380 (864) 540-9323', '279');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (280, 'Godard', 'Becks', '+81 (184) 572-9280', '280');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (281, 'Steffie', 'Goldsberry', '+7 (765) 734-2770', '281');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (282, 'Skipp', 'Gronous', '+81 (523) 322-0325', '282');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (283, 'Eleni', 'Lerhinan', '+7 (303) 692-2765', '283');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (284, 'Haskell', 'Gazey', '+51 (591) 508-0066', '284');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (285, 'Anderea', 'Lawling', '+352 (969) 786-4246', '285');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (286, 'Manolo', 'Hariot', '+850 (366) 839-7169', '286');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (287, 'Krispin', 'Rawsthorne', '+86 (208) 982-4159', '287');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (288, 'Conan', 'Bachmann', '+33 (548) 927-3841', '288');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (289, 'Arly', 'Perrygo', '+1 (723) 952-6096', '289');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (290, 'Bertie', 'Dugall', '+86 (115) 549-3251', '290');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (291, 'Darrick', 'Riha', '+993 (795) 531-9059', '291');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (292, 'Dominica', 'Larive', '+850 (876) 185-6470', '292');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (293, 'Mia', 'Fewell', '+380 (344) 625-9723', '293');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (294, 'Sloan', 'Beesey', '+1 (512) 541-2198', '294');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (295, 'Griselda', 'Hirschmann', '+86 (403) 421-0282', '295');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (296, 'Hendrick', 'Penkman', '+66 (326) 434-8834', '296');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (297, 'William', 'Phipard-Shears', '+55 (574) 620-9699', '297');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (298, 'Zeke', 'Dyet', '+86 (948) 744-4796', '298');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (299, 'Dorene', 'Toye', '+48 (669) 121-0813', '299');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (300, 'Sigfried', 'Trangmar', '+252 (913) 106-7597', '300');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (301, 'Giusto', 'Tredger', '+62 (217) 411-1790', '301');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (302, 'Xymenes', 'Sauvage', '+63 (840) 620-1053', '302');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (303, 'Rey', 'Minerdo', '+7 (884) 731-8278', '303');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (304, 'Dian', 'Quinnell', '+1 (419) 690-7402', '304');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (305, 'Caresa', 'Ramalhete', '+86 (361) 119-2102', '305');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (306, 'Phaidra', 'Wreakes', '+84 (261) 572-3484', '306');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (307, 'Georgie', 'Dedden', '+60 (572) 804-6133', '307');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (308, 'Georgie', 'Hillatt', '+850 (623) 828-0168', '308');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (309, 'Leanora', 'Udden', '+370 (827) 422-4535', '309');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (310, 'Melessa', 'Babalola', '+86 (289) 390-1297', '310');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (311, 'Ibrahim', 'Beebee', '+380 (375) 218-9349', '311');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (312, 'Pauline', 'Rigmond', '+216 (715) 121-4315', '312');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (313, 'Simone', 'Mannie', '+62 (325) 289-6472', '313');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (314, 'Jozef', 'Quantrell', '+62 (979) 100-1351', '314');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (315, 'Prentice', 'Monkton', '+86 (358) 444-0084', '315');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (316, 'Nana', 'Francesconi', '+1 (820) 541-6780', '316');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (317, 'Hestia', 'Bumfrey', '+62 (567) 538-5482', '317');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (318, 'Marthe', 'Grewar', '+380 (665) 162-1999', '318');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (319, 'Fabiano', 'Morling', '+46 (984) 346-5614', '319');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (320, 'Linzy', 'Alvis', '+33 (664) 818-9682', '320');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (321, 'Lanie', 'Benwell', '+7 (263) 841-7158', '321');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (322, 'Jerrie', 'O Mullen', '+86 (531) 364-7663', '322');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (323, 'Angel', 'Pontain', '+62 (416) 555-4976', '323');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (324, 'Dione', 'Martinello', '+1 (859) 299-2172', '324');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (325, 'Ty', 'Sturdy', '+55 (280) 266-9163', '325');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (326, 'Arnie', 'Van T''Hoog', '+48 (931) 992-0773', '326');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (327, 'Tabitha', 'Doutch', '+62 (968) 137-0419', '327');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (328, 'Jo-ann', 'Swiers', '+66 (319) 116-3744', '328');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (329, 'Dirk', 'Blinkhorn', '+976 (807) 506-4469', '329');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (330, 'Gwyn', 'Weightman', '+58 (622) 592-0670', '330');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (331, 'Lilah', 'Heinig', '+55 (624) 958-0666', '331');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (332, 'Amandy', 'Godwyn', '+62 (713) 469-0269', '332');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (333, 'Morissa', 'Coltart', '+51 (792) 620-9282', '333');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (334, 'Orton', 'Meek', '+33 (922) 290-4238', '334');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (335, 'Stanislaus', 'Francesch', '+86 (537) 505-5118', '335');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (336, 'Ernaline', 'Rigolle', '+93 (871) 159-2515', '336');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (337, 'Lavinie', 'Deniset', '+48 (524) 703-3115', '337');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (338, 'Halimeda', 'Fettis', '+961 (632) 813-3992', '338');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (339, 'Lib', 'Whyffen', '+20 (271) 696-6260', '339');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (340, 'Pam', 'Bexon', '+62 (202) 415-9865', '340');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (341, 'Shurlock', 'Vedntyev', '+48 (119) 522-9827', '341');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (342, 'Kilian', 'Dougliss', '+375 (378) 574-7026', '342');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (343, 'Morganne', 'Itzcak', '+357 (172) 755-6950', '343');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (344, 'Slade', 'Bomb', '+27 (967) 558-9917', '344');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (345, 'Lou', 'Cormode', '+86 (510) 473-6839', '345');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (346, 'Reinald', 'Geraud', '+86 (662) 753-7070', '346');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (347, 'Orion', 'Burgisi', '+86 (843) 612-5169', '347');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (348, 'Torrey', 'Ditts', '+1 (630) 770-6389', '348');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (349, 'Koralle', 'Noddle', '+86 (169) 148-0149', '349');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (350, 'Kile', 'MacAlpine', '+7 (113) 936-9683', '350');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (351, 'Lucita', 'Lodevick', '+46 (838) 594-6634', '351');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (352, 'Jsandye', 'Starrs', '+55 (981) 920-2431', '352');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (353, 'Terrie', 'Hebbs', '+1 (352) 628-0503', '353');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (354, 'Brook', 'Cristea', '+1 (217) 298-8285', '354');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (355, 'Malachi', 'Stoop', '+355 (515) 363-6080', '355');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (356, 'Shurlock', 'Thomassen', '+52 (849) 149-2405', '356');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (357, 'Orel', 'Dabinett', '+27 (209) 216-0063', '357');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (358, 'Ashia', 'Bonus', '+63 (778) 491-8859', '358');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (359, 'Jorey', 'Gorner', '+387 (251) 147-9950', '359');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (360, 'Trey', 'Jaulme', '+351 (891) 922-5741', '360');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (361, 'Lise', 'Shorthouse', '+86 (808) 638-8908', '361');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (362, 'Cinderella', 'Faill', '+351 (795) 192-2118', '362');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (363, 'Alva', 'Sirr', '+63 (737) 850-8443', '363');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (364, 'Richy', 'Shutle', '+420 (786) 370-9561', '364');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (365, 'Daune', 'Quarrie', '+51 (700) 937-0596', '365');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (366, 'Melicent', 'O'' Mullan', '+502 (358) 394-0034', '366');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (367, 'Neely', 'Hirthe', '+62 (646) 142-5301', '367');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (368, 'Shep', 'Monte', '+46 (539) 133-7112', '368');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (369, 'Moishe', 'Kemble', '+351 (741) 371-6565', '369');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (370, 'Dov', 'Philippson', '+86 (605) 172-2035', '370');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (371, 'Gonzalo', 'Smeeton', '+7 (794) 513-5227', '371');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (372, 'Hesther', 'Harnor', '+92 (115) 995-3898', '372');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (373, 'Katalin', 'Sturney', '+86 (379) 647-5484', '373');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (374, 'Riobard', 'Westwell', '+1 (334) 437-5009', '374');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (375, 'Emilio', 'Kitchin', '+591 (808) 256-9952', '375');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (376, 'Isabelita', 'Lantiffe', '+86 (530) 701-0444', '376');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (377, 'Cy', 'Ambroise', '+81 (138) 290-8363', '377');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (378, 'Temp', 'Hastie', '+86 (546) 558-8263', '378');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (379, 'Bernadene', 'Saltern', '+86 (172) 995-9343', '379');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (380, 'Nissie', 'Roglieri', '+54 (302) 928-9998', '380');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (381, 'Roselia', 'Robichon', '+46 (725) 125-3477', '381');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (382, 'Katlin', 'Reimers', '+63 (573) 471-2478', '382');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (383, 'Randal', 'Pieper', '+63 (649) 722-8335', '383');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (384, 'Georgena', 'Brodeur', '+86 (940) 494-8153', '384');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (385, 'Teodora', 'Oxtoby', '+86 (540) 851-0066', '385');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (386, 'Dorelle', 'Willshaw', '+351 (440) 629-0974', '386');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (387, 'Nadean', 'Beardsall', '+62 (454) 388-0631', '387');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (388, 'Merle', 'Gobel', '+62 (385) 965-7125', '388');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (389, 'Anatole', 'Chaff', '+46 (861) 324-3027', '389');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (390, 'Eudora', 'Curedell', '+351 (573) 706-9638', '390');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (391, 'Murielle', 'Older', '+7 (123) 910-0088', '391');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (392, 'Haydon', 'Ruggs', '+880 (102) 267-8401', '392');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (393, 'Misty', 'Briat', '+30 (516) 315-6752', '393');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (394, 'Patrice', 'Flack', '+81 (974) 643-8938', '394');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (395, 'Marinna', 'Sorsbie', '+86 (838) 916-6282', '395');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (396, 'Dicky', 'Markey', '+64 (952) 943-7156', '396');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (397, 'Flint', 'Tolossi', '+46 (472) 307-0791', '397');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (398, 'Brook', 'Awty', '+351 (335) 220-8036', '398');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (399, 'Joelie', 'MacKim', '+420 (924) 960-1516', '399');
INSERT INTO public.customer (customer_id, first_name, last_name, phone_number, address_id) VALUES (400, 'Grace', 'Langstrath', '+86 (500) 510-9555', '400');


                                                              3388.dat                                                                                            0000600 0004000 0002000 00000055666 14437437366 0014322 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (1, '2022-07-12', '2023-03-21', 20);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (2, '2022-06-03', '2023-01-29', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (3, '2023-04-14', '2023-05-29', 16);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (4, '2022-11-14', '2023-05-15', 21);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (5, '2022-07-20', '2022-12-17', 31);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (6, '2022-09-24', '2023-05-28', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (7, '2022-12-14', '2022-12-25', 33);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (8, '2022-09-02', '2022-11-14', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (9, '2022-09-14', '2022-12-13', 21);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (10, '2023-03-13', '2023-05-07', 10);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (11, '2022-07-05', '2022-11-01', 62);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (12, '2023-02-07', '2022-10-19', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (13, '2022-07-04', '2023-04-10', 44);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (14, '2022-06-27', '2023-03-29', 88);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (15, '2023-05-21', '2023-01-17', 1);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (16, '2022-06-21', '2022-11-01', 53);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (17, '2022-11-15', '2023-04-30', 74);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (18, '2022-09-18', '2023-01-17', 46);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (19, '2023-05-01', '2023-03-04', 75);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (20, '2022-08-19', '2023-04-20', 82);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (21, '2023-05-19', '2022-09-06', 60);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (22, '2023-05-31', '2023-01-15', 24);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (23, '2022-12-03', '2022-11-15', 47);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (24, '2023-03-07', '2022-07-02', 11);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (25, '2022-07-10', '2022-10-01', 31);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (26, '2023-05-19', '2023-05-14', 35);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (27, '2023-03-23', '2022-07-19', 60);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (28, '2023-01-06', '2022-09-30', 35);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (29, '2022-12-25', '2022-12-24', 90);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (30, '2022-09-19', '2022-11-04', 32);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (31, '2023-01-26', '2022-10-24', 21);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (32, '2022-12-08', '2022-08-24', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (33, '2022-10-04', '2023-05-09', 74);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (34, '2022-08-21', '2023-04-08', 2);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (35, '2022-07-25', '2022-09-11', 56);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (36, '2023-02-25', '2023-04-24', 26);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (37, '2023-03-23', '2023-05-10', 4);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (38, '2022-08-18', '2023-01-23', 45);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (39, '2022-10-08', '2023-05-13', 44);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (40, '2022-07-04', '2023-01-28', 61);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (41, '2022-07-03', '2022-10-01', 30);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (42, '2022-07-20', '2022-07-19', 10);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (43, '2023-03-29', '2022-07-09', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (44, '2022-08-30', '2022-07-07', 39);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (45, '2022-06-27', '2022-09-22', 11);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (46, '2022-07-02', '2023-03-11', 74);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (47, '2023-03-13', '2022-11-02', 4);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (48, '2022-07-18', '2022-09-26', 58);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (49, '2022-07-14', '2023-03-28', 78);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (50, '2022-10-10', '2023-04-06', 48);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (51, '2022-07-10', '2022-10-01', 36);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (52, '2023-04-18', '2022-08-29', 64);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (53, '2023-02-28', '2023-03-03', 9);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (54, '2023-04-21', '2023-01-31', 47);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (55, '2022-10-15', '2022-12-30', 29);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (56, '2022-07-18', '2022-07-19', 66);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (57, '2023-04-13', '2022-08-18', 30);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (58, '2023-02-18', '2023-05-03', 48);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (59, '2022-09-29', '2023-04-16', 56);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (60, '2022-10-04', '2023-03-16', 3);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (61, '2022-11-09', '2022-11-06', 21);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (62, '2023-02-21', '2022-07-24', 62);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (63, '2022-09-07', '2022-12-05', 23);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (64, '2022-11-09', '2023-01-29', 74);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (65, '2023-03-09', '2023-05-20', 15);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (66, '2022-11-29', '2022-06-22', 33);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (67, '2022-08-16', '2022-12-09', 50);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (68, '2022-12-16', '2022-12-12', 75);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (69, '2022-06-16', '2022-10-12', 3);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (70, '2022-07-23', '2022-09-26', 24);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (71, '2023-05-05', '2023-05-04', 78);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (72, '2022-08-10', '2022-11-30', 4);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (73, '2022-06-22', '2022-11-25', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (74, '2023-03-19', '2023-03-12', 64);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (75, '2022-06-17', '2022-08-07', 49);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (76, '2023-01-15', '2023-01-05', 53);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (77, '2022-06-20', '2022-08-19', 86);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (78, '2022-07-25', '2022-06-25', 72);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (79, '2023-03-20', '2022-07-19', 69);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (80, '2023-01-06', '2022-10-22', 5);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (81, '2023-04-25', '2022-11-28', 38);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (82, '2022-09-24', '2023-05-10', 34);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (83, '2023-05-07', '2023-02-03', 21);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (84, '2023-04-15', '2023-04-04', 64);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (85, '2022-07-08', '2022-11-28', 52);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (86, '2022-10-25', '2022-08-09', 47);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (87, '2023-04-26', '2023-05-21', 48);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (88, '2022-10-01', '2022-07-01', 15);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (89, '2022-11-03', '2023-04-23', 15);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (90, '2022-08-07', '2022-09-19', 1);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (91, '2022-08-05', '2023-02-14', 41);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (92, '2023-06-01', '2022-10-29', 20);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (93, '2023-05-26', '2022-08-01', 32);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (94, '2022-06-04', '2022-12-20', 14);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (95, '2022-06-21', '2022-06-17', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (96, '2022-07-07', '2023-03-09', 90);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (97, '2023-01-17', '2022-11-17', 71);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (98, '2023-05-29', '2023-05-31', 45);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (99, '2023-05-25', '2023-01-13', 28);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (100, '2023-04-14', '2022-09-06', 87);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (101, '2023-01-29', '2023-01-05', 8);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (102, '2023-01-26', '2023-05-26', 39);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (103, '2022-08-28', '2023-04-06', 24);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (104, '2023-02-25', '2023-04-27', 4);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (105, '2022-06-20', '2022-06-21', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (106, '2022-12-21', '2023-05-24', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (107, '2022-09-07', '2022-09-02', 13);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (108, '2023-03-31', '2022-08-13', 38);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (109, '2023-03-16', '2023-02-12', 61);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (110, '2022-11-04', '2022-10-06', 1);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (111, '2022-07-25', '2023-04-24', 79);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (112, '2022-11-11', '2022-06-02', 23);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (113, '2023-02-09', '2022-11-22', 86);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (114, '2022-07-14', '2023-03-13', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (115, '2022-08-07', '2022-09-13', 34);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (116, '2022-11-15', '2022-12-22', 50);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (117, '2022-06-10', '2022-09-12', 46);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (118, '2022-10-30', '2022-06-08', 48);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (119, '2022-07-29', '2022-12-23', 86);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (120, '2023-05-05', '2022-06-29', 71);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (121, '2022-08-23', '2023-04-24', 71);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (122, '2022-11-29', '2023-05-16', 67);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (123, '2022-10-23', '2022-10-15', 81);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (124, '2023-05-29', '2023-05-31', 26);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (125, '2022-08-29', '2023-01-07', 37);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (126, '2022-09-04', '2023-03-22', 88);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (127, '2023-03-11', '2023-05-11', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (128, '2022-10-03', '2023-04-26', 66);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (129, '2022-06-20', '2022-10-13', 70);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (130, '2023-02-06', '2022-07-06', 11);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (131, '2023-03-22', '2022-12-05', 54);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (132, '2022-10-27', '2022-09-08', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (133, '2023-02-15', '2023-04-25', 40);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (134, '2023-05-18', '2022-07-05', 80);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (135, '2022-09-08', '2022-11-04', 45);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (136, '2022-12-04', '2023-03-24', 36);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (137, '2022-08-21', '2022-08-17', 55);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (138, '2022-06-15', '2023-05-18', 85);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (139, '2022-06-17', '2022-10-23', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (140, '2023-03-08', '2023-02-17', 46);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (141, '2023-02-26', '2023-05-22', 11);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (142, '2023-03-21', '2022-09-25', 37);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (143, '2023-05-22', '2023-03-22', 50);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (144, '2022-06-21', '2022-10-19', 61);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (145, '2022-07-06', '2022-09-29', 55);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (146, '2022-11-15', '2022-09-25', 51);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (147, '2022-08-29', '2022-06-17', 69);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (148, '2022-06-25', '2022-07-11', 35);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (149, '2022-09-13', '2022-09-21', 80);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (150, '2022-12-31', '2022-10-19', 46);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (151, '2022-10-01', '2023-02-14', 8);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (152, '2023-03-22', '2022-08-04', 28);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (153, '2023-02-18', '2022-08-01', 20);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (154, '2022-11-23', '2022-07-22', 35);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (155, '2023-05-14', '2022-11-27', 54);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (156, '2022-10-15', '2022-10-13', 78);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (157, '2022-09-23', '2023-03-12', 76);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (158, '2022-10-20', '2023-03-13', 58);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (159, '2022-11-19', '2022-11-15', 86);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (160, '2022-09-07', '2023-02-13', 4);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (161, '2023-03-14', '2023-02-15', 33);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (162, '2022-12-03', '2023-04-08', 27);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (163, '2023-04-22', '2022-08-18', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (164, '2022-10-14', '2022-07-30', 45);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (165, '2022-07-21', '2022-11-09', 57);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (166, '2022-06-24', '2023-04-02', 56);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (167, '2022-10-27', '2022-09-10', 73);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (168, '2023-04-09', '2022-06-03', 22);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (169, '2022-07-09', '2023-04-15', 66);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (170, '2022-07-09', '2023-04-09', 24);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (171, '2022-08-03', '2023-04-18', 45);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (172, '2023-02-09', '2022-10-18', 78);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (173, '2023-03-29', '2023-04-10', 14);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (174, '2023-01-23', '2022-11-25', 39);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (175, '2022-08-08', '2022-12-25', 66);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (176, '2023-04-28', '2023-02-28', 29);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (177, '2022-06-18', '2023-04-05', 44);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (178, '2023-03-21', '2022-07-11', 35);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (179, '2022-11-01', '2022-07-31', 20);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (180, '2023-02-25', '2022-06-11', 27);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (181, '2022-10-08', '2022-10-15', 50);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (182, '2022-08-03', '2023-03-16', 17);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (183, '2022-09-27', '2023-01-18', 25);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (184, '2022-10-15', '2023-03-12', 27);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (185, '2022-11-28', '2023-01-31', 39);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (186, '2023-03-23', '2022-08-22', 76);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (187, '2022-12-19', '2022-11-17', 52);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (188, '2023-05-06', '2022-10-21', 1);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (189, '2022-10-15', '2023-02-19', 11);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (190, '2022-08-06', '2022-12-16', 89);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (191, '2022-06-12', '2023-03-29', 75);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (192, '2022-11-30', '2023-01-09', 63);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (193, '2023-03-10', '2023-02-02', 57);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (194, '2023-05-22', '2022-12-29', 64);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (195, '2022-10-04', '2023-02-27', 67);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (196, '2022-12-16', '2023-03-27', 28);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (197, '2022-12-23', '2023-05-21', 18);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (198, '2023-04-01', '2022-12-22', 76);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (199, '2022-08-04', '2023-04-25', 62);
INSERT INTO public.discount (discount_id, start_date, end_date, amount) VALUES (200, '2022-10-13', '2022-09-08', 34);


                                                                          3384.dat                                                                                            0000600 0004000 0002000 00000142420 14437437366 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 262, 9, 421);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 125, 5, 99);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 346, 5, 972);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 681, 6, 5);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 204, 5, 710);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 105, 5, 720);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 109, 3, 926);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 496, 2, 280);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 494, 4, 193);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 269, 2, 366);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 245, 10, 708);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 362, 10, 737);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 62, 2, 123);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 631, 1, 631);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 928, 4, 262);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 902, 6, 366);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 840, 2, 866);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 350, 1, 199);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 598, 3, 709);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 625, 5, 502);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 832, 7, 139);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 718, 5, 411);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 740, 1, 902);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 805, 1, 251);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 521, 5, 855);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 265, 8, 200);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 953, 10, 926);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 78, 8, 110);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 922, 7, 804);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 738, 5, 382);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 112, 6, 166);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 103, 4, 181);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 420, 9, 560);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 430, 3, 904);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 533, 6, 957);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 843, 6, 732);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 656, 5, 482);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 247, 10, 526);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 308, 8, 205);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 646, 10, 868);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 274, 5, 331);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 484, 5, 609);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 475, 1, 1000);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 440, 9, 14);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 142, 3, 580);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 761, 2, 727);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 617, 7, 808);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 67, 10, 500);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 292, 1, 20);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 650, 9, 39);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 304, 6, 304);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 750, 3, 336);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 642, 6, 950);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 754, 4, 827);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 757, 1, 614);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 918, 8, 218);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 489, 8, 701);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 810, 2, 637);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 808, 8, 676);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 915, 5, 760);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 394, 7, 514);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 370, 6, 134);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 6, 2, 947);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 968, 2, 694);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 504, 2, 840);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 689, 5, 73);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 955, 6, 138);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 26, 3, 97);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 472, 2, 81);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 807, 7, 765);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 802, 8, 448);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 515, 10, 342);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 629, 4, 74);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 729, 1, 65);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 944, 10, 398);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 22, 8, 284);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 513, 9, 964);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 392, 9, 880);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 932, 9, 994);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 25, 10, 323);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 899, 4, 416);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 663, 5, 663);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 760, 8, 470);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 706, 6, 580);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 399, 1, 164);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 979, 4, 258);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 733, 4, 581);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 141, 1, 786);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 709, 1, 983);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 826, 10, 894);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 942, 3, 591);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 220, 8, 448);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 994, 3, 978);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 445, 3, 695);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 931, 10, 964);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 681, 1, 949);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 475, 10, 317);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 326, 3, 43);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 595, 3, 6);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 713, 9, 806);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 476, 6, 507);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 783, 6, 626);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 110, 9, 205);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 200, 8, 885);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 422, 7, 373);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 472, 9, 871);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 289, 6, 159);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 615, 8, 321);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 392, 7, 172);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 317, 5, 631);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 55, 5, 778);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 519, 8, 803);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 484, 8, 487);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 685, 9, 237);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 557, 1, 158);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 518, 9, 643);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 985, 10, 216);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 134, 5, 553);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 248, 2, 458);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 539, 10, 967);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 914, 10, 908);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 494, 2, 838);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 215, 9, 952);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 273, 2, 897);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 281, 8, 694);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 945, 8, 660);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 82, 3, 734);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 304, 3, 836);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 903, 6, 514);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 675, 10, 381);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 22, 8, 658);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 50, 9, 932);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 768, 4, 332);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 161, 1, 331);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 568, 8, 698);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 268, 3, 354);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 72, 4, 674);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 477, 6, 540);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 415, 8, 251);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 140, 1, 715);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 405, 9, 72);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 236, 10, 43);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 890, 1, 337);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 514, 8, 178);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 185, 5, 129);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 532, 1, 826);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 779, 1, 165);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 109, 2, 736);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 401, 9, 39);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 521, 10, 162);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 94, 4, 791);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 260, 6, 336);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 16, 1, 938);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 813, 5, 89);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 436, 7, 178);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 828, 1, 850);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 7, 4, 868);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 49, 7, 136);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 85, 8, 943);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 661, 1, 553);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 540, 10, 635);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 602, 2, 487);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 986, 1, 282);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 189, 2, 518);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 506, 10, 182);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 348, 4, 367);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 977, 2, 189);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 331, 2, 32);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 921, 1, 119);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 3, 5, 467);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 361, 7, 682);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 88, 9, 806);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 415, 5, 149);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 173, 2, 679);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 808, 8, 172);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 719, 10, 3);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 832, 4, 834);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 999, 3, 213);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 905, 1, 396);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 201, 4, 779);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 290, 1, 664);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 286, 6, 376);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 779, 6, 39);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 200, 9, 587);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 973, 7, 756);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 238, 6, 330);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 309, 4, 276);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 579, 4, 872);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 811, 10, 518);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 229, 5, 907);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 718, 10, 167);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 842, 8, 546);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 761, 8, 169);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 653, 9, 604);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 83, 5, 375);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 925, 6, 13);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 274, 7, 846);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 942, 10, 863);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 128, 3, 484);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 5, 10, 840);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 531, 5, 240);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 90, 2, 240);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 413, 6, 69);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 249, 9, 229);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 680, 7, 520);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 643, 6, 348);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 743, 9, 687);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 499, 10, 34);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 64, 4, 576);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 668, 5, 317);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 191, 7, 580);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 468, 5, 107);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 782, 1, 619);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 546, 10, 893);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 16, 8, 130);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 787, 6, 927);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 75, 2, 175);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 87, 6, 40);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 207, 3, 374);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 115, 7, 118);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 330, 2, 881);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 82, 6, 923);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 752, 3, 802);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 208, 10, 766);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 695, 8, 794);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 807, 1, 652);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 823, 1, 755);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 76, 8, 282);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 450, 8, 466);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 151, 4, 20);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 626, 1, 738);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 50, 1, 610);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 506, 9, 937);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 641, 7, 459);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 927, 10, 790);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 507, 6, 126);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 736, 1, 766);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 275, 8, 972);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 226, 9, 619);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 118, 7, 998);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 377, 4, 748);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 757, 1, 125);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 49, 2, 879);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 301, 5, 411);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 322, 4, 413);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 962, 10, 602);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 189, 7, 936);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 313, 9, 755);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 97, 1, 878);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 461, 8, 912);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 124, 9, 158);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 943, 8, 204);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 874, 8, 234);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 52, 6, 550);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 438, 4, 928);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 559, 6, 969);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 885, 4, 270);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 212, 8, 201);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 846, 8, 932);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 239, 4, 977);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 517, 5, 588);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 216, 3, 359);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 287, 3, 332);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 541, 4, 653);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 806, 9, 87);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 826, 9, 198);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 522, 3, 807);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 343, 5, 163);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 641, 8, 423);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 768, 10, 541);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 540, 6, 172);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 320, 9, 798);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 356, 5, 723);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 431, 5, 726);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 430, 5, 643);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 766, 8, 954);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 696, 5, 891);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 702, 1, 362);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 646, 2, 267);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 492, 9, 288);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 474, 4, 284);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 224, 8, 650);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 581, 8, 443);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 555, 9, 240);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 870, 1, 734);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 986, 10, 669);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 250, 1, 656);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 704, 9, 728);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 106, 4, 327);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 718, 7, 56);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 834, 5, 600);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 698, 7, 9);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 152, 3, 640);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 925, 6, 184);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 545, 7, 95);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 158, 7, 93);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 272, 9, 436);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 125, 8, 827);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 797, 5, 158);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 260, 10, 750);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 638, 6, 430);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 2, 7, 701);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 835, 1, 468);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 589, 2, 267);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 552, 5, 875);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 762, 1, 247);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 172, 5, 497);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 611, 9, 522);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 119, 8, 549);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 550, 4, 874);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 798, 4, 403);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 730, 4, 529);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 828, 4, 949);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 333, 8, 620);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 236, 4, 74);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 613, 8, 954);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 664, 9, 640);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 408, 3, 335);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 268, 7, 525);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 297, 1, 329);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 224, 1, 311);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 318, 5, 921);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 792, 3, 738);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 696, 5, 573);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 197, 10, 395);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 740, 3, 756);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 49, 6, 281);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 368, 7, 40);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 368, 9, 405);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 928, 1, 512);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 876, 9, 252);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 773, 8, 234);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 305, 5, 402);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 81, 7, 161);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 244, 4, 167);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 167, 9, 609);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 937, 1, 560);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 359, 9, 557);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 225, 4, 502);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 992, 2, 927);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 884, 5, 809);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 21, 9, 79);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 636, 6, 69);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 351, 5, 280);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 443, 10, 230);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 770, 4, 881);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 639, 10, 419);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 311, 1, 178);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 829, 6, 413);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 543, 7, 220);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 491, 8, 744);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 911, 4, 571);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 233, 3, 59);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 313, 1, 290);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 487, 8, 686);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 305, 7, 612);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 81, 1, 415);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 528, 6, 196);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 332, 6, 731);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 329, 8, 401);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 181, 7, 109);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 383, 6, 682);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 966, 10, 37);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 426, 8, 108);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 286, 4, 740);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 959, 6, 457);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 679, 9, 709);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 943, 7, 286);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 870, 9, 432);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 810, 9, 335);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 884, 3, 30);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 688, 1, 747);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 545, 5, 556);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 216, 8, 828);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 243, 9, 273);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 671, 2, 433);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 194, 6, 187);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 351, 6, 508);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 636, 9, 727);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 21, 5, 506);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 18, 1, 671);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 934, 7, 886);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 593, 3, 500);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 922, 1, 485);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 922, 1, 909);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 306, 7, 697);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 709, 7, 778);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 225, 8, 757);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 916, 7, 441);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 855, 7, 166);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 890, 8, 90);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 614, 2, 783);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 564, 9, 207);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 236, 3, 20);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 610, 1, 573);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 192, 3, 250);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 974, 10, 135);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 704, 4, 254);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 106, 6, 689);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 588, 5, 333);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 764, 10, 757);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 767, 8, 561);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 985, 5, 677);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 193, 3, 987);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 45, 6, 571);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 409, 4, 364);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 733, 6, 302);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 744, 3, 936);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 619, 4, 446);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 745, 6, 866);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 844, 4, 464);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 713, 8, 610);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 690, 4, 656);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 124, 1, 482);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 794, 9, 658);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 939, 5, 913);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 874, 8, 882);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 306, 2, 373);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 692, 1, 782);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 693, 10, 124);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 807, 4, 433);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 715, 10, 13);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 19, 4, 311);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 754, 7, 834);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 127, 10, 328);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 18, 8, 348);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 423, 5, 747);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 764, 8, 564);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 683, 5, 787);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 607, 10, 196);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 96, 9, 827);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 229, 9, 201);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 185, 3, 258);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 716, 1, 721);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 559, 6, 736);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 800, 7, 136);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 81, 3, 72);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 1000, 10, 466);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 404, 9, 778);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 31, 6, 15);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 924, 9, 636);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 281, 5, 944);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 581, 8, 600);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 328, 8, 115);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 170, 5, 70);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 776, 10, 945);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 596, 6, 523);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 627, 2, 864);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 11, 9, 923);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 228, 6, 180);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 241, 1, 658);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 433, 6, 204);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 447, 2, 540);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 991, 7, 607);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 936, 8, 464);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 511, 3, 426);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 422, 10, 204);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 487, 3, 555);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 230, 5, 630);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 604, 9, 599);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 502, 3, 233);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 332, 10, 649);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 616, 4, 96);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 549, 6, 500);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 54, 5, 856);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 497, 9, 305);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 507, 2, 578);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 411, 3, 673);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 23, 10, 44);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 65, 7, 755);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 18, 8, 252);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 845, 9, 857);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 444, 5, 850);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 400, 8, 518);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 34, 10, 738);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 865, 8, 648);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 963, 4, 421);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 696, 3, 544);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 450, 2, 522);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 953, 9, 681);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 355, 1, 839);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 386, 1, 483);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 879, 10, 633);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 653, 2, 897);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 211, 5, 729);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 715, 3, 701);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 306, 8, 162);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (2, 509, 7, 415);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 35, 3, 731);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 131, 9, 872);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (3, 957, 4, 499);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 359, 5, 388);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 570, 7, 435);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 266, 5, 286);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 617, 9, 607);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 985, 8, 763);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (4, 47, 3, 378);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (5, 919, 5, 279);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 62, 9, 915);
INSERT INTO public.inventory (inventory_id, product_id, store_id, quantity) VALUES (1, 799, 10, 638);


                                                                                                                                                                                                                                                3386.dat                                                                                            0000600 0004000 0002000 00000271112 14437437366 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.product (product_id, color, size, price) VALUES (1, 'Red', 'M', 503);
INSERT INTO public.product (product_id, color, size, price) VALUES (2, 'Fuscia', 'L', 1048);
INSERT INTO public.product (product_id, color, size, price) VALUES (3, 'Orange', 'XS', 426);
INSERT INTO public.product (product_id, color, size, price) VALUES (4, 'Turquoise', 'XL', 246);
INSERT INTO public.product (product_id, color, size, price) VALUES (5, 'Blue', '3XL', 1141);
INSERT INTO public.product (product_id, color, size, price) VALUES (6, 'Goldenrod', 'XS', 333);
INSERT INTO public.product (product_id, color, size, price) VALUES (7, 'Blue', '2XL', 559);
INSERT INTO public.product (product_id, color, size, price) VALUES (8, 'Green', 'XS', 364);
INSERT INTO public.product (product_id, color, size, price) VALUES (9, 'Pink', '2XL', 1466);
INSERT INTO public.product (product_id, color, size, price) VALUES (10, 'Pink', 'S', 386);
INSERT INTO public.product (product_id, color, size, price) VALUES (11, 'Crimson', 'XL', 1158);
INSERT INTO public.product (product_id, color, size, price) VALUES (12, 'Blue', 'XS', 1449);
INSERT INTO public.product (product_id, color, size, price) VALUES (13, 'Indigo', 'S', 240);
INSERT INTO public.product (product_id, color, size, price) VALUES (14, 'Orange', 'XS', 215);
INSERT INTO public.product (product_id, color, size, price) VALUES (15, 'Indigo', 'L', 1451);
INSERT INTO public.product (product_id, color, size, price) VALUES (16, 'Goldenrod', 'S', 467);
INSERT INTO public.product (product_id, color, size, price) VALUES (17, 'Crimson', '3XL', 267);
INSERT INTO public.product (product_id, color, size, price) VALUES (18, 'Goldenrod', 'S', 1469);
INSERT INTO public.product (product_id, color, size, price) VALUES (19, 'Maroon', 'M', 815);
INSERT INTO public.product (product_id, color, size, price) VALUES (20, 'Orange', 'L', 1045);
INSERT INTO public.product (product_id, color, size, price) VALUES (21, 'Aquamarine', 'S', 354);
INSERT INTO public.product (product_id, color, size, price) VALUES (22, 'Khaki', '2XL', 888);
INSERT INTO public.product (product_id, color, size, price) VALUES (23, 'Purple', 'XS', 226);
INSERT INTO public.product (product_id, color, size, price) VALUES (24, 'Mauv', 'XS', 647);
INSERT INTO public.product (product_id, color, size, price) VALUES (25, 'Indigo', 'XS', 817);
INSERT INTO public.product (product_id, color, size, price) VALUES (26, 'Violet', '3XL', 568);
INSERT INTO public.product (product_id, color, size, price) VALUES (27, 'Pink', '2XL', 929);
INSERT INTO public.product (product_id, color, size, price) VALUES (28, 'Maroon', 'M', 927);
INSERT INTO public.product (product_id, color, size, price) VALUES (29, 'Puce', 'XL', 1452);
INSERT INTO public.product (product_id, color, size, price) VALUES (30, 'Goldenrod', '2XL', 603);
INSERT INTO public.product (product_id, color, size, price) VALUES (31, 'Puce', 'M', 248);
INSERT INTO public.product (product_id, color, size, price) VALUES (32, 'Khaki', 'XS', 1356);
INSERT INTO public.product (product_id, color, size, price) VALUES (33, 'Teal', 'L', 420);
INSERT INTO public.product (product_id, color, size, price) VALUES (34, 'Violet', 'M', 1470);
INSERT INTO public.product (product_id, color, size, price) VALUES (35, 'Goldenrod', 'S', 798);
INSERT INTO public.product (product_id, color, size, price) VALUES (36, 'Indigo', 'XL', 376);
INSERT INTO public.product (product_id, color, size, price) VALUES (37, 'Blue', '2XL', 602);
INSERT INTO public.product (product_id, color, size, price) VALUES (38, 'Teal', 'M', 1322);
INSERT INTO public.product (product_id, color, size, price) VALUES (39, 'Puce', 'XL', 398);
INSERT INTO public.product (product_id, color, size, price) VALUES (40, 'Mauv', 'XL', 933);
INSERT INTO public.product (product_id, color, size, price) VALUES (41, 'Aquamarine', 'M', 1439);
INSERT INTO public.product (product_id, color, size, price) VALUES (42, 'Goldenrod', '3XL', 1230);
INSERT INTO public.product (product_id, color, size, price) VALUES (43, 'Khaki', 'S', 682);
INSERT INTO public.product (product_id, color, size, price) VALUES (44, 'Pink', 'XS', 341);
INSERT INTO public.product (product_id, color, size, price) VALUES (45, 'Khaki', 'XL', 889);
INSERT INTO public.product (product_id, color, size, price) VALUES (46, 'Purple', 'M', 315);
INSERT INTO public.product (product_id, color, size, price) VALUES (47, 'Blue', 'M', 1122);
INSERT INTO public.product (product_id, color, size, price) VALUES (48, 'Goldenrod', 'XS', 726);
INSERT INTO public.product (product_id, color, size, price) VALUES (49, 'Violet', 'XS', 1215);
INSERT INTO public.product (product_id, color, size, price) VALUES (50, 'Teal', 'M', 825);
INSERT INTO public.product (product_id, color, size, price) VALUES (51, 'Teal', '3XL', 373);
INSERT INTO public.product (product_id, color, size, price) VALUES (52, 'Fuscia', 'XL', 1377);
INSERT INTO public.product (product_id, color, size, price) VALUES (53, 'Crimson', 'L', 1393);
INSERT INTO public.product (product_id, color, size, price) VALUES (54, 'Maroon', 'S', 1294);
INSERT INTO public.product (product_id, color, size, price) VALUES (55, 'Red', 'XS', 930);
INSERT INTO public.product (product_id, color, size, price) VALUES (56, 'Turquoise', 'XL', 580);
INSERT INTO public.product (product_id, color, size, price) VALUES (57, 'Maroon', 'XL', 481);
INSERT INTO public.product (product_id, color, size, price) VALUES (58, 'Maroon', 'L', 1447);
INSERT INTO public.product (product_id, color, size, price) VALUES (59, 'Maroon', 'XL', 1020);
INSERT INTO public.product (product_id, color, size, price) VALUES (60, 'Khaki', 'L', 312);
INSERT INTO public.product (product_id, color, size, price) VALUES (61, 'Teal', 'M', 794);
INSERT INTO public.product (product_id, color, size, price) VALUES (62, 'Aquamarine', 'L', 869);
INSERT INTO public.product (product_id, color, size, price) VALUES (63, 'Orange', 'XL', 599);
INSERT INTO public.product (product_id, color, size, price) VALUES (64, 'Puce', 'L', 1111);
INSERT INTO public.product (product_id, color, size, price) VALUES (65, 'Maroon', 'XL', 653);
INSERT INTO public.product (product_id, color, size, price) VALUES (66, 'Blue', '2XL', 971);
INSERT INTO public.product (product_id, color, size, price) VALUES (67, 'Aquamarine', 'S', 1309);
INSERT INTO public.product (product_id, color, size, price) VALUES (68, 'Indigo', 'S', 1422);
INSERT INTO public.product (product_id, color, size, price) VALUES (69, 'Orange', 'XS', 1242);
INSERT INTO public.product (product_id, color, size, price) VALUES (70, 'Khaki', 'S', 1404);
INSERT INTO public.product (product_id, color, size, price) VALUES (71, 'Teal', '2XL', 455);
INSERT INTO public.product (product_id, color, size, price) VALUES (72, 'Indigo', '3XL', 467);
INSERT INTO public.product (product_id, color, size, price) VALUES (73, 'Khaki', '3XL', 349);
INSERT INTO public.product (product_id, color, size, price) VALUES (74, 'Teal', 'S', 185);
INSERT INTO public.product (product_id, color, size, price) VALUES (75, 'Goldenrod', '3XL', 970);
INSERT INTO public.product (product_id, color, size, price) VALUES (76, 'Blue', 'XL', 931);
INSERT INTO public.product (product_id, color, size, price) VALUES (77, 'Teal', 'L', 1206);
INSERT INTO public.product (product_id, color, size, price) VALUES (78, 'Green', 'XL', 679);
INSERT INTO public.product (product_id, color, size, price) VALUES (79, 'Crimson', 'XS', 877);
INSERT INTO public.product (product_id, color, size, price) VALUES (80, 'Indigo', 'M', 948);
INSERT INTO public.product (product_id, color, size, price) VALUES (81, 'Red', 'XL', 334);
INSERT INTO public.product (product_id, color, size, price) VALUES (82, 'Purple', 'S', 351);
INSERT INTO public.product (product_id, color, size, price) VALUES (83, 'Orange', 'L', 370);
INSERT INTO public.product (product_id, color, size, price) VALUES (84, 'Fuscia', 'S', 285);
INSERT INTO public.product (product_id, color, size, price) VALUES (85, 'Yellow', 'XS', 854);
INSERT INTO public.product (product_id, color, size, price) VALUES (86, 'Khaki', '2XL', 1085);
INSERT INTO public.product (product_id, color, size, price) VALUES (87, 'Orange', '3XL', 738);
INSERT INTO public.product (product_id, color, size, price) VALUES (88, 'Green', '2XL', 530);
INSERT INTO public.product (product_id, color, size, price) VALUES (89, 'Purple', '3XL', 945);
INSERT INTO public.product (product_id, color, size, price) VALUES (90, 'Orange', 'XS', 537);
INSERT INTO public.product (product_id, color, size, price) VALUES (91, 'Maroon', 'L', 1437);
INSERT INTO public.product (product_id, color, size, price) VALUES (92, 'Goldenrod', 'M', 428);
INSERT INTO public.product (product_id, color, size, price) VALUES (93, 'Violet', 'XL', 248);
INSERT INTO public.product (product_id, color, size, price) VALUES (94, 'Violet', '3XL', 680);
INSERT INTO public.product (product_id, color, size, price) VALUES (95, 'Orange', '2XL', 1497);
INSERT INTO public.product (product_id, color, size, price) VALUES (96, 'Blue', 'XL', 696);
INSERT INTO public.product (product_id, color, size, price) VALUES (97, 'Fuscia', 'XL', 1275);
INSERT INTO public.product (product_id, color, size, price) VALUES (98, 'Goldenrod', 'XL', 705);
INSERT INTO public.product (product_id, color, size, price) VALUES (99, 'Turquoise', 'XS', 1421);
INSERT INTO public.product (product_id, color, size, price) VALUES (100, 'Violet', 'S', 901);
INSERT INTO public.product (product_id, color, size, price) VALUES (101, 'Maroon', 'XS', 1366);
INSERT INTO public.product (product_id, color, size, price) VALUES (102, 'Violet', 'XS', 493);
INSERT INTO public.product (product_id, color, size, price) VALUES (103, 'Khaki', 'L', 1179);
INSERT INTO public.product (product_id, color, size, price) VALUES (104, 'Mauv', 'L', 907);
INSERT INTO public.product (product_id, color, size, price) VALUES (105, 'Crimson', 'S', 1029);
INSERT INTO public.product (product_id, color, size, price) VALUES (106, 'Puce', 'XS', 739);
INSERT INTO public.product (product_id, color, size, price) VALUES (107, 'Mauv', '3XL', 999);
INSERT INTO public.product (product_id, color, size, price) VALUES (108, 'Goldenrod', '3XL', 778);
INSERT INTO public.product (product_id, color, size, price) VALUES (109, 'Maroon', 'M', 496);
INSERT INTO public.product (product_id, color, size, price) VALUES (110, 'Green', 'L', 1465);
INSERT INTO public.product (product_id, color, size, price) VALUES (111, 'Aquamarine', '2XL', 1047);
INSERT INTO public.product (product_id, color, size, price) VALUES (112, 'Indigo', 'XL', 1428);
INSERT INTO public.product (product_id, color, size, price) VALUES (113, 'Turquoise', 'M', 1495);
INSERT INTO public.product (product_id, color, size, price) VALUES (114, 'Maroon', 'XL', 343);
INSERT INTO public.product (product_id, color, size, price) VALUES (115, 'Maroon', 'S', 699);
INSERT INTO public.product (product_id, color, size, price) VALUES (116, 'Red', 'M', 1100);
INSERT INTO public.product (product_id, color, size, price) VALUES (117, 'Goldenrod', '2XL', 1475);
INSERT INTO public.product (product_id, color, size, price) VALUES (118, 'Red', '2XL', 822);
INSERT INTO public.product (product_id, color, size, price) VALUES (119, 'Violet', '2XL', 506);
INSERT INTO public.product (product_id, color, size, price) VALUES (120, 'Crimson', 'L', 882);
INSERT INTO public.product (product_id, color, size, price) VALUES (121, 'Puce', 'S', 312);
INSERT INTO public.product (product_id, color, size, price) VALUES (122, 'Orange', '3XL', 985);
INSERT INTO public.product (product_id, color, size, price) VALUES (123, 'Puce', '3XL', 734);
INSERT INTO public.product (product_id, color, size, price) VALUES (124, 'Blue', 'M', 664);
INSERT INTO public.product (product_id, color, size, price) VALUES (125, 'Violet', 'M', 339);
INSERT INTO public.product (product_id, color, size, price) VALUES (126, 'Turquoise', '2XL', 1090);
INSERT INTO public.product (product_id, color, size, price) VALUES (127, 'Orange', 'L', 560);
INSERT INTO public.product (product_id, color, size, price) VALUES (128, 'Puce', '3XL', 1113);
INSERT INTO public.product (product_id, color, size, price) VALUES (129, 'Pink', 'XL', 893);
INSERT INTO public.product (product_id, color, size, price) VALUES (130, 'Orange', 'XS', 687);
INSERT INTO public.product (product_id, color, size, price) VALUES (131, 'Fuscia', 'L', 786);
INSERT INTO public.product (product_id, color, size, price) VALUES (132, 'Mauv', 'XL', 1197);
INSERT INTO public.product (product_id, color, size, price) VALUES (133, 'Purple', '3XL', 231);
INSERT INTO public.product (product_id, color, size, price) VALUES (134, 'Blue', '2XL', 474);
INSERT INTO public.product (product_id, color, size, price) VALUES (135, 'Yellow', '2XL', 1157);
INSERT INTO public.product (product_id, color, size, price) VALUES (136, 'Violet', '3XL', 1382);
INSERT INTO public.product (product_id, color, size, price) VALUES (137, 'Aquamarine', '3XL', 891);
INSERT INTO public.product (product_id, color, size, price) VALUES (138, 'Blue', 'L', 662);
INSERT INTO public.product (product_id, color, size, price) VALUES (139, 'Red', 'S', 505);
INSERT INTO public.product (product_id, color, size, price) VALUES (140, 'Maroon', '2XL', 860);
INSERT INTO public.product (product_id, color, size, price) VALUES (141, 'Khaki', 'L', 442);
INSERT INTO public.product (product_id, color, size, price) VALUES (142, 'Orange', '2XL', 1302);
INSERT INTO public.product (product_id, color, size, price) VALUES (143, 'Green', 'L', 241);
INSERT INTO public.product (product_id, color, size, price) VALUES (144, 'Yellow', 'M', 253);
INSERT INTO public.product (product_id, color, size, price) VALUES (145, 'Blue', 'XL', 409);
INSERT INTO public.product (product_id, color, size, price) VALUES (146, 'Purple', 'M', 650);
INSERT INTO public.product (product_id, color, size, price) VALUES (147, 'Green', '2XL', 1164);
INSERT INTO public.product (product_id, color, size, price) VALUES (148, 'Pink', 'XS', 656);
INSERT INTO public.product (product_id, color, size, price) VALUES (149, 'Pink', 'XL', 576);
INSERT INTO public.product (product_id, color, size, price) VALUES (150, 'Aquamarine', 'XS', 799);
INSERT INTO public.product (product_id, color, size, price) VALUES (151, 'Mauv', '3XL', 669);
INSERT INTO public.product (product_id, color, size, price) VALUES (152, 'Green', 'XS', 1493);
INSERT INTO public.product (product_id, color, size, price) VALUES (153, 'Blue', 'L', 437);
INSERT INTO public.product (product_id, color, size, price) VALUES (154, 'Khaki', '2XL', 542);
INSERT INTO public.product (product_id, color, size, price) VALUES (155, 'Pink', '3XL', 150);
INSERT INTO public.product (product_id, color, size, price) VALUES (156, 'Yellow', 'XS', 1236);
INSERT INTO public.product (product_id, color, size, price) VALUES (157, 'Turquoise', '2XL', 877);
INSERT INTO public.product (product_id, color, size, price) VALUES (158, 'Crimson', 'XS', 861);
INSERT INTO public.product (product_id, color, size, price) VALUES (159, 'Yellow', 'M', 872);
INSERT INTO public.product (product_id, color, size, price) VALUES (160, 'Pink', 'XL', 1082);
INSERT INTO public.product (product_id, color, size, price) VALUES (161, 'Aquamarine', 'XL', 805);
INSERT INTO public.product (product_id, color, size, price) VALUES (162, 'Orange', 'XS', 292);
INSERT INTO public.product (product_id, color, size, price) VALUES (163, 'Violet', 'S', 318);
INSERT INTO public.product (product_id, color, size, price) VALUES (164, 'Green', 'L', 458);
INSERT INTO public.product (product_id, color, size, price) VALUES (165, 'Fuscia', 'M', 701);
INSERT INTO public.product (product_id, color, size, price) VALUES (166, 'Crimson', 'M', 634);
INSERT INTO public.product (product_id, color, size, price) VALUES (167, 'Fuscia', 'XS', 392);
INSERT INTO public.product (product_id, color, size, price) VALUES (168, 'Violet', 'L', 716);
INSERT INTO public.product (product_id, color, size, price) VALUES (169, 'Crimson', 'M', 1368);
INSERT INTO public.product (product_id, color, size, price) VALUES (170, 'Blue', 'XS', 988);
INSERT INTO public.product (product_id, color, size, price) VALUES (171, 'Fuscia', 'XS', 1362);
INSERT INTO public.product (product_id, color, size, price) VALUES (172, 'Crimson', 'L', 628);
INSERT INTO public.product (product_id, color, size, price) VALUES (173, 'Turquoise', 'XS', 771);
INSERT INTO public.product (product_id, color, size, price) VALUES (174, 'Indigo', 'L', 1395);
INSERT INTO public.product (product_id, color, size, price) VALUES (175, 'Yellow', 'L', 675);
INSERT INTO public.product (product_id, color, size, price) VALUES (176, 'Goldenrod', '2XL', 224);
INSERT INTO public.product (product_id, color, size, price) VALUES (177, 'Indigo', 'XS', 1005);
INSERT INTO public.product (product_id, color, size, price) VALUES (178, 'Red', 'L', 450);
INSERT INTO public.product (product_id, color, size, price) VALUES (179, 'Mauv', 'XL', 378);
INSERT INTO public.product (product_id, color, size, price) VALUES (180, 'Puce', 'M', 786);
INSERT INTO public.product (product_id, color, size, price) VALUES (181, 'Puce', 'S', 733);
INSERT INTO public.product (product_id, color, size, price) VALUES (182, 'Orange', '3XL', 627);
INSERT INTO public.product (product_id, color, size, price) VALUES (183, 'Red', 'XS', 1034);
INSERT INTO public.product (product_id, color, size, price) VALUES (184, 'Mauv', 'M', 1109);
INSERT INTO public.product (product_id, color, size, price) VALUES (185, 'Green', 'M', 412);
INSERT INTO public.product (product_id, color, size, price) VALUES (186, 'Maroon', 'XL', 563);
INSERT INTO public.product (product_id, color, size, price) VALUES (187, 'Aquamarine', '2XL', 815);
INSERT INTO public.product (product_id, color, size, price) VALUES (188, 'Goldenrod', 'M', 170);
INSERT INTO public.product (product_id, color, size, price) VALUES (189, 'Violet', 'M', 840);
INSERT INTO public.product (product_id, color, size, price) VALUES (190, 'Mauv', '2XL', 196);
INSERT INTO public.product (product_id, color, size, price) VALUES (191, 'Fuscia', 'L', 209);
INSERT INTO public.product (product_id, color, size, price) VALUES (192, 'Indigo', 'XS', 567);
INSERT INTO public.product (product_id, color, size, price) VALUES (193, 'Fuscia', 'L', 214);
INSERT INTO public.product (product_id, color, size, price) VALUES (194, 'Blue', 'S', 880);
INSERT INTO public.product (product_id, color, size, price) VALUES (195, 'Aquamarine', 'M', 793);
INSERT INTO public.product (product_id, color, size, price) VALUES (196, 'Pink', '2XL', 453);
INSERT INTO public.product (product_id, color, size, price) VALUES (197, 'Blue', 'M', 339);
INSERT INTO public.product (product_id, color, size, price) VALUES (198, 'Crimson', '2XL', 1199);
INSERT INTO public.product (product_id, color, size, price) VALUES (199, 'Mauv', 'M', 1034);
INSERT INTO public.product (product_id, color, size, price) VALUES (200, 'Goldenrod', 'XL', 965);
INSERT INTO public.product (product_id, color, size, price) VALUES (201, 'Goldenrod', 'S', 336);
INSERT INTO public.product (product_id, color, size, price) VALUES (202, 'Pink', '3XL', 503);
INSERT INTO public.product (product_id, color, size, price) VALUES (203, 'Turquoise', 'S', 576);
INSERT INTO public.product (product_id, color, size, price) VALUES (204, 'Crimson', 'M', 1078);
INSERT INTO public.product (product_id, color, size, price) VALUES (205, 'Red', 'M', 162);
INSERT INTO public.product (product_id, color, size, price) VALUES (206, 'Yellow', '3XL', 1155);
INSERT INTO public.product (product_id, color, size, price) VALUES (207, 'Pink', 'M', 430);
INSERT INTO public.product (product_id, color, size, price) VALUES (208, 'Puce', 'XL', 632);
INSERT INTO public.product (product_id, color, size, price) VALUES (209, 'Red', 'XS', 891);
INSERT INTO public.product (product_id, color, size, price) VALUES (210, 'Blue', 'XL', 355);
INSERT INTO public.product (product_id, color, size, price) VALUES (211, 'Red', '3XL', 1098);
INSERT INTO public.product (product_id, color, size, price) VALUES (212, 'Blue', 'S', 939);
INSERT INTO public.product (product_id, color, size, price) VALUES (213, 'Aquamarine', 'L', 476);
INSERT INTO public.product (product_id, color, size, price) VALUES (214, 'Aquamarine', 'M', 1341);
INSERT INTO public.product (product_id, color, size, price) VALUES (215, 'Yellow', 'XS', 1343);
INSERT INTO public.product (product_id, color, size, price) VALUES (216, 'Violet', '2XL', 265);
INSERT INTO public.product (product_id, color, size, price) VALUES (217, 'Fuscia', 'S', 293);
INSERT INTO public.product (product_id, color, size, price) VALUES (218, 'Aquamarine', 'L', 525);
INSERT INTO public.product (product_id, color, size, price) VALUES (219, 'Red', '2XL', 1162);
INSERT INTO public.product (product_id, color, size, price) VALUES (220, 'Violet', '2XL', 524);
INSERT INTO public.product (product_id, color, size, price) VALUES (221, 'Turquoise', 'M', 1197);
INSERT INTO public.product (product_id, color, size, price) VALUES (222, 'Blue', 'L', 572);
INSERT INTO public.product (product_id, color, size, price) VALUES (223, 'Goldenrod', 'L', 170);
INSERT INTO public.product (product_id, color, size, price) VALUES (224, 'Orange', 'XL', 157);
INSERT INTO public.product (product_id, color, size, price) VALUES (225, 'Crimson', 'L', 1282);
INSERT INTO public.product (product_id, color, size, price) VALUES (226, 'Aquamarine', 'L', 924);
INSERT INTO public.product (product_id, color, size, price) VALUES (227, 'Orange', '3XL', 1460);
INSERT INTO public.product (product_id, color, size, price) VALUES (228, 'Teal', 'M', 458);
INSERT INTO public.product (product_id, color, size, price) VALUES (229, 'Yellow', 'M', 430);
INSERT INTO public.product (product_id, color, size, price) VALUES (230, 'Green', 'XL', 1306);
INSERT INTO public.product (product_id, color, size, price) VALUES (231, 'Purple', 'M', 461);
INSERT INTO public.product (product_id, color, size, price) VALUES (232, 'Indigo', '2XL', 779);
INSERT INTO public.product (product_id, color, size, price) VALUES (233, 'Khaki', '3XL', 1027);
INSERT INTO public.product (product_id, color, size, price) VALUES (234, 'Mauv', 'XS', 1018);
INSERT INTO public.product (product_id, color, size, price) VALUES (235, 'Khaki', 'XS', 329);
INSERT INTO public.product (product_id, color, size, price) VALUES (236, 'Teal', 'S', 1145);
INSERT INTO public.product (product_id, color, size, price) VALUES (237, 'Aquamarine', 'XL', 1150);
INSERT INTO public.product (product_id, color, size, price) VALUES (238, 'Yellow', 'XS', 960);
INSERT INTO public.product (product_id, color, size, price) VALUES (239, 'Blue', '3XL', 988);
INSERT INTO public.product (product_id, color, size, price) VALUES (240, 'Puce', 'XL', 318);
INSERT INTO public.product (product_id, color, size, price) VALUES (241, 'Mauv', 'L', 1008);
INSERT INTO public.product (product_id, color, size, price) VALUES (242, 'Fuscia', 'S', 182);
INSERT INTO public.product (product_id, color, size, price) VALUES (243, 'Goldenrod', 'XS', 219);
INSERT INTO public.product (product_id, color, size, price) VALUES (244, 'Maroon', 'M', 506);
INSERT INTO public.product (product_id, color, size, price) VALUES (245, 'Orange', 'M', 1194);
INSERT INTO public.product (product_id, color, size, price) VALUES (246, 'Teal', 'XS', 539);
INSERT INTO public.product (product_id, color, size, price) VALUES (247, 'Puce', 'M', 1307);
INSERT INTO public.product (product_id, color, size, price) VALUES (248, 'Purple', '2XL', 1105);
INSERT INTO public.product (product_id, color, size, price) VALUES (249, 'Green', 'XS', 503);
INSERT INTO public.product (product_id, color, size, price) VALUES (250, 'Turquoise', 'XL', 220);
INSERT INTO public.product (product_id, color, size, price) VALUES (251, 'Blue', 'M', 265);
INSERT INTO public.product (product_id, color, size, price) VALUES (252, 'Goldenrod', 'S', 787);
INSERT INTO public.product (product_id, color, size, price) VALUES (253, 'Crimson', 'L', 172);
INSERT INTO public.product (product_id, color, size, price) VALUES (254, 'Maroon', 'XL', 577);
INSERT INTO public.product (product_id, color, size, price) VALUES (255, 'Indigo', 'L', 607);
INSERT INTO public.product (product_id, color, size, price) VALUES (256, 'Goldenrod', 'M', 671);
INSERT INTO public.product (product_id, color, size, price) VALUES (257, 'Mauv', 'S', 902);
INSERT INTO public.product (product_id, color, size, price) VALUES (258, 'Crimson', 'L', 541);
INSERT INTO public.product (product_id, color, size, price) VALUES (259, 'Red', 'S', 1407);
INSERT INTO public.product (product_id, color, size, price) VALUES (260, 'Teal', 'M', 776);
INSERT INTO public.product (product_id, color, size, price) VALUES (261, 'Puce', 'M', 1465);
INSERT INTO public.product (product_id, color, size, price) VALUES (262, 'Red', 'M', 1092);
INSERT INTO public.product (product_id, color, size, price) VALUES (263, 'Goldenrod', 'XS', 1111);
INSERT INTO public.product (product_id, color, size, price) VALUES (264, 'Aquamarine', '3XL', 1053);
INSERT INTO public.product (product_id, color, size, price) VALUES (265, 'Teal', 'S', 604);
INSERT INTO public.product (product_id, color, size, price) VALUES (266, 'Goldenrod', 'L', 842);
INSERT INTO public.product (product_id, color, size, price) VALUES (267, 'Maroon', '2XL', 1460);
INSERT INTO public.product (product_id, color, size, price) VALUES (268, 'Orange', 'M', 1001);
INSERT INTO public.product (product_id, color, size, price) VALUES (269, 'Pink', 'XS', 432);
INSERT INTO public.product (product_id, color, size, price) VALUES (270, 'Red', 'L', 884);
INSERT INTO public.product (product_id, color, size, price) VALUES (271, 'Violet', 'XS', 1122);
INSERT INTO public.product (product_id, color, size, price) VALUES (272, 'Turquoise', '2XL', 308);
INSERT INTO public.product (product_id, color, size, price) VALUES (273, 'Aquamarine', '2XL', 1450);
INSERT INTO public.product (product_id, color, size, price) VALUES (274, 'Red', 'XS', 598);
INSERT INTO public.product (product_id, color, size, price) VALUES (275, 'Orange', 'XL', 1423);
INSERT INTO public.product (product_id, color, size, price) VALUES (276, 'Mauv', 'M', 233);
INSERT INTO public.product (product_id, color, size, price) VALUES (277, 'Indigo', 'XS', 1083);
INSERT INTO public.product (product_id, color, size, price) VALUES (278, 'Violet', 'XS', 1216);
INSERT INTO public.product (product_id, color, size, price) VALUES (279, 'Purple', 'S', 1219);
INSERT INTO public.product (product_id, color, size, price) VALUES (280, 'Puce', 'S', 485);
INSERT INTO public.product (product_id, color, size, price) VALUES (281, 'Purple', 'XS', 719);
INSERT INTO public.product (product_id, color, size, price) VALUES (282, 'Red', '2XL', 1353);
INSERT INTO public.product (product_id, color, size, price) VALUES (283, 'Puce', 'XL', 543);
INSERT INTO public.product (product_id, color, size, price) VALUES (284, 'Maroon', 'M', 1267);
INSERT INTO public.product (product_id, color, size, price) VALUES (285, 'Pink', '2XL', 746);
INSERT INTO public.product (product_id, color, size, price) VALUES (286, 'Khaki', 'L', 900);
INSERT INTO public.product (product_id, color, size, price) VALUES (287, 'Puce', 'S', 457);
INSERT INTO public.product (product_id, color, size, price) VALUES (288, 'Puce', 'XS', 943);
INSERT INTO public.product (product_id, color, size, price) VALUES (289, 'Indigo', 'M', 1429);
INSERT INTO public.product (product_id, color, size, price) VALUES (290, 'Orange', '3XL', 431);
INSERT INTO public.product (product_id, color, size, price) VALUES (291, 'Fuscia', 'M', 783);
INSERT INTO public.product (product_id, color, size, price) VALUES (292, 'Yellow', 'XS', 1151);
INSERT INTO public.product (product_id, color, size, price) VALUES (293, 'Aquamarine', 'S', 1407);
INSERT INTO public.product (product_id, color, size, price) VALUES (294, 'Mauv', 'S', 1482);
INSERT INTO public.product (product_id, color, size, price) VALUES (295, 'Teal', '2XL', 893);
INSERT INTO public.product (product_id, color, size, price) VALUES (296, 'Yellow', '2XL', 916);
INSERT INTO public.product (product_id, color, size, price) VALUES (297, 'Red', 'XS', 605);
INSERT INTO public.product (product_id, color, size, price) VALUES (298, 'Green', 'M', 1104);
INSERT INTO public.product (product_id, color, size, price) VALUES (299, 'Green', 'L', 554);
INSERT INTO public.product (product_id, color, size, price) VALUES (300, 'Mauv', 'S', 1179);
INSERT INTO public.product (product_id, color, size, price) VALUES (301, 'Goldenrod', 'M', 315);
INSERT INTO public.product (product_id, color, size, price) VALUES (302, 'Purple', 'XL', 662);
INSERT INTO public.product (product_id, color, size, price) VALUES (303, 'Purple', 'XS', 157);
INSERT INTO public.product (product_id, color, size, price) VALUES (304, 'Mauv', 'M', 867);
INSERT INTO public.product (product_id, color, size, price) VALUES (305, 'Violet', 'L', 278);
INSERT INTO public.product (product_id, color, size, price) VALUES (306, 'Khaki', '2XL', 1394);
INSERT INTO public.product (product_id, color, size, price) VALUES (307, 'Turquoise', 'XL', 1178);
INSERT INTO public.product (product_id, color, size, price) VALUES (308, 'Teal', 'M', 892);
INSERT INTO public.product (product_id, color, size, price) VALUES (309, 'Violet', 'M', 384);
INSERT INTO public.product (product_id, color, size, price) VALUES (310, 'Goldenrod', '3XL', 1271);
INSERT INTO public.product (product_id, color, size, price) VALUES (311, 'Maroon', 'XS', 749);
INSERT INTO public.product (product_id, color, size, price) VALUES (312, 'Goldenrod', '3XL', 354);
INSERT INTO public.product (product_id, color, size, price) VALUES (313, 'Indigo', 'XS', 756);
INSERT INTO public.product (product_id, color, size, price) VALUES (314, 'Blue', 'S', 255);
INSERT INTO public.product (product_id, color, size, price) VALUES (315, 'Mauv', '3XL', 1227);
INSERT INTO public.product (product_id, color, size, price) VALUES (316, 'Pink', '2XL', 623);
INSERT INTO public.product (product_id, color, size, price) VALUES (317, 'Fuscia', 'L', 286);
INSERT INTO public.product (product_id, color, size, price) VALUES (318, 'Purple', 'L', 947);
INSERT INTO public.product (product_id, color, size, price) VALUES (319, 'Crimson', 'L', 274);
INSERT INTO public.product (product_id, color, size, price) VALUES (320, 'Mauv', 'XL', 750);
INSERT INTO public.product (product_id, color, size, price) VALUES (321, 'Green', 'M', 327);
INSERT INTO public.product (product_id, color, size, price) VALUES (322, 'Khaki', 'XS', 520);
INSERT INTO public.product (product_id, color, size, price) VALUES (323, 'Orange', 'S', 1135);
INSERT INTO public.product (product_id, color, size, price) VALUES (324, 'Green', 'M', 574);
INSERT INTO public.product (product_id, color, size, price) VALUES (325, 'Indigo', 'M', 738);
INSERT INTO public.product (product_id, color, size, price) VALUES (326, 'Blue', 'S', 766);
INSERT INTO public.product (product_id, color, size, price) VALUES (327, 'Red', 'M', 910);
INSERT INTO public.product (product_id, color, size, price) VALUES (328, 'Orange', 'XS', 753);
INSERT INTO public.product (product_id, color, size, price) VALUES (329, 'Khaki', 'L', 837);
INSERT INTO public.product (product_id, color, size, price) VALUES (330, 'Mauv', 'M', 792);
INSERT INTO public.product (product_id, color, size, price) VALUES (331, 'Purple', 'XS', 937);
INSERT INTO public.product (product_id, color, size, price) VALUES (332, 'Crimson', '3XL', 542);
INSERT INTO public.product (product_id, color, size, price) VALUES (333, 'Fuscia', 'L', 1111);
INSERT INTO public.product (product_id, color, size, price) VALUES (334, 'Aquamarine', 'M', 813);
INSERT INTO public.product (product_id, color, size, price) VALUES (335, 'Orange', '3XL', 762);
INSERT INTO public.product (product_id, color, size, price) VALUES (336, 'Khaki', 'S', 1215);
INSERT INTO public.product (product_id, color, size, price) VALUES (337, 'Fuscia', 'L', 1377);
INSERT INTO public.product (product_id, color, size, price) VALUES (338, 'Violet', '3XL', 890);
INSERT INTO public.product (product_id, color, size, price) VALUES (339, 'Pink', 'L', 747);
INSERT INTO public.product (product_id, color, size, price) VALUES (340, 'Indigo', '2XL', 933);
INSERT INTO public.product (product_id, color, size, price) VALUES (341, 'Pink', 'S', 804);
INSERT INTO public.product (product_id, color, size, price) VALUES (342, 'Teal', 'M', 398);
INSERT INTO public.product (product_id, color, size, price) VALUES (343, 'Fuscia', 'L', 715);
INSERT INTO public.product (product_id, color, size, price) VALUES (344, 'Blue', 'XL', 601);
INSERT INTO public.product (product_id, color, size, price) VALUES (345, 'Red', '3XL', 978);
INSERT INTO public.product (product_id, color, size, price) VALUES (346, 'Crimson', 'S', 594);
INSERT INTO public.product (product_id, color, size, price) VALUES (347, 'Red', 'S', 793);
INSERT INTO public.product (product_id, color, size, price) VALUES (348, 'Indigo', 'M', 609);
INSERT INTO public.product (product_id, color, size, price) VALUES (349, 'Mauv', 'XL', 777);
INSERT INTO public.product (product_id, color, size, price) VALUES (350, 'Mauv', 'XL', 1220);
INSERT INTO public.product (product_id, color, size, price) VALUES (351, 'Mauv', '3XL', 265);
INSERT INTO public.product (product_id, color, size, price) VALUES (352, 'Green', '3XL', 390);
INSERT INTO public.product (product_id, color, size, price) VALUES (353, 'Violet', 'M', 310);
INSERT INTO public.product (product_id, color, size, price) VALUES (354, 'Orange', 'L', 1477);
INSERT INTO public.product (product_id, color, size, price) VALUES (355, 'Fuscia', 'M', 1234);
INSERT INTO public.product (product_id, color, size, price) VALUES (356, 'Maroon', 'XL', 619);
INSERT INTO public.product (product_id, color, size, price) VALUES (357, 'Aquamarine', 'XL', 698);
INSERT INTO public.product (product_id, color, size, price) VALUES (358, 'Crimson', '3XL', 444);
INSERT INTO public.product (product_id, color, size, price) VALUES (359, 'Aquamarine', '3XL', 741);
INSERT INTO public.product (product_id, color, size, price) VALUES (360, 'Red', 'S', 291);
INSERT INTO public.product (product_id, color, size, price) VALUES (361, 'Khaki', '2XL', 233);
INSERT INTO public.product (product_id, color, size, price) VALUES (362, 'Teal', 'XL', 786);
INSERT INTO public.product (product_id, color, size, price) VALUES (363, 'Crimson', 'M', 1418);
INSERT INTO public.product (product_id, color, size, price) VALUES (364, 'Teal', 'M', 1337);
INSERT INTO public.product (product_id, color, size, price) VALUES (365, 'Crimson', 'L', 442);
INSERT INTO public.product (product_id, color, size, price) VALUES (366, 'Indigo', 'M', 1254);
INSERT INTO public.product (product_id, color, size, price) VALUES (367, 'Purple', 'XL', 806);
INSERT INTO public.product (product_id, color, size, price) VALUES (368, 'Pink', 'S', 1047);
INSERT INTO public.product (product_id, color, size, price) VALUES (369, 'Indigo', 'XL', 1450);
INSERT INTO public.product (product_id, color, size, price) VALUES (370, 'Yellow', 'XL', 525);
INSERT INTO public.product (product_id, color, size, price) VALUES (371, 'Blue', 'XS', 980);
INSERT INTO public.product (product_id, color, size, price) VALUES (372, 'Violet', 'XL', 909);
INSERT INTO public.product (product_id, color, size, price) VALUES (373, 'Turquoise', 'S', 942);
INSERT INTO public.product (product_id, color, size, price) VALUES (374, 'Crimson', 'S', 1091);
INSERT INTO public.product (product_id, color, size, price) VALUES (375, 'Turquoise', 'XL', 1289);
INSERT INTO public.product (product_id, color, size, price) VALUES (376, 'Goldenrod', 'M', 237);
INSERT INTO public.product (product_id, color, size, price) VALUES (377, 'Orange', '2XL', 1023);
INSERT INTO public.product (product_id, color, size, price) VALUES (378, 'Khaki', 'XL', 315);
INSERT INTO public.product (product_id, color, size, price) VALUES (379, 'Fuscia', 'M', 1297);
INSERT INTO public.product (product_id, color, size, price) VALUES (380, 'Aquamarine', '3XL', 1426);
INSERT INTO public.product (product_id, color, size, price) VALUES (381, 'Red', '3XL', 321);
INSERT INTO public.product (product_id, color, size, price) VALUES (382, 'Khaki', 'XS', 354);
INSERT INTO public.product (product_id, color, size, price) VALUES (383, 'Khaki', 'XL', 1201);
INSERT INTO public.product (product_id, color, size, price) VALUES (384, 'Pink', '2XL', 632);
INSERT INTO public.product (product_id, color, size, price) VALUES (385, 'Khaki', '3XL', 730);
INSERT INTO public.product (product_id, color, size, price) VALUES (386, 'Turquoise', 'S', 392);
INSERT INTO public.product (product_id, color, size, price) VALUES (387, 'Red', 'XS', 1059);
INSERT INTO public.product (product_id, color, size, price) VALUES (388, 'Teal', 'L', 411);
INSERT INTO public.product (product_id, color, size, price) VALUES (389, 'Teal', 'M', 1063);
INSERT INTO public.product (product_id, color, size, price) VALUES (390, 'Blue', 'S', 465);
INSERT INTO public.product (product_id, color, size, price) VALUES (391, 'Fuscia', 'XL', 943);
INSERT INTO public.product (product_id, color, size, price) VALUES (392, 'Crimson', '3XL', 1180);
INSERT INTO public.product (product_id, color, size, price) VALUES (393, 'Purple', 'XL', 935);
INSERT INTO public.product (product_id, color, size, price) VALUES (394, 'Orange', 'L', 247);
INSERT INTO public.product (product_id, color, size, price) VALUES (395, 'Aquamarine', 'S', 257);
INSERT INTO public.product (product_id, color, size, price) VALUES (396, 'Pink', 'XS', 587);
INSERT INTO public.product (product_id, color, size, price) VALUES (397, 'Blue', 'S', 528);
INSERT INTO public.product (product_id, color, size, price) VALUES (398, 'Orange', 'S', 1455);
INSERT INTO public.product (product_id, color, size, price) VALUES (399, 'Orange', 'S', 1357);
INSERT INTO public.product (product_id, color, size, price) VALUES (400, 'Green', 'M', 751);
INSERT INTO public.product (product_id, color, size, price) VALUES (401, 'Blue', 'XS', 575);
INSERT INTO public.product (product_id, color, size, price) VALUES (402, 'Blue', 'L', 559);
INSERT INTO public.product (product_id, color, size, price) VALUES (403, 'Goldenrod', 'XS', 1089);
INSERT INTO public.product (product_id, color, size, price) VALUES (404, 'Turquoise', 'L', 560);
INSERT INTO public.product (product_id, color, size, price) VALUES (405, 'Indigo', '3XL', 1349);
INSERT INTO public.product (product_id, color, size, price) VALUES (406, 'Indigo', 'XL', 491);
INSERT INTO public.product (product_id, color, size, price) VALUES (407, 'Turquoise', 'XL', 1270);
INSERT INTO public.product (product_id, color, size, price) VALUES (408, 'Violet', 'L', 1140);
INSERT INTO public.product (product_id, color, size, price) VALUES (409, 'Crimson', 'L', 371);
INSERT INTO public.product (product_id, color, size, price) VALUES (410, 'Purple', 'S', 644);
INSERT INTO public.product (product_id, color, size, price) VALUES (411, 'Violet', 'XL', 194);
INSERT INTO public.product (product_id, color, size, price) VALUES (412, 'Aquamarine', '3XL', 1135);
INSERT INTO public.product (product_id, color, size, price) VALUES (413, 'Aquamarine', '3XL', 812);
INSERT INTO public.product (product_id, color, size, price) VALUES (414, 'Indigo', 'M', 1277);
INSERT INTO public.product (product_id, color, size, price) VALUES (415, 'Red', '3XL', 1185);
INSERT INTO public.product (product_id, color, size, price) VALUES (416, 'Crimson', '3XL', 1289);
INSERT INTO public.product (product_id, color, size, price) VALUES (417, 'Turquoise', 'L', 1239);
INSERT INTO public.product (product_id, color, size, price) VALUES (418, 'Teal', 'S', 284);
INSERT INTO public.product (product_id, color, size, price) VALUES (419, 'Green', '3XL', 1203);
INSERT INTO public.product (product_id, color, size, price) VALUES (420, 'Fuscia', 'XL', 1122);
INSERT INTO public.product (product_id, color, size, price) VALUES (421, 'Fuscia', 'S', 431);
INSERT INTO public.product (product_id, color, size, price) VALUES (422, 'Red', 'XS', 475);
INSERT INTO public.product (product_id, color, size, price) VALUES (423, 'Red', 'S', 1330);
INSERT INTO public.product (product_id, color, size, price) VALUES (424, 'Mauv', 'XS', 413);
INSERT INTO public.product (product_id, color, size, price) VALUES (425, 'Orange', '3XL', 399);
INSERT INTO public.product (product_id, color, size, price) VALUES (426, 'Puce', 'M', 902);
INSERT INTO public.product (product_id, color, size, price) VALUES (427, 'Goldenrod', '3XL', 992);
INSERT INTO public.product (product_id, color, size, price) VALUES (428, 'Green', '3XL', 1220);
INSERT INTO public.product (product_id, color, size, price) VALUES (429, 'Orange', 'XS', 1376);
INSERT INTO public.product (product_id, color, size, price) VALUES (430, 'Purple', '2XL', 373);
INSERT INTO public.product (product_id, color, size, price) VALUES (431, 'Orange', 'L', 1266);
INSERT INTO public.product (product_id, color, size, price) VALUES (432, 'Violet', 'M', 1141);
INSERT INTO public.product (product_id, color, size, price) VALUES (433, 'Purple', 'XL', 1442);
INSERT INTO public.product (product_id, color, size, price) VALUES (434, 'Fuscia', 'S', 379);
INSERT INTO public.product (product_id, color, size, price) VALUES (435, 'Red', 'XL', 1041);
INSERT INTO public.product (product_id, color, size, price) VALUES (436, 'Turquoise', 'L', 166);
INSERT INTO public.product (product_id, color, size, price) VALUES (437, 'Turquoise', '3XL', 694);
INSERT INTO public.product (product_id, color, size, price) VALUES (438, 'Pink', 'XL', 1307);
INSERT INTO public.product (product_id, color, size, price) VALUES (439, 'Pink', 'M', 414);
INSERT INTO public.product (product_id, color, size, price) VALUES (440, 'Khaki', '3XL', 374);
INSERT INTO public.product (product_id, color, size, price) VALUES (441, 'Turquoise', '2XL', 313);
INSERT INTO public.product (product_id, color, size, price) VALUES (442, 'Purple', '2XL', 1067);
INSERT INTO public.product (product_id, color, size, price) VALUES (443, 'Violet', 'XL', 1137);
INSERT INTO public.product (product_id, color, size, price) VALUES (444, 'Maroon', 'M', 417);
INSERT INTO public.product (product_id, color, size, price) VALUES (445, 'Blue', '3XL', 252);
INSERT INTO public.product (product_id, color, size, price) VALUES (446, 'Crimson', 'S', 1306);
INSERT INTO public.product (product_id, color, size, price) VALUES (447, 'Mauv', '2XL', 533);
INSERT INTO public.product (product_id, color, size, price) VALUES (448, 'Blue', 'XS', 1450);
INSERT INTO public.product (product_id, color, size, price) VALUES (449, 'Fuscia', '3XL', 487);
INSERT INTO public.product (product_id, color, size, price) VALUES (450, 'Khaki', 'XS', 1162);
INSERT INTO public.product (product_id, color, size, price) VALUES (451, 'Goldenrod', 'XS', 1177);
INSERT INTO public.product (product_id, color, size, price) VALUES (452, 'Violet', 'L', 1072);
INSERT INTO public.product (product_id, color, size, price) VALUES (453, 'Indigo', 'XS', 1490);
INSERT INTO public.product (product_id, color, size, price) VALUES (454, 'Violet', 'XS', 1463);
INSERT INTO public.product (product_id, color, size, price) VALUES (455, 'Teal', 'S', 1492);
INSERT INTO public.product (product_id, color, size, price) VALUES (456, 'Mauv', '3XL', 705);
INSERT INTO public.product (product_id, color, size, price) VALUES (457, 'Violet', 'L', 323);
INSERT INTO public.product (product_id, color, size, price) VALUES (458, 'Aquamarine', 'M', 381);
INSERT INTO public.product (product_id, color, size, price) VALUES (459, 'Crimson', '3XL', 465);
INSERT INTO public.product (product_id, color, size, price) VALUES (460, 'Purple', 'M', 1236);
INSERT INTO public.product (product_id, color, size, price) VALUES (461, 'Maroon', 'L', 1414);
INSERT INTO public.product (product_id, color, size, price) VALUES (462, 'Orange', '2XL', 605);
INSERT INTO public.product (product_id, color, size, price) VALUES (463, 'Teal', 'S', 1461);
INSERT INTO public.product (product_id, color, size, price) VALUES (464, 'Fuscia', '3XL', 1335);
INSERT INTO public.product (product_id, color, size, price) VALUES (465, 'Blue', '3XL', 296);
INSERT INTO public.product (product_id, color, size, price) VALUES (466, 'Yellow', '2XL', 736);
INSERT INTO public.product (product_id, color, size, price) VALUES (467, 'Aquamarine', 'XS', 1478);
INSERT INTO public.product (product_id, color, size, price) VALUES (468, 'Orange', 'XL', 767);
INSERT INTO public.product (product_id, color, size, price) VALUES (469, 'Crimson', 'XL', 1116);
INSERT INTO public.product (product_id, color, size, price) VALUES (470, 'Blue', '2XL', 310);
INSERT INTO public.product (product_id, color, size, price) VALUES (471, 'Puce', 'XL', 1485);
INSERT INTO public.product (product_id, color, size, price) VALUES (472, 'Teal', 'L', 1135);
INSERT INTO public.product (product_id, color, size, price) VALUES (473, 'Blue', 'M', 1214);
INSERT INTO public.product (product_id, color, size, price) VALUES (474, 'Purple', '3XL', 1004);
INSERT INTO public.product (product_id, color, size, price) VALUES (475, 'Khaki', 'XL', 685);
INSERT INTO public.product (product_id, color, size, price) VALUES (476, 'Fuscia', 'S', 1397);
INSERT INTO public.product (product_id, color, size, price) VALUES (477, 'Teal', '2XL', 1354);
INSERT INTO public.product (product_id, color, size, price) VALUES (478, 'Puce', 'S', 195);
INSERT INTO public.product (product_id, color, size, price) VALUES (479, 'Yellow', 'XS', 1459);
INSERT INTO public.product (product_id, color, size, price) VALUES (480, 'Violet', 'S', 1223);
INSERT INTO public.product (product_id, color, size, price) VALUES (481, 'Aquamarine', 'XL', 678);
INSERT INTO public.product (product_id, color, size, price) VALUES (482, 'Fuscia', 'L', 809);
INSERT INTO public.product (product_id, color, size, price) VALUES (483, 'Teal', 'M', 687);
INSERT INTO public.product (product_id, color, size, price) VALUES (484, 'Fuscia', 'L', 512);
INSERT INTO public.product (product_id, color, size, price) VALUES (485, 'Khaki', '3XL', 253);
INSERT INTO public.product (product_id, color, size, price) VALUES (486, 'Puce', 'XS', 620);
INSERT INTO public.product (product_id, color, size, price) VALUES (487, 'Blue', 'XL', 1397);
INSERT INTO public.product (product_id, color, size, price) VALUES (488, 'Crimson', 'XS', 682);
INSERT INTO public.product (product_id, color, size, price) VALUES (489, 'Red', 'S', 955);
INSERT INTO public.product (product_id, color, size, price) VALUES (490, 'Violet', 'XS', 220);
INSERT INTO public.product (product_id, color, size, price) VALUES (491, 'Puce', 'XL', 1406);
INSERT INTO public.product (product_id, color, size, price) VALUES (492, 'Fuscia', 'S', 559);
INSERT INTO public.product (product_id, color, size, price) VALUES (493, 'Mauv', 'XS', 487);
INSERT INTO public.product (product_id, color, size, price) VALUES (494, 'Blue', '2XL', 682);
INSERT INTO public.product (product_id, color, size, price) VALUES (495, 'Green', '2XL', 692);
INSERT INTO public.product (product_id, color, size, price) VALUES (496, 'Fuscia', 'XS', 453);
INSERT INTO public.product (product_id, color, size, price) VALUES (497, 'Fuscia', 'M', 1463);
INSERT INTO public.product (product_id, color, size, price) VALUES (498, 'Indigo', 'L', 764);
INSERT INTO public.product (product_id, color, size, price) VALUES (499, 'Puce', 'M', 309);
INSERT INTO public.product (product_id, color, size, price) VALUES (500, 'Puce', '2XL', 333);
INSERT INTO public.product (product_id, color, size, price) VALUES (501, 'Pink', 'L', 780);
INSERT INTO public.product (product_id, color, size, price) VALUES (502, 'Teal', 'L', 530);
INSERT INTO public.product (product_id, color, size, price) VALUES (503, 'Crimson', 'M', 740);
INSERT INTO public.product (product_id, color, size, price) VALUES (504, 'Green', '2XL', 1217);
INSERT INTO public.product (product_id, color, size, price) VALUES (505, 'Yellow', 'XS', 900);
INSERT INTO public.product (product_id, color, size, price) VALUES (506, 'Red', 'L', 1009);
INSERT INTO public.product (product_id, color, size, price) VALUES (507, 'Red', 'S', 909);
INSERT INTO public.product (product_id, color, size, price) VALUES (508, 'Teal', '2XL', 886);
INSERT INTO public.product (product_id, color, size, price) VALUES (509, 'Teal', 'XL', 1087);
INSERT INTO public.product (product_id, color, size, price) VALUES (510, 'Turquoise', 'S', 331);
INSERT INTO public.product (product_id, color, size, price) VALUES (511, 'Orange', '3XL', 500);
INSERT INTO public.product (product_id, color, size, price) VALUES (512, 'Fuscia', 'M', 1271);
INSERT INTO public.product (product_id, color, size, price) VALUES (513, 'Puce', '3XL', 1222);
INSERT INTO public.product (product_id, color, size, price) VALUES (514, 'Puce', 'XS', 1347);
INSERT INTO public.product (product_id, color, size, price) VALUES (515, 'Mauv', 'M', 839);
INSERT INTO public.product (product_id, color, size, price) VALUES (516, 'Green', '3XL', 483);
INSERT INTO public.product (product_id, color, size, price) VALUES (517, 'Fuscia', 'S', 575);
INSERT INTO public.product (product_id, color, size, price) VALUES (518, 'Green', '3XL', 450);
INSERT INTO public.product (product_id, color, size, price) VALUES (519, 'Pink', '3XL', 1300);
INSERT INTO public.product (product_id, color, size, price) VALUES (520, 'Indigo', 'L', 771);
INSERT INTO public.product (product_id, color, size, price) VALUES (521, 'Red', 'L', 447);
INSERT INTO public.product (product_id, color, size, price) VALUES (522, 'Purple', 'XS', 865);
INSERT INTO public.product (product_id, color, size, price) VALUES (523, 'Teal', '3XL', 429);
INSERT INTO public.product (product_id, color, size, price) VALUES (524, 'Mauv', 'M', 423);
INSERT INTO public.product (product_id, color, size, price) VALUES (525, 'Crimson', 'M', 263);
INSERT INTO public.product (product_id, color, size, price) VALUES (526, 'Teal', 'S', 845);
INSERT INTO public.product (product_id, color, size, price) VALUES (527, 'Mauv', '2XL', 1096);
INSERT INTO public.product (product_id, color, size, price) VALUES (528, 'Pink', 'S', 543);
INSERT INTO public.product (product_id, color, size, price) VALUES (529, 'Turquoise', 'L', 1413);
INSERT INTO public.product (product_id, color, size, price) VALUES (530, 'Mauv', 'XL', 378);
INSERT INTO public.product (product_id, color, size, price) VALUES (531, 'Mauv', 'XS', 1140);
INSERT INTO public.product (product_id, color, size, price) VALUES (532, 'Goldenrod', 'S', 942);
INSERT INTO public.product (product_id, color, size, price) VALUES (533, 'Yellow', '3XL', 1003);
INSERT INTO public.product (product_id, color, size, price) VALUES (534, 'Yellow', 'S', 802);
INSERT INTO public.product (product_id, color, size, price) VALUES (535, 'Violet', 'XS', 840);
INSERT INTO public.product (product_id, color, size, price) VALUES (536, 'Indigo', '2XL', 819);
INSERT INTO public.product (product_id, color, size, price) VALUES (537, 'Fuscia', 'S', 1250);
INSERT INTO public.product (product_id, color, size, price) VALUES (538, 'Violet', 'XL', 713);
INSERT INTO public.product (product_id, color, size, price) VALUES (539, 'Teal', 'S', 204);
INSERT INTO public.product (product_id, color, size, price) VALUES (540, 'Indigo', 'M', 377);
INSERT INTO public.product (product_id, color, size, price) VALUES (541, 'Turquoise', 'XS', 1404);
INSERT INTO public.product (product_id, color, size, price) VALUES (542, 'Aquamarine', 'XL', 889);
INSERT INTO public.product (product_id, color, size, price) VALUES (543, 'Orange', '2XL', 1370);
INSERT INTO public.product (product_id, color, size, price) VALUES (544, 'Green', '2XL', 677);
INSERT INTO public.product (product_id, color, size, price) VALUES (545, 'Puce', 'XL', 1425);
INSERT INTO public.product (product_id, color, size, price) VALUES (546, 'Khaki', 'L', 597);
INSERT INTO public.product (product_id, color, size, price) VALUES (547, 'Turquoise', 'XL', 227);
INSERT INTO public.product (product_id, color, size, price) VALUES (548, 'Violet', 'XS', 1240);
INSERT INTO public.product (product_id, color, size, price) VALUES (549, 'Yellow', 'XL', 1268);
INSERT INTO public.product (product_id, color, size, price) VALUES (550, 'Turquoise', 'XL', 280);
INSERT INTO public.product (product_id, color, size, price) VALUES (551, 'Aquamarine', '2XL', 1433);
INSERT INTO public.product (product_id, color, size, price) VALUES (552, 'Crimson', '3XL', 1400);
INSERT INTO public.product (product_id, color, size, price) VALUES (553, 'Aquamarine', '2XL', 322);
INSERT INTO public.product (product_id, color, size, price) VALUES (554, 'Blue', 'XS', 500);
INSERT INTO public.product (product_id, color, size, price) VALUES (555, 'Crimson', 'L', 971);
INSERT INTO public.product (product_id, color, size, price) VALUES (556, 'Yellow', 'L', 725);
INSERT INTO public.product (product_id, color, size, price) VALUES (557, 'Purple', 'XS', 703);
INSERT INTO public.product (product_id, color, size, price) VALUES (558, 'Green', 'XL', 750);
INSERT INTO public.product (product_id, color, size, price) VALUES (559, 'Teal', 'XS', 387);
INSERT INTO public.product (product_id, color, size, price) VALUES (560, 'Indigo', '3XL', 408);
INSERT INTO public.product (product_id, color, size, price) VALUES (561, 'Blue', 'M', 509);
INSERT INTO public.product (product_id, color, size, price) VALUES (562, 'Fuscia', 'XL', 524);
INSERT INTO public.product (product_id, color, size, price) VALUES (563, 'Indigo', '3XL', 822);
INSERT INTO public.product (product_id, color, size, price) VALUES (564, 'Puce', 'XL', 528);
INSERT INTO public.product (product_id, color, size, price) VALUES (565, 'Blue', '2XL', 524);
INSERT INTO public.product (product_id, color, size, price) VALUES (566, 'Fuscia', 'L', 1176);
INSERT INTO public.product (product_id, color, size, price) VALUES (567, 'Violet', '2XL', 438);
INSERT INTO public.product (product_id, color, size, price) VALUES (568, 'Indigo', 'S', 1443);
INSERT INTO public.product (product_id, color, size, price) VALUES (569, 'Aquamarine', 'XS', 948);
INSERT INTO public.product (product_id, color, size, price) VALUES (570, 'Puce', 'L', 1253);
INSERT INTO public.product (product_id, color, size, price) VALUES (571, 'Maroon', 'S', 684);
INSERT INTO public.product (product_id, color, size, price) VALUES (572, 'Teal', 'M', 212);
INSERT INTO public.product (product_id, color, size, price) VALUES (573, 'Yellow', 'XS', 302);
INSERT INTO public.product (product_id, color, size, price) VALUES (574, 'Green', 'S', 588);
INSERT INTO public.product (product_id, color, size, price) VALUES (575, 'Indigo', '3XL', 187);
INSERT INTO public.product (product_id, color, size, price) VALUES (576, 'Violet', '3XL', 978);
INSERT INTO public.product (product_id, color, size, price) VALUES (577, 'Teal', 'XS', 870);
INSERT INTO public.product (product_id, color, size, price) VALUES (578, 'Goldenrod', 'M', 1085);
INSERT INTO public.product (product_id, color, size, price) VALUES (579, 'Turquoise', 'L', 467);
INSERT INTO public.product (product_id, color, size, price) VALUES (580, 'Fuscia', '2XL', 1104);
INSERT INTO public.product (product_id, color, size, price) VALUES (581, 'Fuscia', 'XS', 1274);
INSERT INTO public.product (product_id, color, size, price) VALUES (582, 'Orange', 'XL', 1209);
INSERT INTO public.product (product_id, color, size, price) VALUES (583, 'Puce', 'L', 1339);
INSERT INTO public.product (product_id, color, size, price) VALUES (584, 'Red', 'M', 654);
INSERT INTO public.product (product_id, color, size, price) VALUES (585, 'Fuscia', 'M', 1144);
INSERT INTO public.product (product_id, color, size, price) VALUES (586, 'Crimson', 'L', 870);
INSERT INTO public.product (product_id, color, size, price) VALUES (587, 'Maroon', 'M', 474);
INSERT INTO public.product (product_id, color, size, price) VALUES (588, 'Fuscia', 'M', 340);
INSERT INTO public.product (product_id, color, size, price) VALUES (589, 'Violet', 'L', 210);
INSERT INTO public.product (product_id, color, size, price) VALUES (590, 'Khaki', '2XL', 877);
INSERT INTO public.product (product_id, color, size, price) VALUES (591, 'Teal', 'XS', 425);
INSERT INTO public.product (product_id, color, size, price) VALUES (592, 'Yellow', 'S', 371);
INSERT INTO public.product (product_id, color, size, price) VALUES (593, 'Mauv', 'L', 1058);
INSERT INTO public.product (product_id, color, size, price) VALUES (594, 'Purple', 'M', 542);
INSERT INTO public.product (product_id, color, size, price) VALUES (595, 'Aquamarine', '2XL', 1500);
INSERT INTO public.product (product_id, color, size, price) VALUES (596, 'Mauv', '3XL', 1040);
INSERT INTO public.product (product_id, color, size, price) VALUES (597, 'Pink', 'XS', 861);
INSERT INTO public.product (product_id, color, size, price) VALUES (598, 'Blue', 'S', 320);
INSERT INTO public.product (product_id, color, size, price) VALUES (599, 'Turquoise', 'XL', 1014);
INSERT INTO public.product (product_id, color, size, price) VALUES (600, 'Maroon', 'L', 1145);
INSERT INTO public.product (product_id, color, size, price) VALUES (601, 'Teal', 'S', 791);
INSERT INTO public.product (product_id, color, size, price) VALUES (602, 'Puce', '2XL', 1315);
INSERT INTO public.product (product_id, color, size, price) VALUES (603, 'Khaki', 'M', 752);
INSERT INTO public.product (product_id, color, size, price) VALUES (604, 'Goldenrod', 'S', 919);
INSERT INTO public.product (product_id, color, size, price) VALUES (605, 'Yellow', 'XS', 852);
INSERT INTO public.product (product_id, color, size, price) VALUES (606, 'Goldenrod', 'M', 909);
INSERT INTO public.product (product_id, color, size, price) VALUES (607, 'Violet', '3XL', 192);
INSERT INTO public.product (product_id, color, size, price) VALUES (608, 'Teal', '2XL', 838);
INSERT INTO public.product (product_id, color, size, price) VALUES (609, 'Red', 'L', 200);
INSERT INTO public.product (product_id, color, size, price) VALUES (610, 'Pink', '3XL', 959);
INSERT INTO public.product (product_id, color, size, price) VALUES (611, 'Pink', 'XL', 312);
INSERT INTO public.product (product_id, color, size, price) VALUES (612, 'Khaki', 'XS', 1129);
INSERT INTO public.product (product_id, color, size, price) VALUES (613, 'Violet', '2XL', 301);
INSERT INTO public.product (product_id, color, size, price) VALUES (614, 'Indigo', '3XL', 667);
INSERT INTO public.product (product_id, color, size, price) VALUES (615, 'Blue', 'L', 1066);
INSERT INTO public.product (product_id, color, size, price) VALUES (616, 'Mauv', 'S', 608);
INSERT INTO public.product (product_id, color, size, price) VALUES (617, 'Crimson', 'M', 726);
INSERT INTO public.product (product_id, color, size, price) VALUES (618, 'Red', 'XL', 441);
INSERT INTO public.product (product_id, color, size, price) VALUES (619, 'Purple', 'M', 1159);
INSERT INTO public.product (product_id, color, size, price) VALUES (620, 'Khaki', '3XL', 716);
INSERT INTO public.product (product_id, color, size, price) VALUES (621, 'Aquamarine', 'XL', 846);
INSERT INTO public.product (product_id, color, size, price) VALUES (622, 'Aquamarine', 'XS', 358);
INSERT INTO public.product (product_id, color, size, price) VALUES (623, 'Khaki', 'L', 1012);
INSERT INTO public.product (product_id, color, size, price) VALUES (624, 'Turquoise', 'XL', 1309);
INSERT INTO public.product (product_id, color, size, price) VALUES (625, 'Green', '3XL', 1366);
INSERT INTO public.product (product_id, color, size, price) VALUES (626, 'Purple', 'XL', 943);
INSERT INTO public.product (product_id, color, size, price) VALUES (627, 'Khaki', 'S', 1291);
INSERT INTO public.product (product_id, color, size, price) VALUES (628, 'Aquamarine', '2XL', 471);
INSERT INTO public.product (product_id, color, size, price) VALUES (629, 'Mauv', 'XL', 1365);
INSERT INTO public.product (product_id, color, size, price) VALUES (630, 'Crimson', 'S', 189);
INSERT INTO public.product (product_id, color, size, price) VALUES (631, 'Khaki', 'S', 237);
INSERT INTO public.product (product_id, color, size, price) VALUES (632, 'Violet', 'M', 267);
INSERT INTO public.product (product_id, color, size, price) VALUES (633, 'Crimson', 'L', 785);
INSERT INTO public.product (product_id, color, size, price) VALUES (634, 'Mauv', '3XL', 1350);
INSERT INTO public.product (product_id, color, size, price) VALUES (635, 'Orange', 'XS', 918);
INSERT INTO public.product (product_id, color, size, price) VALUES (636, 'Red', 'XS', 698);
INSERT INTO public.product (product_id, color, size, price) VALUES (637, 'Orange', 'S', 305);
INSERT INTO public.product (product_id, color, size, price) VALUES (638, 'Crimson', 'XL', 1384);
INSERT INTO public.product (product_id, color, size, price) VALUES (639, 'Pink', 'XL', 1311);
INSERT INTO public.product (product_id, color, size, price) VALUES (640, 'Orange', 'S', 708);
INSERT INTO public.product (product_id, color, size, price) VALUES (641, 'Green', '2XL', 1329);
INSERT INTO public.product (product_id, color, size, price) VALUES (642, 'Mauv', 'M', 618);
INSERT INTO public.product (product_id, color, size, price) VALUES (643, 'Fuscia', '3XL', 1146);
INSERT INTO public.product (product_id, color, size, price) VALUES (644, 'Fuscia', 'S', 473);
INSERT INTO public.product (product_id, color, size, price) VALUES (645, 'Goldenrod', 'XL', 218);
INSERT INTO public.product (product_id, color, size, price) VALUES (646, 'Red', 'XL', 165);
INSERT INTO public.product (product_id, color, size, price) VALUES (647, 'Red', 'L', 386);
INSERT INTO public.product (product_id, color, size, price) VALUES (648, 'Teal', 'XS', 283);
INSERT INTO public.product (product_id, color, size, price) VALUES (649, 'Maroon', 'L', 1301);
INSERT INTO public.product (product_id, color, size, price) VALUES (650, 'Violet', '2XL', 364);
INSERT INTO public.product (product_id, color, size, price) VALUES (651, 'Teal', '2XL', 1171);
INSERT INTO public.product (product_id, color, size, price) VALUES (652, 'Green', 'L', 1328);
INSERT INTO public.product (product_id, color, size, price) VALUES (653, 'Pink', 'XS', 160);
INSERT INTO public.product (product_id, color, size, price) VALUES (654, 'Violet', 'S', 541);
INSERT INTO public.product (product_id, color, size, price) VALUES (655, 'Goldenrod', '2XL', 1430);
INSERT INTO public.product (product_id, color, size, price) VALUES (656, 'Blue', 'S', 976);
INSERT INTO public.product (product_id, color, size, price) VALUES (657, 'Green', 'XS', 1100);
INSERT INTO public.product (product_id, color, size, price) VALUES (658, 'Blue', '2XL', 1175);
INSERT INTO public.product (product_id, color, size, price) VALUES (659, 'Pink', '2XL', 956);
INSERT INTO public.product (product_id, color, size, price) VALUES (660, 'Purple', 'L', 1320);
INSERT INTO public.product (product_id, color, size, price) VALUES (661, 'Red', 'S', 1253);
INSERT INTO public.product (product_id, color, size, price) VALUES (662, 'Green', 'XL', 599);
INSERT INTO public.product (product_id, color, size, price) VALUES (663, 'Maroon', 'XL', 1497);
INSERT INTO public.product (product_id, color, size, price) VALUES (664, 'Khaki', '3XL', 1048);
INSERT INTO public.product (product_id, color, size, price) VALUES (665, 'Aquamarine', '3XL', 1370);
INSERT INTO public.product (product_id, color, size, price) VALUES (666, 'Aquamarine', '3XL', 1368);
INSERT INTO public.product (product_id, color, size, price) VALUES (667, 'Fuscia', '3XL', 576);
INSERT INTO public.product (product_id, color, size, price) VALUES (668, 'Khaki', 'M', 588);
INSERT INTO public.product (product_id, color, size, price) VALUES (669, 'Indigo', 'S', 998);
INSERT INTO public.product (product_id, color, size, price) VALUES (670, 'Crimson', 'S', 204);
INSERT INTO public.product (product_id, color, size, price) VALUES (671, 'Mauv', 'XS', 767);
INSERT INTO public.product (product_id, color, size, price) VALUES (672, 'Puce', 'L', 1172);
INSERT INTO public.product (product_id, color, size, price) VALUES (673, 'Khaki', 'L', 1285);
INSERT INTO public.product (product_id, color, size, price) VALUES (674, 'Turquoise', 'M', 319);
INSERT INTO public.product (product_id, color, size, price) VALUES (675, 'Goldenrod', 'XS', 694);
INSERT INTO public.product (product_id, color, size, price) VALUES (676, 'Puce', 'M', 1006);
INSERT INTO public.product (product_id, color, size, price) VALUES (677, 'Fuscia', '2XL', 416);
INSERT INTO public.product (product_id, color, size, price) VALUES (678, 'Teal', 'S', 1345);
INSERT INTO public.product (product_id, color, size, price) VALUES (679, 'Yellow', 'L', 887);
INSERT INTO public.product (product_id, color, size, price) VALUES (680, 'Goldenrod', 'M', 1334);
INSERT INTO public.product (product_id, color, size, price) VALUES (681, 'Yellow', 'XL', 277);
INSERT INTO public.product (product_id, color, size, price) VALUES (682, 'Red', 'S', 879);
INSERT INTO public.product (product_id, color, size, price) VALUES (683, 'Aquamarine', 'XS', 1308);
INSERT INTO public.product (product_id, color, size, price) VALUES (684, 'Goldenrod', '2XL', 1030);
INSERT INTO public.product (product_id, color, size, price) VALUES (685, 'Violet', 'L', 680);
INSERT INTO public.product (product_id, color, size, price) VALUES (686, 'Teal', 'M', 813);
INSERT INTO public.product (product_id, color, size, price) VALUES (687, 'Yellow', 'XS', 728);
INSERT INTO public.product (product_id, color, size, price) VALUES (688, 'Violet', 'M', 956);
INSERT INTO public.product (product_id, color, size, price) VALUES (689, 'Khaki', 'S', 648);
INSERT INTO public.product (product_id, color, size, price) VALUES (690, 'Pink', '3XL', 734);
INSERT INTO public.product (product_id, color, size, price) VALUES (691, 'Blue', 'XL', 1254);
INSERT INTO public.product (product_id, color, size, price) VALUES (692, 'Pink', 'XS', 279);
INSERT INTO public.product (product_id, color, size, price) VALUES (693, 'Fuscia', 'L', 1074);
INSERT INTO public.product (product_id, color, size, price) VALUES (694, 'Maroon', 'S', 1196);
INSERT INTO public.product (product_id, color, size, price) VALUES (695, 'Mauv', 'M', 1310);
INSERT INTO public.product (product_id, color, size, price) VALUES (696, 'Red', 'XS', 928);
INSERT INTO public.product (product_id, color, size, price) VALUES (697, 'Turquoise', 'S', 471);
INSERT INTO public.product (product_id, color, size, price) VALUES (698, 'Purple', '3XL', 1151);
INSERT INTO public.product (product_id, color, size, price) VALUES (699, 'Crimson', 'M', 552);
INSERT INTO public.product (product_id, color, size, price) VALUES (700, 'Aquamarine', '3XL', 1071);
INSERT INTO public.product (product_id, color, size, price) VALUES (701, 'Teal', 'S', 381);
INSERT INTO public.product (product_id, color, size, price) VALUES (702, 'Puce', '2XL', 865);
INSERT INTO public.product (product_id, color, size, price) VALUES (703, 'Green', 'XL', 1250);
INSERT INTO public.product (product_id, color, size, price) VALUES (704, 'Fuscia', 'XS', 1176);
INSERT INTO public.product (product_id, color, size, price) VALUES (705, 'Red', 'XS', 1222);
INSERT INTO public.product (product_id, color, size, price) VALUES (706, 'Indigo', 'L', 782);
INSERT INTO public.product (product_id, color, size, price) VALUES (707, 'Puce', '2XL', 1131);
INSERT INTO public.product (product_id, color, size, price) VALUES (708, 'Purple', 'XS', 1303);
INSERT INTO public.product (product_id, color, size, price) VALUES (709, 'Aquamarine', 'XS', 1464);
INSERT INTO public.product (product_id, color, size, price) VALUES (710, 'Khaki', 'S', 1256);
INSERT INTO public.product (product_id, color, size, price) VALUES (711, 'Pink', '3XL', 369);
INSERT INTO public.product (product_id, color, size, price) VALUES (712, 'Pink', '3XL', 394);
INSERT INTO public.product (product_id, color, size, price) VALUES (713, 'Goldenrod', 'S', 975);
INSERT INTO public.product (product_id, color, size, price) VALUES (714, 'Purple', 'XS', 938);
INSERT INTO public.product (product_id, color, size, price) VALUES (715, 'Puce', 'XL', 624);
INSERT INTO public.product (product_id, color, size, price) VALUES (716, 'Orange', 'M', 1371);
INSERT INTO public.product (product_id, color, size, price) VALUES (717, 'Turquoise', 'M', 441);
INSERT INTO public.product (product_id, color, size, price) VALUES (718, 'Khaki', '3XL', 600);
INSERT INTO public.product (product_id, color, size, price) VALUES (719, 'Mauv', 'S', 638);
INSERT INTO public.product (product_id, color, size, price) VALUES (720, 'Blue', '2XL', 1347);
INSERT INTO public.product (product_id, color, size, price) VALUES (721, 'Violet', 'XS', 664);
INSERT INTO public.product (product_id, color, size, price) VALUES (722, 'Indigo', 'XL', 754);
INSERT INTO public.product (product_id, color, size, price) VALUES (723, 'Pink', 'L', 629);
INSERT INTO public.product (product_id, color, size, price) VALUES (724, 'Indigo', 'XL', 1432);
INSERT INTO public.product (product_id, color, size, price) VALUES (725, 'Teal', 'L', 1022);
INSERT INTO public.product (product_id, color, size, price) VALUES (726, 'Khaki', '3XL', 297);
INSERT INTO public.product (product_id, color, size, price) VALUES (727, 'Orange', 'S', 678);
INSERT INTO public.product (product_id, color, size, price) VALUES (728, 'Maroon', 'XL', 1443);
INSERT INTO public.product (product_id, color, size, price) VALUES (729, 'Fuscia', '3XL', 518);
INSERT INTO public.product (product_id, color, size, price) VALUES (730, 'Fuscia', 'XS', 1152);
INSERT INTO public.product (product_id, color, size, price) VALUES (731, 'Orange', 'L', 822);
INSERT INTO public.product (product_id, color, size, price) VALUES (732, 'Red', 'S', 392);
INSERT INTO public.product (product_id, color, size, price) VALUES (733, 'Puce', '3XL', 927);
INSERT INTO public.product (product_id, color, size, price) VALUES (734, 'Yellow', 'M', 1416);
INSERT INTO public.product (product_id, color, size, price) VALUES (735, 'Violet', 'XL', 1083);
INSERT INTO public.product (product_id, color, size, price) VALUES (736, 'Goldenrod', 'XL', 1292);
INSERT INTO public.product (product_id, color, size, price) VALUES (737, 'Violet', 'S', 994);
INSERT INTO public.product (product_id, color, size, price) VALUES (738, 'Violet', 'S', 1171);
INSERT INTO public.product (product_id, color, size, price) VALUES (739, 'Maroon', 'XS', 1439);
INSERT INTO public.product (product_id, color, size, price) VALUES (740, 'Pink', 'XL', 915);
INSERT INTO public.product (product_id, color, size, price) VALUES (741, 'Red', '3XL', 1173);
INSERT INTO public.product (product_id, color, size, price) VALUES (742, 'Aquamarine', 'M', 1302);
INSERT INTO public.product (product_id, color, size, price) VALUES (743, 'Goldenrod', '3XL', 1081);
INSERT INTO public.product (product_id, color, size, price) VALUES (744, 'Mauv', 'XL', 1350);
INSERT INTO public.product (product_id, color, size, price) VALUES (745, 'Orange', '2XL', 629);
INSERT INTO public.product (product_id, color, size, price) VALUES (746, 'Green', 'XL', 379);
INSERT INTO public.product (product_id, color, size, price) VALUES (747, 'Aquamarine', 'M', 1481);
INSERT INTO public.product (product_id, color, size, price) VALUES (748, 'Violet', 'S', 557);
INSERT INTO public.product (product_id, color, size, price) VALUES (749, 'Pink', '2XL', 843);
INSERT INTO public.product (product_id, color, size, price) VALUES (750, 'Khaki', 'XL', 1220);
INSERT INTO public.product (product_id, color, size, price) VALUES (751, 'Puce', 'XS', 1352);
INSERT INTO public.product (product_id, color, size, price) VALUES (752, 'Pink', 'XS', 928);
INSERT INTO public.product (product_id, color, size, price) VALUES (753, 'Khaki', 'L', 1316);
INSERT INTO public.product (product_id, color, size, price) VALUES (754, 'Goldenrod', 'XS', 488);
INSERT INTO public.product (product_id, color, size, price) VALUES (755, 'Purple', 'M', 469);
INSERT INTO public.product (product_id, color, size, price) VALUES (756, 'Orange', 'L', 400);
INSERT INTO public.product (product_id, color, size, price) VALUES (757, 'Crimson', 'S', 782);
INSERT INTO public.product (product_id, color, size, price) VALUES (758, 'Goldenrod', 'S', 293);
INSERT INTO public.product (product_id, color, size, price) VALUES (759, 'Mauv', 'M', 561);
INSERT INTO public.product (product_id, color, size, price) VALUES (760, 'Green', 'M', 327);
INSERT INTO public.product (product_id, color, size, price) VALUES (761, 'Teal', '3XL', 1444);
INSERT INTO public.product (product_id, color, size, price) VALUES (762, 'Teal', 'M', 675);
INSERT INTO public.product (product_id, color, size, price) VALUES (763, 'Crimson', '2XL', 1234);
INSERT INTO public.product (product_id, color, size, price) VALUES (764, 'Fuscia', 'S', 747);
INSERT INTO public.product (product_id, color, size, price) VALUES (765, 'Blue', 'XL', 1258);
INSERT INTO public.product (product_id, color, size, price) VALUES (766, 'Purple', '3XL', 828);
INSERT INTO public.product (product_id, color, size, price) VALUES (767, 'Fuscia', 'XS', 214);
INSERT INTO public.product (product_id, color, size, price) VALUES (768, 'Indigo', '2XL', 227);
INSERT INTO public.product (product_id, color, size, price) VALUES (769, 'Red', 'XL', 808);
INSERT INTO public.product (product_id, color, size, price) VALUES (770, 'Crimson', '3XL', 883);
INSERT INTO public.product (product_id, color, size, price) VALUES (771, 'Indigo', '2XL', 650);
INSERT INTO public.product (product_id, color, size, price) VALUES (772, 'Khaki', 'L', 1094);
INSERT INTO public.product (product_id, color, size, price) VALUES (773, 'Teal', 'S', 699);
INSERT INTO public.product (product_id, color, size, price) VALUES (774, 'Khaki', 'XL', 1058);
INSERT INTO public.product (product_id, color, size, price) VALUES (775, 'Maroon', 'L', 773);
INSERT INTO public.product (product_id, color, size, price) VALUES (776, 'Orange', 'XL', 601);
INSERT INTO public.product (product_id, color, size, price) VALUES (777, 'Aquamarine', 'XS', 374);
INSERT INTO public.product (product_id, color, size, price) VALUES (778, 'Indigo', 'XS', 1445);
INSERT INTO public.product (product_id, color, size, price) VALUES (779, 'Puce', 'XL', 192);
INSERT INTO public.product (product_id, color, size, price) VALUES (780, 'Blue', 'M', 891);
INSERT INTO public.product (product_id, color, size, price) VALUES (781, 'Purple', 'XS', 1450);
INSERT INTO public.product (product_id, color, size, price) VALUES (782, 'Turquoise', 'S', 1188);
INSERT INTO public.product (product_id, color, size, price) VALUES (783, 'Khaki', '3XL', 853);
INSERT INTO public.product (product_id, color, size, price) VALUES (784, 'Aquamarine', 'L', 1259);
INSERT INTO public.product (product_id, color, size, price) VALUES (785, 'Goldenrod', '2XL', 1152);
INSERT INTO public.product (product_id, color, size, price) VALUES (786, 'Purple', 'XL', 178);
INSERT INTO public.product (product_id, color, size, price) VALUES (787, 'Pink', '2XL', 1347);
INSERT INTO public.product (product_id, color, size, price) VALUES (788, 'Orange', 'S', 853);
INSERT INTO public.product (product_id, color, size, price) VALUES (789, 'Turquoise', 'M', 632);
INSERT INTO public.product (product_id, color, size, price) VALUES (790, 'Mauv', '3XL', 171);
INSERT INTO public.product (product_id, color, size, price) VALUES (791, 'Red', 'M', 598);
INSERT INTO public.product (product_id, color, size, price) VALUES (792, 'Blue', '3XL', 1184);
INSERT INTO public.product (product_id, color, size, price) VALUES (793, 'Red', 'XL', 943);
INSERT INTO public.product (product_id, color, size, price) VALUES (794, 'Turquoise', 'L', 960);
INSERT INTO public.product (product_id, color, size, price) VALUES (795, 'Fuscia', 'XS', 708);
INSERT INTO public.product (product_id, color, size, price) VALUES (796, 'Puce', 'L', 217);
INSERT INTO public.product (product_id, color, size, price) VALUES (797, 'Yellow', '3XL', 380);
INSERT INTO public.product (product_id, color, size, price) VALUES (798, 'Orange', 'XL', 1246);
INSERT INTO public.product (product_id, color, size, price) VALUES (799, 'Puce', 'XS', 706);
INSERT INTO public.product (product_id, color, size, price) VALUES (800, 'Aquamarine', 'M', 480);
INSERT INTO public.product (product_id, color, size, price) VALUES (801, 'Red', 'L', 1009);
INSERT INTO public.product (product_id, color, size, price) VALUES (802, 'Orange', 'XL', 440);
INSERT INTO public.product (product_id, color, size, price) VALUES (803, 'Maroon', 'XL', 385);
INSERT INTO public.product (product_id, color, size, price) VALUES (804, 'Goldenrod', 'XS', 601);
INSERT INTO public.product (product_id, color, size, price) VALUES (805, 'Blue', 'M', 1221);
INSERT INTO public.product (product_id, color, size, price) VALUES (806, 'Fuscia', 'XS', 1279);
INSERT INTO public.product (product_id, color, size, price) VALUES (807, 'Teal', 'XS', 507);
INSERT INTO public.product (product_id, color, size, price) VALUES (808, 'Aquamarine', 'M', 531);
INSERT INTO public.product (product_id, color, size, price) VALUES (809, 'Mauv', '3XL', 1111);
INSERT INTO public.product (product_id, color, size, price) VALUES (810, 'Pink', 'XS', 285);
INSERT INTO public.product (product_id, color, size, price) VALUES (811, 'Violet', 'S', 1173);
INSERT INTO public.product (product_id, color, size, price) VALUES (812, 'Puce', 'M', 1467);
INSERT INTO public.product (product_id, color, size, price) VALUES (813, 'Indigo', 'M', 410);
INSERT INTO public.product (product_id, color, size, price) VALUES (814, 'Indigo', 'S', 336);
INSERT INTO public.product (product_id, color, size, price) VALUES (815, 'Khaki', 'L', 566);
INSERT INTO public.product (product_id, color, size, price) VALUES (816, 'Mauv', 'S', 1493);
INSERT INTO public.product (product_id, color, size, price) VALUES (817, 'Turquoise', 'XS', 596);
INSERT INTO public.product (product_id, color, size, price) VALUES (818, 'Turquoise', 'M', 384);
INSERT INTO public.product (product_id, color, size, price) VALUES (819, 'Turquoise', 'XS', 641);
INSERT INTO public.product (product_id, color, size, price) VALUES (820, 'Teal', '3XL', 1216);
INSERT INTO public.product (product_id, color, size, price) VALUES (821, 'Fuscia', '2XL', 401);
INSERT INTO public.product (product_id, color, size, price) VALUES (822, 'Puce', 'S', 894);
INSERT INTO public.product (product_id, color, size, price) VALUES (823, 'Green', 'XS', 559);
INSERT INTO public.product (product_id, color, size, price) VALUES (824, 'Red', '2XL', 318);
INSERT INTO public.product (product_id, color, size, price) VALUES (825, 'Goldenrod', '3XL', 1241);
INSERT INTO public.product (product_id, color, size, price) VALUES (826, 'Fuscia', 'M', 1197);
INSERT INTO public.product (product_id, color, size, price) VALUES (827, 'Green', '2XL', 468);
INSERT INTO public.product (product_id, color, size, price) VALUES (828, 'Blue', '2XL', 416);
INSERT INTO public.product (product_id, color, size, price) VALUES (829, 'Purple', 'L', 223);
INSERT INTO public.product (product_id, color, size, price) VALUES (830, 'Green', 'S', 1306);
INSERT INTO public.product (product_id, color, size, price) VALUES (831, 'Khaki', 'S', 679);
INSERT INTO public.product (product_id, color, size, price) VALUES (832, 'Indigo', 'S', 453);
INSERT INTO public.product (product_id, color, size, price) VALUES (833, 'Fuscia', 'XS', 415);
INSERT INTO public.product (product_id, color, size, price) VALUES (834, 'Violet', 'L', 1413);
INSERT INTO public.product (product_id, color, size, price) VALUES (835, 'Teal', '3XL', 336);
INSERT INTO public.product (product_id, color, size, price) VALUES (836, 'Violet', 'S', 840);
INSERT INTO public.product (product_id, color, size, price) VALUES (837, 'Teal', '2XL', 930);
INSERT INTO public.product (product_id, color, size, price) VALUES (838, 'Maroon', '3XL', 1443);
INSERT INTO public.product (product_id, color, size, price) VALUES (839, 'Puce', 'L', 901);
INSERT INTO public.product (product_id, color, size, price) VALUES (840, 'Indigo', 'L', 1120);
INSERT INTO public.product (product_id, color, size, price) VALUES (841, 'Pink', 'XS', 877);
INSERT INTO public.product (product_id, color, size, price) VALUES (842, 'Maroon', 'S', 849);
INSERT INTO public.product (product_id, color, size, price) VALUES (843, 'Mauv', 'L', 1128);
INSERT INTO public.product (product_id, color, size, price) VALUES (844, 'Violet', 'L', 1045);
INSERT INTO public.product (product_id, color, size, price) VALUES (845, 'Fuscia', 'S', 1339);
INSERT INTO public.product (product_id, color, size, price) VALUES (846, 'Purple', 'M', 1079);
INSERT INTO public.product (product_id, color, size, price) VALUES (847, 'Red', 'XL', 1177);
INSERT INTO public.product (product_id, color, size, price) VALUES (848, 'Blue', 'XL', 888);
INSERT INTO public.product (product_id, color, size, price) VALUES (849, 'Indigo', 'S', 392);
INSERT INTO public.product (product_id, color, size, price) VALUES (850, 'Crimson', 'S', 650);
INSERT INTO public.product (product_id, color, size, price) VALUES (851, 'Crimson', 'XS', 919);
INSERT INTO public.product (product_id, color, size, price) VALUES (852, 'Blue', 'S', 862);
INSERT INTO public.product (product_id, color, size, price) VALUES (853, 'Khaki', 'XS', 1191);
INSERT INTO public.product (product_id, color, size, price) VALUES (854, 'Blue', '2XL', 812);
INSERT INTO public.product (product_id, color, size, price) VALUES (855, 'Green', 'XS', 1015);
INSERT INTO public.product (product_id, color, size, price) VALUES (856, 'Mauv', 'L', 613);
INSERT INTO public.product (product_id, color, size, price) VALUES (857, 'Red', '2XL', 360);
INSERT INTO public.product (product_id, color, size, price) VALUES (858, 'Green', 'XS', 1438);
INSERT INTO public.product (product_id, color, size, price) VALUES (859, 'Mauv', 'XS', 162);
INSERT INTO public.product (product_id, color, size, price) VALUES (860, 'Blue', 'S', 1079);
INSERT INTO public.product (product_id, color, size, price) VALUES (861, 'Khaki', '3XL', 740);
INSERT INTO public.product (product_id, color, size, price) VALUES (862, 'Yellow', 'XL', 818);
INSERT INTO public.product (product_id, color, size, price) VALUES (863, 'Purple', '3XL', 1348);
INSERT INTO public.product (product_id, color, size, price) VALUES (864, 'Teal', 'M', 825);
INSERT INTO public.product (product_id, color, size, price) VALUES (865, 'Aquamarine', 'L', 297);
INSERT INTO public.product (product_id, color, size, price) VALUES (866, 'Violet', '3XL', 1283);
INSERT INTO public.product (product_id, color, size, price) VALUES (867, 'Blue', 'XL', 357);
INSERT INTO public.product (product_id, color, size, price) VALUES (868, 'Purple', 'L', 1264);
INSERT INTO public.product (product_id, color, size, price) VALUES (869, 'Purple', '3XL', 1105);
INSERT INTO public.product (product_id, color, size, price) VALUES (870, 'Red', 'XS', 672);
INSERT INTO public.product (product_id, color, size, price) VALUES (871, 'Yellow', '3XL', 508);
INSERT INTO public.product (product_id, color, size, price) VALUES (872, 'Teal', 'L', 796);
INSERT INTO public.product (product_id, color, size, price) VALUES (873, 'Goldenrod', 'L', 832);
INSERT INTO public.product (product_id, color, size, price) VALUES (874, 'Mauv', 'S', 1176);
INSERT INTO public.product (product_id, color, size, price) VALUES (875, 'Blue', 'L', 920);
INSERT INTO public.product (product_id, color, size, price) VALUES (876, 'Teal', 'XL', 830);
INSERT INTO public.product (product_id, color, size, price) VALUES (877, 'Teal', 'L', 361);
INSERT INTO public.product (product_id, color, size, price) VALUES (878, 'Purple', '2XL', 614);
INSERT INTO public.product (product_id, color, size, price) VALUES (879, 'Mauv', 'L', 1198);
INSERT INTO public.product (product_id, color, size, price) VALUES (880, 'Turquoise', 'XS', 337);
INSERT INTO public.product (product_id, color, size, price) VALUES (881, 'Orange', 'M', 1070);
INSERT INTO public.product (product_id, color, size, price) VALUES (882, 'Violet', 'XL', 1251);
INSERT INTO public.product (product_id, color, size, price) VALUES (883, 'Red', 'XS', 829);
INSERT INTO public.product (product_id, color, size, price) VALUES (884, 'Aquamarine', 'XS', 1316);
INSERT INTO public.product (product_id, color, size, price) VALUES (885, 'Khaki', '2XL', 824);
INSERT INTO public.product (product_id, color, size, price) VALUES (886, 'Green', '3XL', 1373);
INSERT INTO public.product (product_id, color, size, price) VALUES (887, 'Teal', 'XS', 1140);
INSERT INTO public.product (product_id, color, size, price) VALUES (888, 'Orange', 'S', 775);
INSERT INTO public.product (product_id, color, size, price) VALUES (889, 'Purple', 'XL', 333);
INSERT INTO public.product (product_id, color, size, price) VALUES (890, 'Indigo', 'M', 743);
INSERT INTO public.product (product_id, color, size, price) VALUES (891, 'Fuscia', 'S', 869);
INSERT INTO public.product (product_id, color, size, price) VALUES (892, 'Mauv', '3XL', 617);
INSERT INTO public.product (product_id, color, size, price) VALUES (893, 'Aquamarine', 'XS', 1199);
INSERT INTO public.product (product_id, color, size, price) VALUES (894, 'Goldenrod', 'M', 888);
INSERT INTO public.product (product_id, color, size, price) VALUES (895, 'Aquamarine', '2XL', 677);
INSERT INTO public.product (product_id, color, size, price) VALUES (896, 'Crimson', 'L', 573);
INSERT INTO public.product (product_id, color, size, price) VALUES (897, 'Yellow', 'XL', 788);
INSERT INTO public.product (product_id, color, size, price) VALUES (898, 'Crimson', 'L', 1422);
INSERT INTO public.product (product_id, color, size, price) VALUES (899, 'Green', 'L', 705);
INSERT INTO public.product (product_id, color, size, price) VALUES (900, 'Crimson', '3XL', 1101);
INSERT INTO public.product (product_id, color, size, price) VALUES (901, 'Blue', 'S', 561);
INSERT INTO public.product (product_id, color, size, price) VALUES (902, 'Orange', 'XL', 491);
INSERT INTO public.product (product_id, color, size, price) VALUES (903, 'Aquamarine', 'M', 1274);
INSERT INTO public.product (product_id, color, size, price) VALUES (904, 'Yellow', 'L', 1191);
INSERT INTO public.product (product_id, color, size, price) VALUES (905, 'Khaki', 'XL', 986);
INSERT INTO public.product (product_id, color, size, price) VALUES (906, 'Aquamarine', 'S', 256);
INSERT INTO public.product (product_id, color, size, price) VALUES (907, 'Pink', 'XS', 1012);
INSERT INTO public.product (product_id, color, size, price) VALUES (908, 'Fuscia', '2XL', 810);
INSERT INTO public.product (product_id, color, size, price) VALUES (909, 'Red', 'M', 647);
INSERT INTO public.product (product_id, color, size, price) VALUES (910, 'Aquamarine', '3XL', 603);
INSERT INTO public.product (product_id, color, size, price) VALUES (911, 'Goldenrod', 'L', 916);
INSERT INTO public.product (product_id, color, size, price) VALUES (912, 'Puce', '3XL', 1192);
INSERT INTO public.product (product_id, color, size, price) VALUES (913, 'Yellow', 'S', 1338);
INSERT INTO public.product (product_id, color, size, price) VALUES (914, 'Goldenrod', 'XS', 413);
INSERT INTO public.product (product_id, color, size, price) VALUES (915, 'Teal', 'XL', 1020);
INSERT INTO public.product (product_id, color, size, price) VALUES (916, 'Mauv', 'XS', 1221);
INSERT INTO public.product (product_id, color, size, price) VALUES (917, 'Purple', 'L', 386);
INSERT INTO public.product (product_id, color, size, price) VALUES (918, 'Crimson', 'S', 1166);
INSERT INTO public.product (product_id, color, size, price) VALUES (919, 'Purple', 'L', 309);
INSERT INTO public.product (product_id, color, size, price) VALUES (920, 'Aquamarine', '3XL', 1414);
INSERT INTO public.product (product_id, color, size, price) VALUES (921, 'Mauv', 'S', 1255);
INSERT INTO public.product (product_id, color, size, price) VALUES (922, 'Violet', 'L', 259);
INSERT INTO public.product (product_id, color, size, price) VALUES (923, 'Mauv', 'L', 1376);
INSERT INTO public.product (product_id, color, size, price) VALUES (924, 'Turquoise', 'S', 599);
INSERT INTO public.product (product_id, color, size, price) VALUES (925, 'Fuscia', 'XL', 916);
INSERT INTO public.product (product_id, color, size, price) VALUES (926, 'Maroon', '3XL', 1284);
INSERT INTO public.product (product_id, color, size, price) VALUES (927, 'Mauv', '3XL', 1493);
INSERT INTO public.product (product_id, color, size, price) VALUES (928, 'Orange', 'L', 519);
INSERT INTO public.product (product_id, color, size, price) VALUES (929, 'Mauv', '3XL', 334);
INSERT INTO public.product (product_id, color, size, price) VALUES (930, 'Fuscia', 'L', 488);
INSERT INTO public.product (product_id, color, size, price) VALUES (931, 'Pink', 'XL', 802);
INSERT INTO public.product (product_id, color, size, price) VALUES (932, 'Indigo', '3XL', 515);
INSERT INTO public.product (product_id, color, size, price) VALUES (933, 'Blue', '3XL', 1202);
INSERT INTO public.product (product_id, color, size, price) VALUES (934, 'Teal', 'XS', 1257);
INSERT INTO public.product (product_id, color, size, price) VALUES (935, 'Teal', 'XL', 162);
INSERT INTO public.product (product_id, color, size, price) VALUES (936, 'Crimson', '3XL', 337);
INSERT INTO public.product (product_id, color, size, price) VALUES (937, 'Red', 'XL', 935);
INSERT INTO public.product (product_id, color, size, price) VALUES (938, 'Green', 'S', 975);
INSERT INTO public.product (product_id, color, size, price) VALUES (939, 'Indigo', 'M', 981);
INSERT INTO public.product (product_id, color, size, price) VALUES (940, 'Green', '3XL', 738);
INSERT INTO public.product (product_id, color, size, price) VALUES (941, 'Pink', 'XS', 1078);
INSERT INTO public.product (product_id, color, size, price) VALUES (942, 'Yellow', 'M', 1497);
INSERT INTO public.product (product_id, color, size, price) VALUES (943, 'Crimson', 'S', 1199);
INSERT INTO public.product (product_id, color, size, price) VALUES (944, 'Goldenrod', 'XS', 1077);
INSERT INTO public.product (product_id, color, size, price) VALUES (945, 'Khaki', 'S', 1041);
INSERT INTO public.product (product_id, color, size, price) VALUES (946, 'Violet', 'XS', 1093);
INSERT INTO public.product (product_id, color, size, price) VALUES (947, 'Maroon', 'L', 285);
INSERT INTO public.product (product_id, color, size, price) VALUES (948, 'Violet', 'L', 1060);
INSERT INTO public.product (product_id, color, size, price) VALUES (949, 'Aquamarine', 'S', 1221);
INSERT INTO public.product (product_id, color, size, price) VALUES (950, 'Teal', 'L', 519);
INSERT INTO public.product (product_id, color, size, price) VALUES (951, 'Indigo', 'XS', 810);
INSERT INTO public.product (product_id, color, size, price) VALUES (952, 'Khaki', 'XL', 382);
INSERT INTO public.product (product_id, color, size, price) VALUES (953, 'Khaki', 'S', 889);
INSERT INTO public.product (product_id, color, size, price) VALUES (954, 'Pink', 'M', 1277);
INSERT INTO public.product (product_id, color, size, price) VALUES (955, 'Yellow', '3XL', 1333);
INSERT INTO public.product (product_id, color, size, price) VALUES (956, 'Puce', 'S', 560);
INSERT INTO public.product (product_id, color, size, price) VALUES (957, 'Yellow', 'XL', 274);
INSERT INTO public.product (product_id, color, size, price) VALUES (958, 'Turquoise', '2XL', 770);
INSERT INTO public.product (product_id, color, size, price) VALUES (959, 'Green', 'XL', 305);
INSERT INTO public.product (product_id, color, size, price) VALUES (960, 'Blue', 'XL', 854);
INSERT INTO public.product (product_id, color, size, price) VALUES (961, 'Orange', 'XS', 1475);
INSERT INTO public.product (product_id, color, size, price) VALUES (962, 'Orange', 'M', 891);
INSERT INTO public.product (product_id, color, size, price) VALUES (963, 'Orange', 'S', 513);
INSERT INTO public.product (product_id, color, size, price) VALUES (964, 'Crimson', '3XL', 1006);
INSERT INTO public.product (product_id, color, size, price) VALUES (965, 'Fuscia', 'M', 320);
INSERT INTO public.product (product_id, color, size, price) VALUES (966, 'Teal', '3XL', 1332);
INSERT INTO public.product (product_id, color, size, price) VALUES (967, 'Turquoise', 'M', 1075);
INSERT INTO public.product (product_id, color, size, price) VALUES (968, 'Aquamarine', '2XL', 1037);
INSERT INTO public.product (product_id, color, size, price) VALUES (969, 'Red', '3XL', 617);
INSERT INTO public.product (product_id, color, size, price) VALUES (970, 'Red', '2XL', 250);
INSERT INTO public.product (product_id, color, size, price) VALUES (971, 'Yellow', '2XL', 1411);
INSERT INTO public.product (product_id, color, size, price) VALUES (972, 'Indigo', 'XL', 934);
INSERT INTO public.product (product_id, color, size, price) VALUES (973, 'Yellow', 'L', 1058);
INSERT INTO public.product (product_id, color, size, price) VALUES (974, 'Puce', '3XL', 1118);
INSERT INTO public.product (product_id, color, size, price) VALUES (975, 'Khaki', 'XS', 189);
INSERT INTO public.product (product_id, color, size, price) VALUES (976, 'Fuscia', 'L', 486);
INSERT INTO public.product (product_id, color, size, price) VALUES (977, 'Blue', 'L', 1194);
INSERT INTO public.product (product_id, color, size, price) VALUES (978, 'Green', 'XL', 312);
INSERT INTO public.product (product_id, color, size, price) VALUES (979, 'Maroon', '3XL', 883);
INSERT INTO public.product (product_id, color, size, price) VALUES (980, 'Red', 'M', 946);
INSERT INTO public.product (product_id, color, size, price) VALUES (981, 'Fuscia', 'M', 164);
INSERT INTO public.product (product_id, color, size, price) VALUES (982, 'Green', 'S', 1244);
INSERT INTO public.product (product_id, color, size, price) VALUES (983, 'Goldenrod', '3XL', 549);
INSERT INTO public.product (product_id, color, size, price) VALUES (984, 'Crimson', 'M', 1187);
INSERT INTO public.product (product_id, color, size, price) VALUES (985, 'Khaki', 'L', 242);
INSERT INTO public.product (product_id, color, size, price) VALUES (986, 'Turquoise', 'S', 933);
INSERT INTO public.product (product_id, color, size, price) VALUES (987, 'Turquoise', 'XS', 842);
INSERT INTO public.product (product_id, color, size, price) VALUES (988, 'Pink', 'XS', 419);
INSERT INTO public.product (product_id, color, size, price) VALUES (989, 'Violet', 'XS', 1481);
INSERT INTO public.product (product_id, color, size, price) VALUES (990, 'Violet', '3XL', 702);
INSERT INTO public.product (product_id, color, size, price) VALUES (991, 'Puce', '2XL', 294);
INSERT INTO public.product (product_id, color, size, price) VALUES (992, 'Purple', 'XL', 797);
INSERT INTO public.product (product_id, color, size, price) VALUES (993, 'Red', '2XL', 893);
INSERT INTO public.product (product_id, color, size, price) VALUES (994, 'Blue', 'XS', 576);
INSERT INTO public.product (product_id, color, size, price) VALUES (995, 'Yellow', 'XL', 910);
INSERT INTO public.product (product_id, color, size, price) VALUES (996, 'Teal', 'XS', 1295);
INSERT INTO public.product (product_id, color, size, price) VALUES (997, 'Aquamarine', 'XS', 874);
INSERT INTO public.product (product_id, color, size, price) VALUES (998, 'Fuscia', '3XL', 417);
INSERT INTO public.product (product_id, color, size, price) VALUES (999, 'Red', '2XL', 1090);
INSERT INTO public.product (product_id, color, size, price) VALUES (1000, 'Puce', 'XS', 1089);


                                                                                                                                                                                                                                                                                                                                                                                                                                                      3394.dat                                                                                            0000600 0004000 0002000 00000221116 14437437366 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (1, 255, '2022-03-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (2, 80, '2020-04-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (3, 298, '2021-10-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (4, 113, '2021-10-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (5, 381, '2022-03-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (6, 95, '2022-12-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (7, 327, '2022-02-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (8, 162, '2022-06-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (9, 393, '2021-01-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (10, 220, '2021-12-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (11, 57, '2020-04-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (12, 22, '2023-02-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (13, 4, '2021-08-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (14, 130, '2022-06-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (16, 383, '2021-05-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (17, 158, '2022-06-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (18, 103, '2020-09-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (19, 92, '2022-10-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (20, 181, '2020-06-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (21, 8, '2022-05-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (22, 355, '2023-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (23, 354, '2023-03-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (24, 395, '2021-03-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (25, 371, '2021-03-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (26, 18, '2020-07-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (27, 197, '2020-12-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (28, 381, '2021-11-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (29, 228, '2022-07-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (30, 229, '2023-02-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (31, 118, '2022-04-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (32, 351, '2021-12-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (33, 101, '2020-08-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (34, 273, '2021-01-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (35, 171, '2023-05-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (36, 93, '2021-03-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (37, 114, '2022-06-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (38, 1, '2020-07-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (39, 287, '2022-11-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (40, 207, '2023-03-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (41, 43, '2021-12-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (42, 118, '2021-04-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (43, 230, '2022-10-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (44, 84, '2020-08-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (45, 81, '2023-01-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (46, 135, '2020-06-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (47, 29, '2022-04-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (48, 47, '2022-11-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (49, 336, '2022-01-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (50, 315, '2021-08-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (51, 227, '2023-03-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (52, 123, '2020-05-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (53, 360, '2020-11-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (54, 44, '2020-06-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (55, 139, '2023-03-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (56, 387, '2022-09-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (57, 360, '2021-08-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (58, 204, '2022-08-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (59, 223, '2021-02-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (60, 202, '2020-08-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (61, 220, '2020-07-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (63, 67, '2020-08-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (64, 115, '2021-12-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (65, 264, '2022-02-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (66, 284, '2023-02-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (67, 179, '2022-01-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (68, 359, '2023-03-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (69, 258, '2022-08-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (70, 104, '2021-06-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (71, 22, '2023-01-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (72, 157, '2023-04-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (73, 301, '2022-07-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (74, 20, '2023-02-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (75, 5, '2021-05-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (76, 41, '2020-06-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (77, 37, '2020-10-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (78, 21, '2022-11-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (79, 102, '2021-11-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (80, 84, '2022-08-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (81, 378, '2020-07-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (82, 342, '2021-08-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (83, 389, '2022-03-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (84, 13, '2023-03-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (85, 192, '2023-04-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (86, 236, '2021-02-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (87, 28, '2021-10-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (88, 113, '2020-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (89, 140, '2020-05-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (90, 322, '2022-01-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (91, 175, '2023-02-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (92, 245, '2020-12-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (93, 264, '2022-06-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (94, 354, '2022-04-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (95, 71, '2022-03-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (96, 161, '2020-09-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (97, 347, '2022-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (98, 313, '2020-11-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (99, 145, '2021-04-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (100, 239, '2021-08-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (101, 393, '2021-05-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (102, 175, '2022-01-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (103, 62, '2022-12-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (104, 42, '2021-07-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (105, 256, '2020-06-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (106, 310, '2021-05-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (107, 316, '2020-05-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (108, 120, '2021-05-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (109, 325, '2022-04-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (110, 140, '2021-12-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (111, 252, '2020-07-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (112, 183, '2022-03-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (113, 42, '2020-06-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (114, 92, '2021-11-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (115, 66, '2022-08-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (116, 361, '2021-04-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (117, 93, '2023-05-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (118, 89, '2020-05-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (119, 331, '2021-07-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (120, 152, '2021-11-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (121, 234, '2022-11-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (122, 220, '2022-02-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (123, 329, '2020-08-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (124, 226, '2021-10-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (125, 208, '2022-10-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (126, 395, '2021-02-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (127, 302, '2022-11-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (128, 62, '2021-12-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (129, 386, '2022-01-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (130, 79, '2023-01-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (131, 225, '2022-11-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (132, 314, '2023-05-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (133, 376, '2022-06-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (134, 53, '2023-01-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (135, 354, '2022-08-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (136, 158, '2020-06-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (137, 360, '2022-07-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (138, 159, '2021-03-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (139, 186, '2020-06-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (140, 8, '2022-07-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (141, 227, '2021-11-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (142, 104, '2021-09-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (143, 132, '2020-12-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (144, 327, '2022-03-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (145, 180, '2021-10-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (146, 252, '2021-07-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (147, 397, '2021-01-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (148, 220, '2020-04-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (149, 70, '2020-07-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (150, 182, '2021-06-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (151, 387, '2022-08-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (152, 199, '2021-07-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (153, 179, '2020-10-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (154, 97, '2020-12-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (155, 283, '2021-04-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (156, 73, '2020-05-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (157, 96, '2021-04-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (158, 210, '2020-10-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (159, 176, '2020-06-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (160, 272, '2021-09-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (161, 96, '2022-02-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (162, 138, '2023-01-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (163, 153, '2021-05-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (164, 11, '2023-02-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (165, 214, '2020-04-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (166, 143, '2020-08-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (167, 125, '2022-08-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (168, 170, '2022-07-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (169, 204, '2022-07-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (170, 89, '2021-12-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (171, 161, '2021-10-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (172, 299, '2020-06-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (173, 325, '2020-10-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (174, 278, '2021-11-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (175, 65, '2022-12-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (176, 159, '2021-02-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (177, 282, '2020-12-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (178, 347, '2022-09-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (179, 45, '2022-04-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (180, 304, '2022-09-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (182, 134, '2023-01-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (183, 305, '2021-08-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (184, 162, '2023-02-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (185, 171, '2023-01-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (186, 386, '2022-10-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (187, 243, '2021-06-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (188, 233, '2021-06-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (189, 139, '2022-10-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (190, 385, '2023-02-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (191, 66, '2022-06-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (192, 68, '2022-02-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (193, 372, '2022-01-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (194, 236, '2021-01-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (195, 271, '2022-07-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (196, 254, '2022-12-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (197, 311, '2021-04-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (198, 26, '2021-08-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (199, 288, '2022-12-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (200, 93, '2021-01-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (201, 353, '2021-06-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (202, 331, '2021-07-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (203, 118, '2022-02-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (204, 255, '2022-03-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (205, 363, '2021-05-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (206, 232, '2020-04-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (207, 97, '2021-05-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (208, 28, '2022-12-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (209, 147, '2022-10-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (210, 131, '2020-06-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (211, 189, '2021-05-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (212, 28, '2021-12-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (213, 382, '2020-12-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (214, 64, '2020-05-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (215, 223, '2021-09-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (216, 300, '2021-10-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (217, 128, '2023-01-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (218, 34, '2021-04-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (219, 392, '2021-07-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (220, 146, '2020-11-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (221, 369, '2023-04-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (222, 108, '2021-06-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (223, 255, '2021-10-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (224, 249, '2021-10-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (225, 42, '2021-04-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (226, 126, '2021-09-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (227, 358, '2023-04-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (229, 101, '2022-12-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (230, 162, '2020-08-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (231, 361, '2021-12-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (232, 143, '2022-07-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (233, 396, '2021-02-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (234, 100, '2021-12-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (235, 392, '2021-01-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (236, 135, '2022-05-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (237, 81, '2022-09-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (238, 138, '2022-04-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (239, 380, '2022-11-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (240, 175, '2021-08-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (241, 241, '2020-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (242, 396, '2021-12-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (243, 367, '2020-05-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (244, 163, '2022-07-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (245, 388, '2021-09-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (246, 190, '2023-05-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (247, 41, '2022-07-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (248, 351, '2020-08-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (249, 218, '2021-01-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (250, 9, '2021-05-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (251, 80, '2023-05-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (252, 181, '2020-09-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (253, 8, '2021-02-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (254, 120, '2021-01-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (255, 205, '2020-04-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (256, 130, '2020-11-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (257, 370, '2021-07-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (258, 233, '2020-07-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (259, 353, '2021-08-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (260, 395, '2021-07-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (261, 186, '2023-03-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (262, 82, '2020-05-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (263, 92, '2022-07-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (264, 216, '2021-02-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (265, 222, '2020-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (266, 273, '2020-08-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (267, 98, '2021-01-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (268, 42, '2023-03-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (269, 381, '2022-11-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (270, 97, '2022-11-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (271, 375, '2021-12-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (272, 232, '2022-01-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (273, 118, '2022-09-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (274, 367, '2023-02-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (275, 298, '2020-07-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (276, 95, '2022-06-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (277, 2, '2023-05-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (278, 352, '2022-12-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (279, 160, '2021-01-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (280, 37, '2021-08-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (281, 47, '2022-03-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (282, 365, '2021-08-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (283, 103, '2021-04-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (284, 206, '2020-04-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (286, 345, '2022-11-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (287, 283, '2020-10-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (288, 290, '2023-03-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (290, 223, '2023-03-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (291, 224, '2022-05-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (292, 257, '2022-06-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (293, 276, '2021-08-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (294, 166, '2022-11-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (295, 228, '2020-12-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (296, 178, '2021-09-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (297, 355, '2020-05-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (298, 87, '2023-03-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (299, 112, '2020-05-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (300, 77, '2022-07-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (301, 197, '2021-04-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (302, 190, '2021-09-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (303, 111, '2022-12-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (304, 301, '2022-02-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (305, 333, '2023-04-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (306, 320, '2021-10-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (307, 289, '2020-09-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (308, 392, '2020-06-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (309, 100, '2020-05-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (310, 249, '2021-05-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (311, 2, '2022-05-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (312, 356, '2021-02-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (313, 152, '2021-04-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (314, 25, '2020-08-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (315, 101, '2020-04-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (316, 166, '2020-08-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (317, 280, '2021-07-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (318, 251, '2021-09-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (319, 38, '2023-05-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (320, 268, '2020-10-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (321, 215, '2021-01-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (322, 271, '2023-05-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (323, 346, '2022-09-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (324, 379, '2023-01-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (325, 368, '2022-03-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (326, 145, '2022-11-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (327, 153, '2022-01-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (328, 394, '2022-06-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (329, 204, '2021-12-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (330, 150, '2022-11-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (331, 275, '2023-05-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (332, 112, '2021-07-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (333, 264, '2021-10-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (334, 6, '2021-06-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (335, 368, '2023-01-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (336, 339, '2022-08-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (337, 75, '2020-10-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (338, 83, '2021-10-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (339, 334, '2022-09-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (340, 55, '2021-11-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (341, 377, '2021-04-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (342, 224, '2023-05-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (343, 274, '2020-12-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (344, 276, '2020-11-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (345, 65, '2022-06-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (346, 83, '2022-12-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (347, 393, '2021-07-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (348, 364, '2022-03-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (349, 22, '2021-12-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (350, 179, '2021-10-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (351, 76, '2021-08-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (352, 362, '2022-02-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (353, 64, '2022-06-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (354, 95, '2022-10-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (355, 95, '2021-03-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (356, 374, '2020-06-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (357, 44, '2021-12-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (358, 112, '2022-10-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (359, 312, '2021-05-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (360, 35, '2022-02-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (361, 359, '2020-05-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (363, 9, '2022-02-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (364, 2, '2022-09-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (365, 63, '2021-02-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (366, 219, '2023-04-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (367, 303, '2022-11-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (368, 350, '2022-01-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (369, 102, '2022-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (370, 102, '2023-03-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (371, 20, '2020-07-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (372, 9, '2020-10-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (373, 324, '2021-03-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (374, 196, '2020-05-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (375, 397, '2021-11-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (376, 15, '2021-11-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (377, 227, '2023-04-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (378, 211, '2020-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (379, 247, '2021-01-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (380, 330, '2020-08-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (381, 149, '2023-03-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (382, 216, '2021-04-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (383, 20, '2022-04-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (384, 338, '2022-08-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (385, 107, '2021-10-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (386, 299, '2021-09-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (387, 138, '2021-06-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (388, 360, '2021-06-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (389, 272, '2021-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (390, 70, '2021-07-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (391, 35, '2021-09-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (392, 23, '2022-06-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (393, 388, '2020-09-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (394, 112, '2020-08-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (395, 154, '2021-10-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (396, 251, '2020-10-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (397, 178, '2022-11-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (398, 326, '2020-10-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (399, 257, '2021-01-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (400, 89, '2022-02-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (401, 48, '2020-04-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (402, 14, '2023-06-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (403, 204, '2020-05-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (404, 333, '2022-02-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (405, 340, '2021-09-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (406, 26, '2022-11-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (407, 224, '2020-11-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (408, 251, '2023-02-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (409, 299, '2021-02-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (410, 209, '2023-03-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (411, 26, '2020-12-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (412, 86, '2022-02-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (413, 11, '2020-09-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (414, 302, '2020-12-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (415, 60, '2020-09-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (416, 96, '2022-09-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (417, 310, '2021-05-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (418, 329, '2021-11-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (419, 297, '2023-06-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (420, 368, '2020-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (421, 254, '2023-05-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (422, 388, '2022-06-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (423, 364, '2022-01-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (424, 226, '2021-06-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (425, 252, '2022-02-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (426, 259, '2022-06-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (427, 66, '2022-05-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (428, 252, '2020-05-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (429, 54, '2022-01-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (430, 200, '2022-05-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (431, 109, '2021-09-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (432, 144, '2020-08-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (433, 102, '2022-08-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (434, 94, '2022-06-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (435, 97, '2021-06-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (436, 95, '2022-05-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (437, 244, '2021-01-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (438, 286, '2021-01-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (439, 292, '2022-09-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (440, 4, '2020-10-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (441, 258, '2023-05-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (442, 122, '2021-02-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (443, 398, '2020-11-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (444, 326, '2021-06-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (445, 377, '2021-02-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (446, 274, '2022-07-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (447, 385, '2020-11-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (448, 249, '2021-08-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (449, 299, '2022-12-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (450, 348, '2022-03-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (451, 388, '2020-06-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (452, 281, '2022-09-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (453, 197, '2021-04-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (454, 268, '2023-03-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (455, 202, '2023-03-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (456, 62, '2020-08-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (457, 228, '2021-11-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (458, 304, '2022-03-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (459, 320, '2021-08-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (460, 200, '2022-12-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (461, 380, '2021-04-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (462, 350, '2023-02-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (463, 31, '2022-06-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (464, 326, '2022-03-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (465, 323, '2022-04-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (466, 386, '2022-11-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (467, 176, '2023-01-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (468, 142, '2021-03-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (469, 250, '2021-09-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (470, 213, '2021-07-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (471, 327, '2020-04-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (472, 287, '2021-10-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (473, 197, '2020-11-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (474, 295, '2021-09-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (475, 237, '2022-03-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (476, 287, '2021-06-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (477, 240, '2023-02-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (478, 310, '2022-10-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (479, 51, '2020-12-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (480, 285, '2021-07-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (481, 211, '2023-04-14');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (482, 278, '2022-09-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (483, 239, '2021-07-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (484, 101, '2020-11-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (485, 336, '2020-09-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (486, 90, '2022-06-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (487, 359, '2021-07-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (488, 212, '2021-04-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (489, 29, '2021-02-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (490, 80, '2022-04-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (491, 64, '2022-02-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (492, 182, '2020-06-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (493, 324, '2021-10-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (494, 328, '2021-12-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (495, 84, '2021-07-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (496, 377, '2020-10-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (497, 24, '2021-05-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (498, 71, '2021-04-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (499, 36, '2021-01-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (500, 19, '2020-08-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (501, 157, '2022-12-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (502, 361, '2022-07-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (503, 226, '2021-03-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (504, 134, '2021-01-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (505, 12, '2021-07-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (506, 52, '2021-02-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (507, 344, '2023-03-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (508, 35, '2022-06-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (509, 112, '2022-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (510, 336, '2020-10-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (511, 388, '2023-02-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (512, 155, '2022-09-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (513, 159, '2020-07-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (514, 194, '2020-09-12');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (515, 298, '2020-06-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (516, 29, '2022-08-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (517, 38, '2022-09-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (518, 70, '2021-03-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (519, 74, '2020-10-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (520, 330, '2020-07-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (521, 52, '2021-09-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (522, 88, '2020-12-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (523, 128, '2020-08-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (524, 289, '2020-04-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (525, 235, '2020-07-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (526, 42, '2022-07-31');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (527, 90, '2023-02-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (528, 171, '2021-11-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (529, 196, '2023-03-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (530, 303, '2022-05-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (531, 366, '2021-07-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (532, 312, '2022-07-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (533, 341, '2023-04-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (534, 338, '2023-03-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (535, 337, '2021-12-21');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (536, 115, '2021-12-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (537, 229, '2022-08-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (538, 240, '2022-07-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (539, 364, '2022-05-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (540, 34, '2020-05-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (541, 175, '2021-09-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (542, 286, '2020-09-09');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (543, 219, '2023-05-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (544, 216, '2022-04-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (545, 308, '2020-04-07');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (546, 280, '2020-12-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (547, 338, '2022-02-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (548, 81, '2021-08-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (549, 356, '2020-05-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (550, 398, '2021-03-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (551, 9, '2021-12-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (552, 14, '2020-04-28');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (553, 218, '2021-10-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (554, 91, '2022-11-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (555, 52, '2020-10-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (556, 230, '2020-12-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (557, 378, '2021-06-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (558, 79, '2020-08-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (559, 394, '2022-03-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (560, 241, '2021-08-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (561, 30, '2020-07-05');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (562, 286, '2021-06-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (563, 96, '2021-07-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (564, 357, '2021-10-19');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (565, 47, '2020-09-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (566, 240, '2021-07-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (567, 281, '2020-10-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (568, 236, '2022-08-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (569, 19, '2022-02-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (570, 211, '2022-06-25');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (571, 24, '2021-10-04');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (572, 184, '2022-05-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (573, 303, '2021-12-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (574, 133, '2021-11-29');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (575, 151, '2021-04-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (576, 87, '2021-12-11');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (577, 302, '2020-11-02');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (578, 267, '2021-10-24');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (579, 382, '2021-05-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (580, 342, '2020-12-20');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (581, 288, '2021-01-13');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (582, 144, '2020-10-26');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (583, 225, '2021-03-22');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (584, 339, '2022-02-18');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (585, 72, '2023-01-27');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (586, 199, '2022-02-10');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (587, 224, '2022-03-03');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (588, 178, '2020-10-08');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (589, 236, '2022-10-01');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (590, 301, '2022-11-16');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (591, 90, '2022-03-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (592, 74, '2021-12-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (593, 34, '2021-09-15');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (594, 288, '2021-01-30');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (595, 113, '2020-08-17');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (596, 140, '2021-11-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (597, 336, '2020-12-06');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (599, 195, '2021-02-23');
INSERT INTO public.purchase_invoice (purchase_invoice_id, address_id, purchase_invoice_date) VALUES (600, 34, '2021-04-18');


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3383.dat                                                                                            0000600 0004000 0002000 00000001477 14437437366 0014304 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.store (store_id, name, address_id) VALUES (1, 'Bytecard', 401);
INSERT INTO public.store (store_id, name, address_id) VALUES (2, 'Bitwolf', 402);
INSERT INTO public.store (store_id, name, address_id) VALUES (3, 'Bigtax', 403);
INSERT INTO public.store (store_id, name, address_id) VALUES (4, 'Cardguard', 404);
INSERT INTO public.store (store_id, name, address_id) VALUES (5, 'Greenlam', 405);
INSERT INTO public.store (store_id, name, address_id) VALUES (6, 'Tampflex', 406);
INSERT INTO public.store (store_id, name, address_id) VALUES (7, 'Fintone', 407);
INSERT INTO public.store (store_id, name, address_id) VALUES (8, 'Bytecard', 408);
INSERT INTO public.store (store_id, name, address_id) VALUES (9, 'Tempsoft', 409);
INSERT INTO public.store (store_id, name, address_id) VALUES (10, 'Voyatouch', 410);


                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000031536 14437437366 0015415 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

DROP DATABASE "StoreDB";
--
-- Name: StoreDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "StoreDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "StoreDB" OWNER TO postgres;

\connect "StoreDB"

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
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    postal_code character varying(200),
    country character varying(150),
    city character varying(150),
    exacte_address text
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_address_id_seq OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    purchase_invoice_id integer,
    discount_id integer,
    customer_id integer,
    total_price integer
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;


--
-- Name: cart_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_item (
    cart_item_id integer NOT NULL,
    quantity integer,
    cart_id integer,
    product_id integer
);


ALTER TABLE public.cart_item OWNER TO postgres;

--
-- Name: cart_item_cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_item_cart_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_item_cart_item_id_seq OWNER TO postgres;

--
-- Name: cart_item_cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_item_cart_item_id_seq OWNED BY public.cart_item.cart_item_id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(250),
    last_name character varying(250),
    phone_number text,
    address_id text
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- Name: discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discount (
    discount_id integer NOT NULL,
    start_date date,
    end_date date,
    amount integer
);


ALTER TABLE public.discount OWNER TO postgres;

--
-- Name: discount_discount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discount_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discount_discount_id_seq OWNER TO postgres;

--
-- Name: discount_discount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discount_discount_id_seq OWNED BY public.discount.discount_id;


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    inventory_id integer,
    product_id integer,
    store_id integer,
    quantity integer
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    color character varying(200),
    size character varying(200),
    price integer
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- Name: purchase_invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_invoice (
    purchase_invoice_id integer NOT NULL,
    address_id integer,
    purchase_invoice_date date
);


ALTER TABLE public.purchase_invoice OWNER TO postgres;

--
-- Name: purchase_invoice_purchase_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_invoice_purchase_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_invoice_purchase_invoice_id_seq OWNER TO postgres;

--
-- Name: purchase_invoice_purchase_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_invoice_purchase_invoice_id_seq OWNED BY public.purchase_invoice.purchase_invoice_id;


--
-- Name: store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store (
    store_id integer NOT NULL,
    name character varying(200),
    address_id integer
);


ALTER TABLE public.store OWNER TO postgres;

--
-- Name: store_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_store_id_seq OWNER TO postgres;

--
-- Name: store_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store.store_id;


--
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: cart cart_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_item cart_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item ALTER COLUMN cart_item_id SET DEFAULT nextval('public.cart_item_cart_item_id_seq'::regclass);


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: discount discount_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount ALTER COLUMN discount_id SET DEFAULT nextval('public.discount_discount_id_seq'::regclass);


--
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: purchase_invoice purchase_invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_invoice ALTER COLUMN purchase_invoice_id SET DEFAULT nextval('public.purchase_invoice_purchase_invoice_id_seq'::regclass);


--
-- Name: store store_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store ALTER COLUMN store_id SET DEFAULT nextval('public.store_store_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3381.dat

--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3390.dat

--
-- Data for Name: cart_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3392.dat

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3379.dat

--
-- Data for Name: discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3388.dat

--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3384.dat

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3386.dat

--
-- Data for Name: purchase_invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3394.dat

--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3383.dat

--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, false);


--
-- Name: cart_item_cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_item_cart_item_id_seq', 1, false);


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- Name: discount_discount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discount_discount_id_seq', 1, false);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);


--
-- Name: purchase_invoice_purchase_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_invoice_purchase_invoice_id_seq', 1, false);


--
-- Name: store_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_store_id_seq', 1, false);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: cart_item cart_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (cart_item_id);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: discount discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (discount_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: purchase_invoice purchase_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_invoice
    ADD CONSTRAINT purchase_invoice_pkey PRIMARY KEY (purchase_invoice_id);


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  