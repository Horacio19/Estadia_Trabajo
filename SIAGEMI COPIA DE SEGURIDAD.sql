PGDMP         $                |            siagemi    15.3    15.3 �                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    47849    siagemi    DATABASE     {   CREATE DATABASE siagemi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE siagemi;
                cidtfa    false            �            1259    47855    area    TABLE     �   CREATE TABLE public.area (
    id_area character(12) NOT NULL,
    nombre character varying(120),
    ubicacion character varying(255)
);
    DROP TABLE public.area;
       public         heap    postgres    false            �            1259    48093 	   articulos    TABLE       CREATE TABLE public.articulos (
    id_articulo character(12) NOT NULL,
    id_tarjetanecesidad character(12) NOT NULL,
    id_tarjetanorutinaria character(12) NOT NULL,
    nombre_insumo character varying(150) NOT NULL,
    cantidad character varying(3) NOT NULL
);
    DROP TABLE public.articulos;
       public         heap    postgres    false            �            1259    48108 	   bitacoras    TABLE       CREATE TABLE public.bitacoras (
    id_bitacora character(15) NOT NULL,
    no_folio integer NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_autorizacion date NOT NULL,
    estado character varying(50) NOT NULL,
    url character varying(255) NOT NULL
);
    DROP TABLE public.bitacoras;
       public         heap    postgres    false            �            1259    48287    calendarizacion    TABLE     (  CREATE TABLE public.calendarizacion (
    id_calendarizacion character(15) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    id_usuario character(12) NOT NULL,
    id_tiposervicio character(12) NOT NULL,
    id_paquete character(15) NOT NULL,
    actividad character varying(150) NOT NULL,
    estado character varying(20) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date NOT NULL,
    frecuencia character varying(20) NOT NULL,
    id_planos character varying(255) NOT NULL,
    observacion character varying(255) NOT NULL
);
 #   DROP TABLE public.calendarizacion;
       public         heap    postgres    false            �            1259    47905    componentes    TABLE     �   CREATE TABLE public.componentes (
    id_componente character(12) NOT NULL,
    id_subred character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    imagen character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE public.componentes;
       public         heap    postgres    false            �            1259    48250 	   electrica    TABLE     �   CREATE TABLE public.electrica (
    id_electrica character(12) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    datos_componente character varying(255) NOT NULL
);
    DROP TABLE public.electrica;
       public         heap    postgres    false            �            1259    47934    fichas_tecnicas    TABLE     !  CREATE TABLE public.fichas_tecnicas (
    id_fichatecnicas character(12) NOT NULL,
    id_subcomponente character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    url character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    fecha date NOT NULL
);
 #   DROP TABLE public.fichas_tecnicas;
       public         heap    postgres    false            �            1259    48113    fila_bitacoras    TABLE     9  CREATE TABLE public.fila_bitacoras (
    id_filabitacora character(12) NOT NULL,
    id_bitacora character(15) NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_autorizacion date NOT NULL,
    no_fila integer NOT NULL,
    actividad character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);
 "   DROP TABLE public.fila_bitacoras;
       public         heap    postgres    false            �            1259    47970    herramientas    TABLE     '  CREATE TABLE public.herramientas (
    id_herramienta character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    imagen character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    cantidad integer NOT NULL,
    ubicacion character varying(255) NOT NULL
);
     DROP TABLE public.herramientas;
       public         heap    postgres    false            �            1259    48240 
   hidraulica    TABLE     �   CREATE TABLE public.hidraulica (
    id_hidraulica character(12) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    datos_componente character varying(255) NOT NULL
);
    DROP TABLE public.hidraulica;
       public         heap    postgres    false            �            1259    48260    hidrosanitaria    TABLE     �   CREATE TABLE public.hidrosanitaria (
    id_hidrosanitaria character(12) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    datos_componente character varying(255) NOT NULL
);
 "   DROP TABLE public.hidrosanitaria;
       public         heap    postgres    false            �            1259    48046    hoja_pruebas    TABLE     �   CREATE TABLE public.hoja_pruebas (
    id_hojaprueba character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(150) NOT NULL,
    url character varying(150) NOT NULL,
    fecha date NOT NULL
);
     DROP TABLE public.hoja_pruebas;
       public         heap    postgres    false            �            1259    48009    insumos    TABLE     t  CREATE TABLE public.insumos (
    id_insumo character(10) NOT NULL,
    id_proveedor character(10) NOT NULL,
    nombre character varying(150) NOT NULL,
    imagen character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    cantidad integer NOT NULL,
    ubicacion character varying(255) NOT NULL,
    garantia character varying(100) NOT NULL
);
    DROP TABLE public.insumos;
       public         heap    postgres    false            �            1259    47946    manuales    TABLE       CREATE TABLE public.manuales (
    id_manual character(12) NOT NULL,
    id_subcomponente character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.manuales;
       public         heap    postgres    false            �            1259    48031    material_insumo    TABLE     �   CREATE TABLE public.material_insumo (
    id_materiales character(12) NOT NULL,
    id_insumo character(12) NOT NULL,
    cantidad integer NOT NULL
);
 #   DROP TABLE public.material_insumo;
       public         heap    postgres    false            �            1259    47997 
   materiales    TABLE     �   CREATE TABLE public.materiales (
    id_materiales character(12) NOT NULL,
    nombre character varying(120) NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE public.materiales;
       public         heap    postgres    false            �            1259    48314    notificacion    TABLE     U  CREATE TABLE public.notificacion (
    id_notificacion character(12) NOT NULL,
    id_calendarizacion character(15) NOT NULL,
    id_usuario character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    actividad character varying(150) NOT NULL,
    leer boolean NOT NULL,
    fecha date NOT NULL,
    contador integer NOT NULL
);
     DROP TABLE public.notificacion;
       public         heap    postgres    false            �            1259    48336    orden_subcomponentes    TABLE     �   CREATE TABLE public.orden_subcomponentes (
    id_orden_subcomponentes character(15) NOT NULL,
    id_ordentrabajo character(15) NOT NULL,
    id_calendarizacion character(15) NOT NULL
);
 (   DROP TABLE public.orden_subcomponentes;
       public         heap    postgres    false            �            1259    48329    orden_trabajo    TABLE     �  CREATE TABLE public.orden_trabajo (
    id_ordentrabajo character(15) NOT NULL,
    numero_de_orden integer NOT NULL,
    numero_de_folio integer NOT NULL,
    unidad character(14) NOT NULL,
    fecha_emision date NOT NULL,
    equipo character varying(150) NOT NULL,
    "año" character varying(5) NOT NULL,
    identificacion character varying(150) NOT NULL,
    ubicacion character varying(150) NOT NULL,
    actividad character varying(150) NOT NULL,
    periocidad character varying(20) NOT NULL,
    recomendaciones_seguridad character varying(255) NOT NULL,
    sistema_verificar character varying(150) NOT NULL,
    mantenimiento character varying(255) NOT NULL,
    material character varying(150) NOT NULL,
    herramienta character varying(150) NOT NULL,
    reprogramacion date NOT NULL,
    efectos character varying(100) NOT NULL,
    causa character varying(100) NOT NULL,
    accion character varying(100) NOT NULL,
    "evaluación_mantto" character varying(255) NOT NULL,
    fecha_evaluacion date NOT NULL,
    realizo_trabajo character varying(150) NOT NULL,
    supervicior_trabajo character varying(150) NOT NULL,
    q_r character varying(255) NOT NULL
);
 !   DROP TABLE public.orden_trabajo;
       public         heap    postgres    false            �            1259    48185    paquetes    TABLE     �  CREATE TABLE public.paquetes (
    id_paquete character(12) NOT NULL,
    id_recursos character(12) NOT NULL,
    id_usuario character(12) NOT NULL,
    id_materiales character(12) NOT NULL,
    id_procedimiento character(12) NOT NULL,
    id_tarjetarutinaria character(12) NOT NULL,
    id_tarjetanorutinaria character(15) NOT NULL,
    id_tarjetanecesidad character(12) NOT NULL,
    id_bitacora character(15) NOT NULL,
    id_hojapruebas character(12) NOT NULL,
    nombre character varying(150) NOT NULL
);
    DROP TABLE public.paquetes;
       public         heap    postgres    false            �            1259    47958    planos    TABLE       CREATE TABLE public.planos (
    id_plano character(12) NOT NULL,
    id_subcomponente character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    url_plano2d character varying(255) NOT NULL,
    url_plano3d character varying(255) NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.planos;
       public         heap    postgres    false            �            1259    48051    procedimientos    TABLE     �   CREATE TABLE public.procedimientos (
    id_procedimiento character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    fecha date NOT NULL
);
 "   DROP TABLE public.procedimientos;
       public         heap    postgres    false            �            1259    48002    proveedores    TABLE     �  CREATE TABLE public.proveedores (
    id_proveedor character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    calle character varying(150) NOT NULL,
    numero character varying(150) NOT NULL,
    colonia character varying(150) NOT NULL,
    "reseña" character varying(255) NOT NULL,
    pagina_web character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    telefono character varying(15) NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    47982    recurso_herramienta    TABLE     �   CREATE TABLE public.recurso_herramienta (
    id_recurso character(12) NOT NULL,
    id_herramienta character(12) NOT NULL,
    cantidad integer NOT NULL
);
 '   DROP TABLE public.recurso_herramienta;
       public         heap    postgres    false            �            1259    47977    recursos    TABLE     �   CREATE TABLE public.recursos (
    id_recurso character(12) NOT NULL,
    nombre character varying(120) NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE public.recursos;
       public         heap    postgres    false            �            1259    47890    redes    TABLE     m   CREATE TABLE public.redes (
    id_red character(12) NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.redes;
       public         heap    postgres    false            �            1259    48371    reportes_imagenes    TABLE     �   CREATE TABLE public.reportes_imagenes (
    id_reporteimagenes character(12) NOT NULL,
    id_servicio character(12) NOT NULL,
    img character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL
);
 %   DROP TABLE public.reportes_imagenes;
       public         heap    postgres    false            �            1259    48383    reportes_servicio    TABLE     �   CREATE TABLE public.reportes_servicio (
    id_reporteservicio character(12) NOT NULL,
    id_servicio character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL
);
 %   DROP TABLE public.reportes_servicio;
       public         heap    postgres    false            �            1259    47850    rol    TABLE     b   CREATE TABLE public.rol (
    id_rol character(12) NOT NULL,
    nombre character varying(100)
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    48361 	   servicios    TABLE     �   CREATE TABLE public.servicios (
    id_servicio character(12) NOT NULL,
    id_ordentrabajo character(15) NOT NULL,
    nombre_servicio character varying(150) NOT NULL,
    estado character varying(30) NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.servicios;
       public         heap    postgres    false            �            1259    47922    subcomponentes    TABLE     �  CREATE TABLE public.subcomponentes (
    id_subcomponente character(12) NOT NULL,
    id_componente character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL,
    imagen character varying(255) NOT NULL,
    ubicacion character varying(255) NOT NULL,
    cantidad integer NOT NULL,
    estado character(15) NOT NULL,
    marca character varying(60) NOT NULL
);
 "   DROP TABLE public.subcomponentes;
       public         heap    postgres    false            �            1259    47895    subred    TABLE     �   CREATE TABLE public.subred (
    id_subred character(12) NOT NULL,
    id_red character(12) NOT NULL,
    nombre character varying(150) NOT NULL
);
    DROP TABLE public.subred;
       public         heap    postgres    false            �            1259    48083    tarjetas_necesidad    TABLE     �   CREATE TABLE public.tarjetas_necesidad (
    id_tarjetanecesidad character(12) NOT NULL,
    id_norutinaria character(15) NOT NULL,
    nombre_insumo character varying(150) NOT NULL,
    cantidad integer NOT NULL
);
 &   DROP TABLE public.tarjetas_necesidad;
       public         heap    postgres    false            �            1259    48071    tarjetas_norutinarias    TABLE       CREATE TABLE public.tarjetas_norutinarias (
    id_tarjetanorutinaria character(12) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);
 )   DROP TABLE public.tarjetas_norutinarias;
       public         heap    postgres    false            �            1259    48059    tarjetas_rutinarias    TABLE     (  CREATE TABLE public.tarjetas_rutinarias (
    id_tarjetarutinaria character(12) NOT NULL,
    id_subcomponente character(15) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    fecha date NOT NULL
);
 '   DROP TABLE public.tarjetas_rutinarias;
       public         heap    postgres    false            �            1259    47917    tipos_servicio    TABLE     �   CREATE TABLE public.tipos_servicio (
    id_tiposervicio character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    descripcion character varying(255) NOT NULL
);
 "   DROP TABLE public.tipos_servicio;
       public         heap    postgres    false            �            1259    47865    usuarios    TABLE       CREATE TABLE public.usuarios (
    id_usuario character(12) NOT NULL,
    id_rol character(12) NOT NULL,
    id_area character(12) NOT NULL,
    nombre character varying(150) NOT NULL,
    ap_paterno character varying(60) NOT NULL,
    ap_materno character varying(60) NOT NULL,
    foto_perfil character varying(255) NOT NULL,
    cargo_area character varying(160),
    especialidad character varying(120) NOT NULL,
    matricula character(20) NOT NULL,
    "contraseña" character varying(20) NOT NULL,
    grado character varying(50) NOT NULL,
    telefono character(15) NOT NULL,
    "años_trabajo" integer NOT NULL,
    nom_usuario character varying(120) NOT NULL,
    CONSTRAINT "usuarios_años_trabajo_check" CHECK ((("años_trabajo" >= 0) AND ("años_trabajo" <= 40)))
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �          0    47855    area 
   TABLE DATA           :   COPY public.area (id_area, nombre, ubicacion) FROM stdin;
    public          postgres    false    215   ��                 0    48093 	   articulos 
   TABLE DATA           u   COPY public.articulos (id_articulo, id_tarjetanecesidad, id_tarjetanorutinaria, nombre_insumo, cantidad) FROM stdin;
    public          postgres    false    237   ��                 0    48108 	   bitacoras 
   TABLE DATA           k   COPY public.bitacoras (id_bitacora, no_folio, fecha_creacion, fecha_autorizacion, estado, url) FROM stdin;
    public          postgres    false    238   �                 0    48287    calendarizacion 
   TABLE DATA           �   COPY public.calendarizacion (id_calendarizacion, id_subcomponente, id_usuario, id_tiposervicio, id_paquete, actividad, estado, fecha_inicio, fecha_termino, frecuencia, id_planos, observacion) FROM stdin;
    public          postgres    false    244   �       �          0    47905    componentes 
   TABLE DATA           \   COPY public.componentes (id_componente, id_subred, nombre, imagen, descripcion) FROM stdin;
    public          postgres    false    219   <�                 0    48250 	   electrica 
   TABLE DATA           U   COPY public.electrica (id_electrica, id_subcomponente, datos_componente) FROM stdin;
    public          postgres    false    242   Y�                 0    47934    fichas_tecnicas 
   TABLE DATA           n   COPY public.fichas_tecnicas (id_fichatecnicas, id_subcomponente, nombre, url, descripcion, fecha) FROM stdin;
    public          postgres    false    222   v�                 0    48113    fila_bitacoras 
   TABLE DATA           �   COPY public.fila_bitacoras (id_filabitacora, id_bitacora, fecha_creacion, fecha_autorizacion, no_fila, actividad, url) FROM stdin;
    public          postgres    false    239   ��                 0    47970    herramientas 
   TABLE DATA           h   COPY public.herramientas (id_herramienta, nombre, imagen, descripcion, cantidad, ubicacion) FROM stdin;
    public          postgres    false    225   ��                 0    48240 
   hidraulica 
   TABLE DATA           W   COPY public.hidraulica (id_hidraulica, id_subcomponente, datos_componente) FROM stdin;
    public          postgres    false    241   ��                 0    48260    hidrosanitaria 
   TABLE DATA           _   COPY public.hidrosanitaria (id_hidrosanitaria, id_subcomponente, datos_componente) FROM stdin;
    public          postgres    false    243   ��                 0    48046    hoja_pruebas 
   TABLE DATA           V   COPY public.hoja_pruebas (id_hojaprueba, nombre, descripcion, url, fecha) FROM stdin;
    public          postgres    false    232   �       	          0    48009    insumos 
   TABLE DATA           v   COPY public.insumos (id_insumo, id_proveedor, nombre, imagen, descripcion, cantidad, ubicacion, garantia) FROM stdin;
    public          postgres    false    230   $�                 0    47946    manuales 
   TABLE DATA           `   COPY public.manuales (id_manual, id_subcomponente, nombre, descripcion, url, fecha) FROM stdin;
    public          postgres    false    223   A�       
          0    48031    material_insumo 
   TABLE DATA           M   COPY public.material_insumo (id_materiales, id_insumo, cantidad) FROM stdin;
    public          postgres    false    231   ^�                 0    47997 
   materiales 
   TABLE DATA           H   COPY public.materiales (id_materiales, nombre, descripcion) FROM stdin;
    public          postgres    false    228   {�                 0    48314    notificacion 
   TABLE DATA           �   COPY public.notificacion (id_notificacion, id_calendarizacion, id_usuario, nombre, actividad, leer, fecha, contador) FROM stdin;
    public          postgres    false    245   ��                 0    48336    orden_subcomponentes 
   TABLE DATA           l   COPY public.orden_subcomponentes (id_orden_subcomponentes, id_ordentrabajo, id_calendarizacion) FROM stdin;
    public          postgres    false    247   ��                 0    48329    orden_trabajo 
   TABLE DATA           �  COPY public.orden_trabajo (id_ordentrabajo, numero_de_orden, numero_de_folio, unidad, fecha_emision, equipo, "año", identificacion, ubicacion, actividad, periocidad, recomendaciones_seguridad, sistema_verificar, mantenimiento, material, herramienta, reprogramacion, efectos, causa, accion, "evaluación_mantto", fecha_evaluacion, realizo_trabajo, supervicior_trabajo, q_r) FROM stdin;
    public          postgres    false    246   ��                 0    48185    paquetes 
   TABLE DATA           �   COPY public.paquetes (id_paquete, id_recursos, id_usuario, id_materiales, id_procedimiento, id_tarjetarutinaria, id_tarjetanorutinaria, id_tarjetanecesidad, id_bitacora, id_hojapruebas, nombre) FROM stdin;
    public          postgres    false    240   ��                 0    47958    planos 
   TABLE DATA           e   COPY public.planos (id_plano, id_subcomponente, nombre, url_plano2d, url_plano3d, fecha) FROM stdin;
    public          postgres    false    224   �                 0    48051    procedimientos 
   TABLE DATA           [   COPY public.procedimientos (id_procedimiento, nombre, descripcion, url, fecha) FROM stdin;
    public          postgres    false    233   )�                 0    48002    proveedores 
   TABLE DATA           |   COPY public.proveedores (id_proveedor, nombre, calle, numero, colonia, "reseña", pagina_web, correo, telefono) FROM stdin;
    public          postgres    false    229   F�                 0    47982    recurso_herramienta 
   TABLE DATA           S   COPY public.recurso_herramienta (id_recurso, id_herramienta, cantidad) FROM stdin;
    public          postgres    false    227   c�                 0    47977    recursos 
   TABLE DATA           C   COPY public.recursos (id_recurso, nombre, descripcion) FROM stdin;
    public          postgres    false    226   ��       �          0    47890    redes 
   TABLE DATA           /   COPY public.redes (id_red, nombre) FROM stdin;
    public          postgres    false    217   ��                 0    48371    reportes_imagenes 
   TABLE DATA           ^   COPY public.reportes_imagenes (id_reporteimagenes, id_servicio, img, descripcion) FROM stdin;
    public          postgres    false    249   ��                 0    48383    reportes_servicio 
   TABLE DATA           a   COPY public.reportes_servicio (id_reporteservicio, id_servicio, nombre, descripcion) FROM stdin;
    public          postgres    false    250   ��       �          0    47850    rol 
   TABLE DATA           -   COPY public.rol (id_rol, nombre) FROM stdin;
    public          postgres    false    214   ��                 0    48361 	   servicios 
   TABLE DATA           a   COPY public.servicios (id_servicio, id_ordentrabajo, nombre_servicio, estado, fecha) FROM stdin;
    public          postgres    false    248   �                  0    47922    subcomponentes 
   TABLE DATA           �   COPY public.subcomponentes (id_subcomponente, id_componente, nombre, descripcion, imagen, ubicacion, cantidad, estado, marca) FROM stdin;
    public          postgres    false    221   .�       �          0    47895    subred 
   TABLE DATA           ;   COPY public.subred (id_subred, id_red, nombre) FROM stdin;
    public          postgres    false    218   K�                 0    48083    tarjetas_necesidad 
   TABLE DATA           j   COPY public.tarjetas_necesidad (id_tarjetanecesidad, id_norutinaria, nombre_insumo, cantidad) FROM stdin;
    public          postgres    false    236   h�                 0    48071    tarjetas_norutinarias 
   TABLE DATA           r   COPY public.tarjetas_norutinarias (id_tarjetanorutinaria, id_subcomponente, nombre, descripcion, url) FROM stdin;
    public          postgres    false    235   ��                 0    48059    tarjetas_rutinarias 
   TABLE DATA           u   COPY public.tarjetas_rutinarias (id_tarjetarutinaria, id_subcomponente, nombre, descripcion, url, fecha) FROM stdin;
    public          postgres    false    234   ��       �          0    47917    tipos_servicio 
   TABLE DATA           N   COPY public.tipos_servicio (id_tiposervicio, nombre, descripcion) FROM stdin;
    public          postgres    false    220   ��       �          0    47865    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, id_rol, id_area, nombre, ap_paterno, ap_materno, foto_perfil, cargo_area, especialidad, matricula, "contraseña", grado, telefono, "años_trabajo", nom_usuario) FROM stdin;
    public          postgres    false    216   ��       �           2606    47859    area area_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id_area);
 8   ALTER TABLE ONLY public.area DROP CONSTRAINT area_pkey;
       public            postgres    false    215            &           2606    48097    articulos articulos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_pkey PRIMARY KEY (id_articulo);
 B   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_pkey;
       public            postgres    false    237            (           2606    48112    bitacoras bitacoras_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.bitacoras
    ADD CONSTRAINT bitacoras_pkey PRIMARY KEY (id_bitacora);
 B   ALTER TABLE ONLY public.bitacoras DROP CONSTRAINT bitacoras_pkey;
       public            postgres    false    238            4           2606    48293 $   calendarizacion calendarizacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.calendarizacion
    ADD CONSTRAINT calendarizacion_pkey PRIMARY KEY (id_calendarizacion);
 N   ALTER TABLE ONLY public.calendarizacion DROP CONSTRAINT calendarizacion_pkey;
       public            postgres    false    244                       2606    47911    componentes componentes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.componentes
    ADD CONSTRAINT componentes_pkey PRIMARY KEY (id_componente);
 F   ALTER TABLE ONLY public.componentes DROP CONSTRAINT componentes_pkey;
       public            postgres    false    219            0           2606    48254    electrica electrica_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.electrica
    ADD CONSTRAINT electrica_pkey PRIMARY KEY (id_electrica);
 B   ALTER TABLE ONLY public.electrica DROP CONSTRAINT electrica_pkey;
       public            postgres    false    242                       2606    47940 $   fichas_tecnicas fichas_tecnicas_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.fichas_tecnicas
    ADD CONSTRAINT fichas_tecnicas_pkey PRIMARY KEY (id_fichatecnicas);
 N   ALTER TABLE ONLY public.fichas_tecnicas DROP CONSTRAINT fichas_tecnicas_pkey;
       public            postgres    false    222            *           2606    48119 "   fila_bitacoras fila_bitacoras_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.fila_bitacoras
    ADD CONSTRAINT fila_bitacoras_pkey PRIMARY KEY (id_filabitacora);
 L   ALTER TABLE ONLY public.fila_bitacoras DROP CONSTRAINT fila_bitacoras_pkey;
       public            postgres    false    239                       2606    47976    herramientas herramientas_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.herramientas
    ADD CONSTRAINT herramientas_pkey PRIMARY KEY (id_herramienta);
 H   ALTER TABLE ONLY public.herramientas DROP CONSTRAINT herramientas_pkey;
       public            postgres    false    225            .           2606    48244    hidraulica hidraulica_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hidraulica
    ADD CONSTRAINT hidraulica_pkey PRIMARY KEY (id_hidraulica);
 D   ALTER TABLE ONLY public.hidraulica DROP CONSTRAINT hidraulica_pkey;
       public            postgres    false    241            2           2606    48264 "   hidrosanitaria hidrosanitaria_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.hidrosanitaria
    ADD CONSTRAINT hidrosanitaria_pkey PRIMARY KEY (id_hidrosanitaria);
 L   ALTER TABLE ONLY public.hidrosanitaria DROP CONSTRAINT hidrosanitaria_pkey;
       public            postgres    false    243                       2606    48050    hoja_pruebas hoja_pruebas_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hoja_pruebas
    ADD CONSTRAINT hoja_pruebas_pkey PRIMARY KEY (id_hojaprueba);
 H   ALTER TABLE ONLY public.hoja_pruebas DROP CONSTRAINT hoja_pruebas_pkey;
       public            postgres    false    232                       2606    48015    insumos insumos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT insumos_pkey PRIMARY KEY (id_insumo);
 >   ALTER TABLE ONLY public.insumos DROP CONSTRAINT insumos_pkey;
       public            postgres    false    230            
           2606    47952    manuales manuales_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.manuales
    ADD CONSTRAINT manuales_pkey PRIMARY KEY (id_manual);
 @   ALTER TABLE ONLY public.manuales DROP CONSTRAINT manuales_pkey;
       public            postgres    false    223                       2606    48035 $   material_insumo material_insumo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.material_insumo
    ADD CONSTRAINT material_insumo_pkey PRIMARY KEY (id_materiales, id_insumo);
 N   ALTER TABLE ONLY public.material_insumo DROP CONSTRAINT material_insumo_pkey;
       public            postgres    false    231    231                       2606    48001    materiales materiales_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.materiales
    ADD CONSTRAINT materiales_pkey PRIMARY KEY (id_materiales);
 D   ALTER TABLE ONLY public.materiales DROP CONSTRAINT materiales_pkey;
       public            postgres    false    228            6           2606    48318    notificacion notificacion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_pkey PRIMARY KEY (id_notificacion);
 H   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_pkey;
       public            postgres    false    245            :           2606    48340 .   orden_subcomponentes orden_subcomponentes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.orden_subcomponentes
    ADD CONSTRAINT orden_subcomponentes_pkey PRIMARY KEY (id_orden_subcomponentes);
 X   ALTER TABLE ONLY public.orden_subcomponentes DROP CONSTRAINT orden_subcomponentes_pkey;
       public            postgres    false    247            8           2606    48335     orden_trabajo orden_trabajo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.orden_trabajo
    ADD CONSTRAINT orden_trabajo_pkey PRIMARY KEY (id_ordentrabajo);
 J   ALTER TABLE ONLY public.orden_trabajo DROP CONSTRAINT orden_trabajo_pkey;
       public            postgres    false    246            ,           2606    48189    paquetes paquetes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_pkey PRIMARY KEY (id_paquete);
 @   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_pkey;
       public            postgres    false    240                       2606    47964    planos planos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.planos
    ADD CONSTRAINT planos_pkey PRIMARY KEY (id_plano);
 <   ALTER TABLE ONLY public.planos DROP CONSTRAINT planos_pkey;
       public            postgres    false    224                       2606    48057 "   procedimientos procedimientos_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.procedimientos
    ADD CONSTRAINT procedimientos_pkey PRIMARY KEY (id_procedimiento);
 L   ALTER TABLE ONLY public.procedimientos DROP CONSTRAINT procedimientos_pkey;
       public            postgres    false    233                       2606    48008    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    229                       2606    47986 ,   recurso_herramienta recurso_herramienta_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recurso_herramienta
    ADD CONSTRAINT recurso_herramienta_pkey PRIMARY KEY (id_recurso, id_herramienta);
 V   ALTER TABLE ONLY public.recurso_herramienta DROP CONSTRAINT recurso_herramienta_pkey;
       public            postgres    false    227    227                       2606    47981    recursos recursos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id_recurso);
 @   ALTER TABLE ONLY public.recursos DROP CONSTRAINT recursos_pkey;
       public            postgres    false    226            �           2606    47894    redes redes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.redes
    ADD CONSTRAINT redes_pkey PRIMARY KEY (id_red);
 :   ALTER TABLE ONLY public.redes DROP CONSTRAINT redes_pkey;
       public            postgres    false    217            >           2606    48377 (   reportes_imagenes reportes_imagenes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.reportes_imagenes
    ADD CONSTRAINT reportes_imagenes_pkey PRIMARY KEY (id_reporteimagenes);
 R   ALTER TABLE ONLY public.reportes_imagenes DROP CONSTRAINT reportes_imagenes_pkey;
       public            postgres    false    249            @           2606    48387 (   reportes_servicio reportes_servicio_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.reportes_servicio
    ADD CONSTRAINT reportes_servicio_pkey PRIMARY KEY (id_reporteservicio);
 R   ALTER TABLE ONLY public.reportes_servicio DROP CONSTRAINT reportes_servicio_pkey;
       public            postgres    false    250            �           2606    47854    rol rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    214            <           2606    48365    servicios servicios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id_servicio);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public            postgres    false    248                       2606    47928 "   subcomponentes subcomponentes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.subcomponentes
    ADD CONSTRAINT subcomponentes_pkey PRIMARY KEY (id_subcomponente);
 L   ALTER TABLE ONLY public.subcomponentes DROP CONSTRAINT subcomponentes_pkey;
       public            postgres    false    221                        2606    47899    subred subred_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.subred
    ADD CONSTRAINT subred_pkey PRIMARY KEY (id_subred);
 <   ALTER TABLE ONLY public.subred DROP CONSTRAINT subred_pkey;
       public            postgres    false    218            $           2606    48087 *   tarjetas_necesidad tarjetas_necesidad_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.tarjetas_necesidad
    ADD CONSTRAINT tarjetas_necesidad_pkey PRIMARY KEY (id_tarjetanecesidad);
 T   ALTER TABLE ONLY public.tarjetas_necesidad DROP CONSTRAINT tarjetas_necesidad_pkey;
       public            postgres    false    236            "           2606    48077 0   tarjetas_norutinarias tarjetas_norutinarias_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tarjetas_norutinarias
    ADD CONSTRAINT tarjetas_norutinarias_pkey PRIMARY KEY (id_tarjetanorutinaria);
 Z   ALTER TABLE ONLY public.tarjetas_norutinarias DROP CONSTRAINT tarjetas_norutinarias_pkey;
       public            postgres    false    235                        2606    48065 ,   tarjetas_rutinarias tarjetas_rutinarias_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.tarjetas_rutinarias
    ADD CONSTRAINT tarjetas_rutinarias_pkey PRIMARY KEY (id_tarjetarutinaria);
 V   ALTER TABLE ONLY public.tarjetas_rutinarias DROP CONSTRAINT tarjetas_rutinarias_pkey;
       public            postgres    false    234                       2606    47921 "   tipos_servicio tipos_servicio_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tipos_servicio
    ADD CONSTRAINT tipos_servicio_pkey PRIMARY KEY (id_tiposervicio);
 L   ALTER TABLE ONLY public.tipos_servicio DROP CONSTRAINT tipos_servicio_pkey;
       public            postgres    false    220            �           2606    47874    usuarios usuarios_matricula_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_matricula_key UNIQUE (matricula);
 I   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_matricula_key;
       public            postgres    false    216            �           2606    47872    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            Q           2606    48098 ,   articulos articulos_id_tarjetanecesidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tarjetanecesidad_fkey FOREIGN KEY (id_tarjetanecesidad) REFERENCES public.tarjetas_necesidad(id_tarjetanecesidad);
 V   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_id_tarjetanecesidad_fkey;
       public          postgres    false    3364    237    236            R           2606    48103 .   articulos articulos_id_tarjetanorutinaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.articulos
    ADD CONSTRAINT articulos_id_tarjetanorutinaria_fkey FOREIGN KEY (id_tarjetanorutinaria) REFERENCES public.tarjetas_norutinarias(id_tarjetanorutinaria);
 X   ALTER TABLE ONLY public.articulos DROP CONSTRAINT articulos_id_tarjetanorutinaria_fkey;
       public          postgres    false    237    235    3362            `           2606    48309 /   calendarizacion calendarizacion_id_paquete_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendarizacion
    ADD CONSTRAINT calendarizacion_id_paquete_fkey FOREIGN KEY (id_paquete) REFERENCES public.paquetes(id_paquete);
 Y   ALTER TABLE ONLY public.calendarizacion DROP CONSTRAINT calendarizacion_id_paquete_fkey;
       public          postgres    false    3372    244    240            a           2606    48294 5   calendarizacion calendarizacion_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendarizacion
    ADD CONSTRAINT calendarizacion_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 _   ALTER TABLE ONLY public.calendarizacion DROP CONSTRAINT calendarizacion_id_subcomponente_fkey;
       public          postgres    false    221    3334    244            b           2606    48304 4   calendarizacion calendarizacion_id_tiposervicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendarizacion
    ADD CONSTRAINT calendarizacion_id_tiposervicio_fkey FOREIGN KEY (id_tiposervicio) REFERENCES public.tipos_servicio(id_tiposervicio);
 ^   ALTER TABLE ONLY public.calendarizacion DROP CONSTRAINT calendarizacion_id_tiposervicio_fkey;
       public          postgres    false    220    3332    244            c           2606    48299 /   calendarizacion calendarizacion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendarizacion
    ADD CONSTRAINT calendarizacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 Y   ALTER TABLE ONLY public.calendarizacion DROP CONSTRAINT calendarizacion_id_usuario_fkey;
       public          postgres    false    244    3324    216            D           2606    47912 &   componentes componentes_id_subred_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.componentes
    ADD CONSTRAINT componentes_id_subred_fkey FOREIGN KEY (id_subred) REFERENCES public.subred(id_subred);
 P   ALTER TABLE ONLY public.componentes DROP CONSTRAINT componentes_id_subred_fkey;
       public          postgres    false    219    3328    218            ^           2606    48255 )   electrica electrica_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.electrica
    ADD CONSTRAINT electrica_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 S   ALTER TABLE ONLY public.electrica DROP CONSTRAINT electrica_id_subcomponente_fkey;
       public          postgres    false    3334    221    242            F           2606    47941 5   fichas_tecnicas fichas_tecnicas_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fichas_tecnicas
    ADD CONSTRAINT fichas_tecnicas_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 _   ALTER TABLE ONLY public.fichas_tecnicas DROP CONSTRAINT fichas_tecnicas_id_subcomponente_fkey;
       public          postgres    false    221    3334    222            S           2606    48120 .   fila_bitacoras fila_bitacoras_id_bitacora_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fila_bitacoras
    ADD CONSTRAINT fila_bitacoras_id_bitacora_fkey FOREIGN KEY (id_bitacora) REFERENCES public.bitacoras(id_bitacora);
 X   ALTER TABLE ONLY public.fila_bitacoras DROP CONSTRAINT fila_bitacoras_id_bitacora_fkey;
       public          postgres    false    3368    239    238            ]           2606    48245 +   hidraulica hidraulica_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hidraulica
    ADD CONSTRAINT hidraulica_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 U   ALTER TABLE ONLY public.hidraulica DROP CONSTRAINT hidraulica_id_subcomponente_fkey;
       public          postgres    false    3334    221    241            _           2606    48265 3   hidrosanitaria hidrosanitaria_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hidrosanitaria
    ADD CONSTRAINT hidrosanitaria_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 ]   ALTER TABLE ONLY public.hidrosanitaria DROP CONSTRAINT hidrosanitaria_id_subcomponente_fkey;
       public          postgres    false    243    221    3334            K           2606    48016 !   insumos insumos_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT insumos_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);
 K   ALTER TABLE ONLY public.insumos DROP CONSTRAINT insumos_id_proveedor_fkey;
       public          postgres    false    3350    229    230            G           2606    47953 '   manuales manuales_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.manuales
    ADD CONSTRAINT manuales_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 Q   ALTER TABLE ONLY public.manuales DROP CONSTRAINT manuales_id_subcomponente_fkey;
       public          postgres    false    3334    221    223            L           2606    48041 .   material_insumo material_insumo_id_insumo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_insumo
    ADD CONSTRAINT material_insumo_id_insumo_fkey FOREIGN KEY (id_insumo) REFERENCES public.insumos(id_insumo);
 X   ALTER TABLE ONLY public.material_insumo DROP CONSTRAINT material_insumo_id_insumo_fkey;
       public          postgres    false    230    3352    231            M           2606    48036 2   material_insumo material_insumo_id_materiales_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_insumo
    ADD CONSTRAINT material_insumo_id_materiales_fkey FOREIGN KEY (id_materiales) REFERENCES public.materiales(id_materiales);
 \   ALTER TABLE ONLY public.material_insumo DROP CONSTRAINT material_insumo_id_materiales_fkey;
       public          postgres    false    3348    231    228            d           2606    48319 1   notificacion notificacion_id_calendarizacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_id_calendarizacion_fkey FOREIGN KEY (id_calendarizacion) REFERENCES public.calendarizacion(id_calendarizacion);
 [   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_id_calendarizacion_fkey;
       public          postgres    false    244    3380    245            e           2606    48324 )   notificacion notificacion_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notificacion
    ADD CONSTRAINT notificacion_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 S   ALTER TABLE ONLY public.notificacion DROP CONSTRAINT notificacion_id_usuario_fkey;
       public          postgres    false    3324    216    245            f           2606    48346 A   orden_subcomponentes orden_subcomponentes_id_calendarizacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_subcomponentes
    ADD CONSTRAINT orden_subcomponentes_id_calendarizacion_fkey FOREIGN KEY (id_calendarizacion) REFERENCES public.calendarizacion(id_calendarizacion);
 k   ALTER TABLE ONLY public.orden_subcomponentes DROP CONSTRAINT orden_subcomponentes_id_calendarizacion_fkey;
       public          postgres    false    244    3380    247            g           2606    48341 >   orden_subcomponentes orden_subcomponentes_id_ordentrabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden_subcomponentes
    ADD CONSTRAINT orden_subcomponentes_id_ordentrabajo_fkey FOREIGN KEY (id_ordentrabajo) REFERENCES public.orden_trabajo(id_ordentrabajo);
 h   ALTER TABLE ONLY public.orden_subcomponentes DROP CONSTRAINT orden_subcomponentes_id_ordentrabajo_fkey;
       public          postgres    false    247    246    3384            T           2606    48225 "   paquetes paquetes_id_bitacora_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_bitacora_fkey FOREIGN KEY (id_bitacora) REFERENCES public.bitacoras(id_bitacora);
 L   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_bitacora_fkey;
       public          postgres    false    240    238    3368            U           2606    48230 %   paquetes paquetes_id_hojapruebas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_hojapruebas_fkey FOREIGN KEY (id_hojapruebas) REFERENCES public.hoja_pruebas(id_hojaprueba);
 O   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_hojapruebas_fkey;
       public          postgres    false    3356    232    240            V           2606    48200 $   paquetes paquetes_id_materiales_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_materiales_fkey FOREIGN KEY (id_materiales) REFERENCES public.materiales(id_materiales);
 N   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_materiales_fkey;
       public          postgres    false    3348    228    240            W           2606    48205 '   paquetes paquetes_id_procedimiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_procedimiento_fkey FOREIGN KEY (id_procedimiento) REFERENCES public.procedimientos(id_procedimiento);
 Q   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_procedimiento_fkey;
       public          postgres    false    240    3358    233            X           2606    48190 "   paquetes paquetes_id_recursos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_recursos_fkey FOREIGN KEY (id_recursos) REFERENCES public.recursos(id_recurso);
 L   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_recursos_fkey;
       public          postgres    false    226    3344    240            Y           2606    48220 *   paquetes paquetes_id_tarjetanecesidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_tarjetanecesidad_fkey FOREIGN KEY (id_tarjetanecesidad) REFERENCES public.tarjetas_necesidad(id_tarjetanecesidad);
 T   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_tarjetanecesidad_fkey;
       public          postgres    false    3364    236    240            Z           2606    48215 ,   paquetes paquetes_id_tarjetanorutinaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_tarjetanorutinaria_fkey FOREIGN KEY (id_tarjetanorutinaria) REFERENCES public.tarjetas_norutinarias(id_tarjetanorutinaria);
 V   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_tarjetanorutinaria_fkey;
       public          postgres    false    235    240    3362            [           2606    48210 *   paquetes paquetes_id_tarjetarutinaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_tarjetarutinaria_fkey FOREIGN KEY (id_tarjetarutinaria) REFERENCES public.tarjetas_rutinarias(id_tarjetarutinaria);
 T   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_tarjetarutinaria_fkey;
       public          postgres    false    234    240    3360            \           2606    48195 !   paquetes paquetes_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 K   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_id_usuario_fkey;
       public          postgres    false    216    240    3324            H           2606    47965 #   planos planos_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.planos
    ADD CONSTRAINT planos_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 M   ALTER TABLE ONLY public.planos DROP CONSTRAINT planos_id_subcomponente_fkey;
       public          postgres    false    224    3334    221            I           2606    47992 ;   recurso_herramienta recurso_herramienta_id_herramienta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recurso_herramienta
    ADD CONSTRAINT recurso_herramienta_id_herramienta_fkey FOREIGN KEY (id_herramienta) REFERENCES public.herramientas(id_herramienta);
 e   ALTER TABLE ONLY public.recurso_herramienta DROP CONSTRAINT recurso_herramienta_id_herramienta_fkey;
       public          postgres    false    227    3342    225            J           2606    47987 7   recurso_herramienta recurso_herramienta_id_recurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recurso_herramienta
    ADD CONSTRAINT recurso_herramienta_id_recurso_fkey FOREIGN KEY (id_recurso) REFERENCES public.recursos(id_recurso);
 a   ALTER TABLE ONLY public.recurso_herramienta DROP CONSTRAINT recurso_herramienta_id_recurso_fkey;
       public          postgres    false    226    3344    227            i           2606    48378 4   reportes_imagenes reportes_imagenes_id_servicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reportes_imagenes
    ADD CONSTRAINT reportes_imagenes_id_servicio_fkey FOREIGN KEY (id_servicio) REFERENCES public.servicios(id_servicio);
 ^   ALTER TABLE ONLY public.reportes_imagenes DROP CONSTRAINT reportes_imagenes_id_servicio_fkey;
       public          postgres    false    248    249    3388            j           2606    48388 4   reportes_servicio reportes_servicio_id_servicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reportes_servicio
    ADD CONSTRAINT reportes_servicio_id_servicio_fkey FOREIGN KEY (id_servicio) REFERENCES public.servicios(id_servicio);
 ^   ALTER TABLE ONLY public.reportes_servicio DROP CONSTRAINT reportes_servicio_id_servicio_fkey;
       public          postgres    false    250    3388    248            h           2606    48366 (   servicios servicios_id_ordentrabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_id_ordentrabajo_fkey FOREIGN KEY (id_ordentrabajo) REFERENCES public.orden_trabajo(id_ordentrabajo);
 R   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_id_ordentrabajo_fkey;
       public          postgres    false    3384    248    246            E           2606    47929 0   subcomponentes subcomponentes_id_componente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subcomponentes
    ADD CONSTRAINT subcomponentes_id_componente_fkey FOREIGN KEY (id_componente) REFERENCES public.componentes(id_componente);
 Z   ALTER TABLE ONLY public.subcomponentes DROP CONSTRAINT subcomponentes_id_componente_fkey;
       public          postgres    false    221    3330    219            C           2606    47900    subred subred_id_red_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.subred
    ADD CONSTRAINT subred_id_red_fkey FOREIGN KEY (id_red) REFERENCES public.redes(id_red);
 C   ALTER TABLE ONLY public.subred DROP CONSTRAINT subred_id_red_fkey;
       public          postgres    false    217    3326    218            P           2606    48088 9   tarjetas_necesidad tarjetas_necesidad_id_norutinaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarjetas_necesidad
    ADD CONSTRAINT tarjetas_necesidad_id_norutinaria_fkey FOREIGN KEY (id_norutinaria) REFERENCES public.tarjetas_norutinarias(id_tarjetanorutinaria);
 c   ALTER TABLE ONLY public.tarjetas_necesidad DROP CONSTRAINT tarjetas_necesidad_id_norutinaria_fkey;
       public          postgres    false    236    235    3362            O           2606    48078 A   tarjetas_norutinarias tarjetas_norutinarias_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarjetas_norutinarias
    ADD CONSTRAINT tarjetas_norutinarias_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 k   ALTER TABLE ONLY public.tarjetas_norutinarias DROP CONSTRAINT tarjetas_norutinarias_id_subcomponente_fkey;
       public          postgres    false    235    3334    221            N           2606    48066 =   tarjetas_rutinarias tarjetas_rutinarias_id_subcomponente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarjetas_rutinarias
    ADD CONSTRAINT tarjetas_rutinarias_id_subcomponente_fkey FOREIGN KEY (id_subcomponente) REFERENCES public.subcomponentes(id_subcomponente);
 g   ALTER TABLE ONLY public.tarjetas_rutinarias DROP CONSTRAINT tarjetas_rutinarias_id_subcomponente_fkey;
       public          postgres    false    234    221    3334            A           2606    47880    usuarios usuarios_id_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_area_fkey FOREIGN KEY (id_area) REFERENCES public.area(id_area) ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_area_fkey;
       public          postgres    false    215    216    3320            B           2606    47875    usuarios usuarios_id_rol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol) ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_rol_fkey;
       public          postgres    false    216    3318    214            �      x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �             x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �     