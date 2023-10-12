PGDMP                          {            oliveoil    15.1    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16944    oliveoil    DATABASE     |   CREATE DATABASE oliveoil WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE oliveoil;
                erensekkeli    false            �            1259    17002 	   addresses    TABLE     �   CREATE TABLE public.addresses (
    user_id integer NOT NULL,
    consumer_or_producer smallint DEFAULT 1 NOT NULL,
    address text,
    phone_number character varying(15),
    is_active integer DEFAULT 1
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    16972    increase_id    SEQUENCE     v   CREATE SEQUENCE public.increase_id
    START WITH 101
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.increase_id;
       public          postgres    false            �            1259    17016    oil_appointment    TABLE       CREATE TABLE public.oil_appointment (
    appointment_id integer DEFAULT nextval('public.increase_id'::regclass) NOT NULL,
    user_id integer NOT NULL,
    olive_order_id integer NOT NULL,
    appointment_date date NOT NULL,
    status smallint DEFAULT 1
);
 #   DROP TABLE public.oil_appointment;
       public         heap    postgres    false    214            �            1259    17028    olive_orders    TABLE     �   CREATE TABLE public.olive_orders (
    olive_id integer DEFAULT nextval('public.increase_id'::regclass) NOT NULL,
    weight integer NOT NULL,
    time_for_weight integer,
    olive_type smallint DEFAULT 1
);
     DROP TABLE public.olive_orders;
       public         heap    postgres    false    214            �            1259    16980    users    TABLE     +  CREATE TABLE public.users (
    user_id integer DEFAULT nextval('public.increase_id'::regclass) NOT NULL,
    user_name character varying(50) NOT NULL,
    user_surname character varying(50) NOT NULL,
    user_mail text NOT NULL,
    user_password text NOT NULL,
    is_active smallint DEFAULT 1
);
    DROP TABLE public.users;
       public         heap    postgres    false    214                      0    17002 	   addresses 
   TABLE DATA           d   COPY public.addresses (user_id, consumer_or_producer, address, phone_number, is_active) FROM stdin;
    public          postgres    false    216   �                 0    17016    oil_appointment 
   TABLE DATA           l   COPY public.oil_appointment (appointment_id, user_id, olive_order_id, appointment_date, status) FROM stdin;
    public          postgres    false    217   d                 0    17028    olive_orders 
   TABLE DATA           U   COPY public.olive_orders (olive_id, weight, time_for_weight, olive_type) FROM stdin;
    public          postgres    false    218   �                 0    16980    users 
   TABLE DATA           f   COPY public.users (user_id, user_name, user_surname, user_mail, user_password, is_active) FROM stdin;
    public          postgres    false    215   �                  0    0    increase_id    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.increase_id', 106, true);
          public          postgres    false    214            |           2606    17010    addresses addresses_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (user_id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    216            ~           2606    17022 $   oil_appointment oil_appointment_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.oil_appointment
    ADD CONSTRAINT oil_appointment_pkey PRIMARY KEY (appointment_id);
 N   ALTER TABLE ONLY public.oil_appointment DROP CONSTRAINT oil_appointment_pkey;
       public            postgres    false    217            �           2606    17034    olive_orders olive_orders_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.olive_orders
    ADD CONSTRAINT olive_orders_pkey PRIMARY KEY (olive_id);
 H   ALTER TABLE ONLY public.olive_orders DROP CONSTRAINT olive_orders_pkey;
       public            postgres    false    218            z           2606    16988    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    17023    oil_appointment fg_key    FK CONSTRAINT     z   ALTER TABLE ONLY public.oil_appointment
    ADD CONSTRAINT fg_key FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.oil_appointment DROP CONSTRAINT fg_key;
       public          postgres    false    3194    217    215            �           2606    17035    oil_appointment fg_key_olive    FK CONSTRAINT     �   ALTER TABLE ONLY public.oil_appointment
    ADD CONSTRAINT fg_key_olive FOREIGN KEY (olive_order_id) REFERENCES public.olive_orders(olive_id);
 F   ALTER TABLE ONLY public.oil_appointment DROP CONSTRAINT fg_key_olive;
       public          postgres    false    218    3200    217            �           2606    17011    addresses foreign_key_const    FK CONSTRAINT        ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT foreign_key_const FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 E   ALTER TABLE ONLY public.addresses DROP CONSTRAINT foreign_key_const;
       public          postgres    false    216    3194    215               \   x�340�4�N�I.��)U�M��S04���N��Զ40564�01243�4�240�4��!��*34262! ,T�	� 	@�b���� p%            x������ � �            x������ � �         �   x�}�;rADc�a(I3�OF��)�|4��\��p/�e;"�@]�^�		�[�ଇ�GH�z����O����L���C-|�}�V�,��g{Y�~1��Gk�d+&iB�eǶb~�lR�\�����y��2�B��h�#J�cq?	|<��oo�vTr(���j���V�hEC�U��0�T�     