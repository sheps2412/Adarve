PGDMP         *            
    z            adarve    13.2    13.2 <    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20751    adarve    DATABASE     j   CREATE DATABASE adarve WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.utf8';
    DROP DATABASE adarve;
                postgres    false            �            1259    28961    Deudas    TABLE     r  CREATE TABLE public."Deudas" (
    id_deuda integer NOT NULL,
    id_usuario integer NOT NULL,
    prestamista character varying(100) NOT NULL,
    tipo character varying(100) NOT NULL,
    fechai date NOT NULL,
    saldo money NOT NULL,
    monto money NOT NULL,
    cuota money NOT NULL,
    meses integer NOT NULL,
    nombre_deuda character varying(100) NOT NULL
);
    DROP TABLE public."Deudas";
       public         heap    postgres    false            �            1259    28959    Deudas_id_deuda_seq    SEQUENCE     �   CREATE SEQUENCE public."Deudas_id_deuda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Deudas_id_deuda_seq";
       public          postgres    false    207            �           0    0    Deudas_id_deuda_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Deudas_id_deuda_seq" OWNED BY public."Deudas".id_deuda;
          public          postgres    false    206            �            1259    29003    Gastos    TABLE     �   CREATE TABLE public."Gastos" (
    id_gasto integer NOT NULL,
    concepto character varying(100) NOT NULL,
    monto money NOT NULL,
    descripcion character varying(500),
    id_presupuesto integer NOT NULL
);
    DROP TABLE public."Gastos";
       public         heap    postgres    false            �            1259    29001    Gastos_id_gasto_seq    SEQUENCE     �   CREATE SEQUENCE public."Gastos_id_gasto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Gastos_id_gasto_seq";
       public          postgres    false    213                        0    0    Gastos_id_gasto_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Gastos_id_gasto_seq" OWNED BY public."Gastos".id_gasto;
          public          postgres    false    212            �            1259    28969    Pagos    TABLE     �   CREATE TABLE public."Pagos" (
    id_pago integer NOT NULL,
    id_deuda integer NOT NULL,
    id_transaccion integer NOT NULL
);
    DROP TABLE public."Pagos";
       public         heap    postgres    false            �            1259    28967    Pagos_id_pago_seq    SEQUENCE     �   CREATE SEQUENCE public."Pagos_id_pago_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Pagos_id_pago_seq";
       public          postgres    false    209                       0    0    Pagos_id_pago_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Pagos_id_pago_seq" OWNED BY public."Pagos".id_pago;
          public          postgres    false    208            �            1259    28987    Presupuestos    TABLE     �   CREATE TABLE public."Presupuestos" (
    id_presupuesto integer NOT NULL,
    id_usuario integer NOT NULL,
    nombre character varying(500) NOT NULL,
    descripcion character varying(1500),
    fechai date,
    fechaf date
);
 "   DROP TABLE public."Presupuestos";
       public         heap    postgres    false            �            1259    28985    Presupuestos_id_presupuesto_seq    SEQUENCE     �   CREATE SEQUENCE public."Presupuestos_id_presupuesto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Presupuestos_id_presupuesto_seq";
       public          postgres    false    211                       0    0    Presupuestos_id_presupuesto_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Presupuestos_id_presupuesto_seq" OWNED BY public."Presupuestos".id_presupuesto;
          public          postgres    false    210            �            1259    20769    Sesiones    TABLE     �   CREATE TABLE public."Sesiones" (
    id_sesion integer NOT NULL,
    id_usuario integer NOT NULL,
    fecha date NOT NULL,
    exito boolean NOT NULL,
    os character varying(50) NOT NULL
);
    DROP TABLE public."Sesiones";
       public         heap    postgres    false            �            1259    20767    Sesiones_id_sesion_seq    SEQUENCE     �   CREATE SEQUENCE public."Sesiones_id_sesion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Sesiones_id_sesion_seq";
       public          postgres    false    203                       0    0    Sesiones_id_sesion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Sesiones_id_sesion_seq" OWNED BY public."Sesiones".id_sesion;
          public          postgres    false    202            �            1259    28945    Transaccion    TABLE       CREATE TABLE public."Transaccion" (
    id_transaccion integer NOT NULL,
    id_usuario integer NOT NULL,
    concepto character varying(100) NOT NULL,
    monto money NOT NULL,
    descripcion character varying(500),
    tipo integer NOT NULL,
    fecha date NOT NULL
);
 !   DROP TABLE public."Transaccion";
       public         heap    postgres    false            �            1259    20754    Usuarios    TABLE     {  CREATE TABLE public."Usuarios" (
    id_usuario integer NOT NULL,
    nombre character varying(200) NOT NULL,
    correo character varying(200) NOT NULL,
    clave character varying(100) NOT NULL,
    autenticacion boolean DEFAULT false NOT NULL,
    codigo integer,
    cambio date NOT NULL,
    apellido character varying(500) NOT NULL,
    bolsa money DEFAULT 0.0 NOT NULL
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false            �            1259    20752    Usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Usuarios_id_usuario_seq";
       public          postgres    false    201                       0    0    Usuarios_id_usuario_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Usuarios_id_usuario_seq" OWNED BY public."Usuarios".id_usuario;
          public          postgres    false    200            �            1259    28943    transaccion_id_transaccion_seq    SEQUENCE     �   CREATE SEQUENCE public.transaccion_id_transaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transaccion_id_transaccion_seq;
       public          postgres    false    205                       0    0    transaccion_id_transaccion_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.transaccion_id_transaccion_seq OWNED BY public."Transaccion".id_transaccion;
          public          postgres    false    204            O           2604    28964    Deudas id_deuda    DEFAULT     v   ALTER TABLE ONLY public."Deudas" ALTER COLUMN id_deuda SET DEFAULT nextval('public."Deudas_id_deuda_seq"'::regclass);
 @   ALTER TABLE public."Deudas" ALTER COLUMN id_deuda DROP DEFAULT;
       public          postgres    false    207    206    207            R           2604    29006    Gastos id_gasto    DEFAULT     v   ALTER TABLE ONLY public."Gastos" ALTER COLUMN id_gasto SET DEFAULT nextval('public."Gastos_id_gasto_seq"'::regclass);
 @   ALTER TABLE public."Gastos" ALTER COLUMN id_gasto DROP DEFAULT;
       public          postgres    false    213    212    213            P           2604    28972    Pagos id_pago    DEFAULT     r   ALTER TABLE ONLY public."Pagos" ALTER COLUMN id_pago SET DEFAULT nextval('public."Pagos_id_pago_seq"'::regclass);
 >   ALTER TABLE public."Pagos" ALTER COLUMN id_pago DROP DEFAULT;
       public          postgres    false    209    208    209            Q           2604    28990    Presupuestos id_presupuesto    DEFAULT     �   ALTER TABLE ONLY public."Presupuestos" ALTER COLUMN id_presupuesto SET DEFAULT nextval('public."Presupuestos_id_presupuesto_seq"'::regclass);
 L   ALTER TABLE public."Presupuestos" ALTER COLUMN id_presupuesto DROP DEFAULT;
       public          postgres    false    211    210    211            M           2604    20772    Sesiones id_sesion    DEFAULT     |   ALTER TABLE ONLY public."Sesiones" ALTER COLUMN id_sesion SET DEFAULT nextval('public."Sesiones_id_sesion_seq"'::regclass);
 C   ALTER TABLE public."Sesiones" ALTER COLUMN id_sesion DROP DEFAULT;
       public          postgres    false    203    202    203            N           2604    28948    Transaccion id_transaccion    DEFAULT     �   ALTER TABLE ONLY public."Transaccion" ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transaccion_id_transaccion_seq'::regclass);
 K   ALTER TABLE public."Transaccion" ALTER COLUMN id_transaccion DROP DEFAULT;
       public          postgres    false    204    205    205            J           2604    20757    Usuarios id_usuario    DEFAULT     ~   ALTER TABLE ONLY public."Usuarios" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuarios_id_usuario_seq"'::regclass);
 D   ALTER TABLE public."Usuarios" ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    28961    Deudas 
   TABLE DATA           }   COPY public."Deudas" (id_deuda, id_usuario, prestamista, tipo, fechai, saldo, monto, cuota, meses, nombre_deuda) FROM stdin;
    public          postgres    false    207   ~G       �          0    29003    Gastos 
   TABLE DATA           Z   COPY public."Gastos" (id_gasto, concepto, monto, descripcion, id_presupuesto) FROM stdin;
    public          postgres    false    213   �G       �          0    28969    Pagos 
   TABLE DATA           D   COPY public."Pagos" (id_pago, id_deuda, id_transaccion) FROM stdin;
    public          postgres    false    209   �G       �          0    28987    Presupuestos 
   TABLE DATA           i   COPY public."Presupuestos" (id_presupuesto, id_usuario, nombre, descripcion, fechai, fechaf) FROM stdin;
    public          postgres    false    211   �G       �          0    20769    Sesiones 
   TABLE DATA           M   COPY public."Sesiones" (id_sesion, id_usuario, fecha, exito, os) FROM stdin;
    public          postgres    false    203   �G       �          0    28945    Transaccion 
   TABLE DATA           n   COPY public."Transaccion" (id_transaccion, id_usuario, concepto, monto, descripcion, tipo, fecha) FROM stdin;
    public          postgres    false    205   H       �          0    20754    Usuarios 
   TABLE DATA           w   COPY public."Usuarios" (id_usuario, nombre, correo, clave, autenticacion, codigo, cambio, apellido, bolsa) FROM stdin;
    public          postgres    false    201   ,H                  0    0    Deudas_id_deuda_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Deudas_id_deuda_seq"', 1, false);
          public          postgres    false    206                       0    0    Gastos_id_gasto_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Gastos_id_gasto_seq"', 1, false);
          public          postgres    false    212                       0    0    Pagos_id_pago_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Pagos_id_pago_seq"', 1, false);
          public          postgres    false    208            	           0    0    Presupuestos_id_presupuesto_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Presupuestos_id_presupuesto_seq"', 1, false);
          public          postgres    false    210            
           0    0    Sesiones_id_sesion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Sesiones_id_sesion_seq"', 1, false);
          public          postgres    false    202                       0    0    Usuarios_id_usuario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Usuarios_id_usuario_seq"', 1, false);
          public          postgres    false    200                       0    0    transaccion_id_transaccion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transaccion_id_transaccion_seq', 1, false);
          public          postgres    false    204            \           2606    28966    Deudas Deudas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Deudas"
    ADD CONSTRAINT "Deudas_pkey" PRIMARY KEY (id_deuda);
 @   ALTER TABLE ONLY public."Deudas" DROP CONSTRAINT "Deudas_pkey";
       public            postgres    false    207            b           2606    29011    Gastos Gastos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT "Gastos_pkey" PRIMARY KEY (id_gasto);
 @   ALTER TABLE ONLY public."Gastos" DROP CONSTRAINT "Gastos_pkey";
       public            postgres    false    213            ^           2606    28974    Pagos Pagos_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Pagos"
    ADD CONSTRAINT "Pagos_pkey" PRIMARY KEY (id_pago);
 >   ALTER TABLE ONLY public."Pagos" DROP CONSTRAINT "Pagos_pkey";
       public            postgres    false    209            `           2606    28995    Presupuestos Presupuestos_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Presupuestos"
    ADD CONSTRAINT "Presupuestos_pkey" PRIMARY KEY (id_presupuesto);
 L   ALTER TABLE ONLY public."Presupuestos" DROP CONSTRAINT "Presupuestos_pkey";
       public            postgres    false    211            X           2606    20774    Sesiones Sesiones_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Sesiones"
    ADD CONSTRAINT "Sesiones_pkey" PRIMARY KEY (id_sesion);
 D   ALTER TABLE ONLY public."Sesiones" DROP CONSTRAINT "Sesiones_pkey";
       public            postgres    false    203            T           2606    20762    Usuarios Usuarios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id_usuario);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    201            V           2606    20764    Usuarios fke 
   CONSTRAINT     K   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT fke UNIQUE (correo);
 8   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT fke;
       public            postgres    false    201            Z           2606    28953    Transaccion transaccion_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Transaccion"
    ADD CONSTRAINT transaccion_pkey PRIMARY KEY (id_transaccion);
 H   ALTER TABLE ONLY public."Transaccion" DROP CONSTRAINT transaccion_pkey;
       public            postgres    false    205            e           2606    28975 
   Pagos fk_d    FK CONSTRAINT     u   ALTER TABLE ONLY public."Pagos"
    ADD CONSTRAINT fk_d FOREIGN KEY (id_deuda) REFERENCES public."Deudas"(id_deuda);
 6   ALTER TABLE ONLY public."Pagos" DROP CONSTRAINT fk_d;
       public          postgres    false    207    209    2908            h           2606    29012    Gastos fk_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."Gastos"
    ADD CONSTRAINT fk_p FOREIGN KEY (id_presupuesto) REFERENCES public."Presupuestos"(id_presupuesto);
 7   ALTER TABLE ONLY public."Gastos" DROP CONSTRAINT fk_p;
       public          postgres    false    2912    211    213            f           2606    28980 
   Pagos fk_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pagos"
    ADD CONSTRAINT fk_t FOREIGN KEY (id_transaccion) REFERENCES public."Transaccion"(id_transaccion);
 6   ALTER TABLE ONLY public."Pagos" DROP CONSTRAINT fk_t;
       public          postgres    false    205    2906    209            d           2606    28954    Transaccion fk_u    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transaccion"
    ADD CONSTRAINT fk_u FOREIGN KEY (id_usuario) REFERENCES public."Usuarios"(id_usuario);
 <   ALTER TABLE ONLY public."Transaccion" DROP CONSTRAINT fk_u;
       public          postgres    false    2900    201    205            g           2606    28996    Presupuestos fk_u    FK CONSTRAINT     �   ALTER TABLE ONLY public."Presupuestos"
    ADD CONSTRAINT fk_u FOREIGN KEY (id_usuario) REFERENCES public."Usuarios"(id_usuario);
 =   ALTER TABLE ONLY public."Presupuestos" DROP CONSTRAINT fk_u;
       public          postgres    false    211    2900    201            c           2606    20775    Sesiones fku    FK CONSTRAINT     }   ALTER TABLE ONLY public."Sesiones"
    ADD CONSTRAINT fku FOREIGN KEY (id_usuario) REFERENCES public."Usuarios"(id_usuario);
 8   ALTER TABLE ONLY public."Sesiones" DROP CONSTRAINT fku;
       public          postgres    false    201    2900    203            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     