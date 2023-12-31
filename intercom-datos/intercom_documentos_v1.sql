PGDMP     !    "    
            {            intercom_documentos    14.5 (Debian 14.5-2.pgdg110+2)    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26402    intercom_documentos    DATABASE     ~   CREATE DATABASE intercom_documentos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
 #   DROP DATABASE intercom_documentos;
                postgres    false                        2615    44551    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    44612 	   c_entidad    TABLE       CREATE TABLE public.c_entidad (
    id bigint NOT NULL,
    id_pais bigint NOT NULL,
    nombre text NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.c_entidad;
       public         heap    postgres    false    5            �            1259    44611    c_entidad_id_pais_seq    SEQUENCE     ~   CREATE SEQUENCE public.c_entidad_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.c_entidad_id_pais_seq;
       public          postgres    false    5    222            �           0    0    c_entidad_id_pais_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.c_entidad_id_pais_seq OWNED BY public.c_entidad.id_pais;
          public          postgres    false    221            �            1259    44610    c_entidad_id_seq    SEQUENCE     �   ALTER TABLE public.c_entidad ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_entidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    222            �            1259    44593 	   c_esquema    TABLE     �  CREATE TABLE public.c_esquema (
    id bigint NOT NULL,
    id_tipo_documento bigint NOT NULL,
    id_tipo_esquema bigint NOT NULL,
    en_uso boolean NOT NULL,
    fecha_esquema date NOT NULL,
    url_definicion text NOT NULL,
    ruta_fecha_documento text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.c_esquema;
       public         heap    postgres    false    5            �            1259    44592    c_esquema_id_seq    SEQUENCE     �   ALTER TABLE public.c_esquema ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_esquema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    219            �            1259    44671    c_estado_documento    TABLE     �   CREATE TABLE public.c_estado_documento (
    id bigint NOT NULL,
    estado text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 &   DROP TABLE public.c_estado_documento;
       public         heap    postgres    false    5            �            1259    44670    c_estado_documento_id_seq    SEQUENCE     �   ALTER TABLE public.c_estado_documento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_estado_documento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    232            �            1259    44679    c_estado_solicitud_envio    TABLE       CREATE TABLE public.c_estado_solicitud_envio (
    id bigint NOT NULL,
    estado text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 ,   DROP TABLE public.c_estado_solicitud_envio;
       public         heap    postgres    false    5            �            1259    44678    c_estado_solicitud_envio_id_seq    SEQUENCE     �   ALTER TABLE public.c_estado_solicitud_envio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_estado_solicitud_envio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    234            �            1259    44561    c_modulo    TABLE       CREATE TABLE public.c_modulo (
    id bigint NOT NULL,
    nombre text NOT NULL,
    sigla text,
    intentos_maximos_envio smallint,
    lapso_intentos double precision DEFAULT 0 NOT NULL,
    validar_contra_esquema boolean NOT NULL,
    verificar_firma boolean NOT NULL,
    versionar_documentos boolean NOT NULL,
    rechazar_no_validos boolean NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.c_modulo;
       public         heap    postgres    false    5            �            1259    44644    c_modulo_entidad    TABLE     ~  CREATE TABLE public.c_modulo_entidad (
    id bigint NOT NULL,
    id_pais bigint NOT NULL,
    id_modulo bigint NOT NULL,
    id_entidad bigint NOT NULL,
    tiempo_retencion double precision DEFAULT 0 NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 $   DROP TABLE public.c_modulo_entidad;
       public         heap    postgres    false    5            �            1259    44643    c_modulo_entidad_id_entidad_seq    SEQUENCE     �   CREATE SEQUENCE public.c_modulo_entidad_id_entidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.c_modulo_entidad_id_entidad_seq;
       public          postgres    false    230    5            �           0    0    c_modulo_entidad_id_entidad_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.c_modulo_entidad_id_entidad_seq OWNED BY public.c_modulo_entidad.id_entidad;
          public          postgres    false    229            �            1259    44642    c_modulo_entidad_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.c_modulo_entidad_id_modulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.c_modulo_entidad_id_modulo_seq;
       public          postgres    false    230    5            �           0    0    c_modulo_entidad_id_modulo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.c_modulo_entidad_id_modulo_seq OWNED BY public.c_modulo_entidad.id_modulo;
          public          postgres    false    228            �            1259    44641    c_modulo_entidad_id_pais_seq    SEQUENCE     �   CREATE SEQUENCE public.c_modulo_entidad_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.c_modulo_entidad_id_pais_seq;
       public          postgres    false    5    230            �           0    0    c_modulo_entidad_id_pais_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.c_modulo_entidad_id_pais_seq OWNED BY public.c_modulo_entidad.id_pais;
          public          postgres    false    227            �            1259    44640    c_modulo_entidad_id_seq    SEQUENCE     �   ALTER TABLE public.c_modulo_entidad ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_modulo_entidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    230            �            1259    44560    c_modulo_id_seq    SEQUENCE     �   ALTER TABLE public.c_modulo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    212            �            1259    44553    c_pais    TABLE       CREATE TABLE public.c_pais (
    id bigint NOT NULL,
    nombre text NOT NULL,
    sigla text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.c_pais;
       public         heap    postgres    false    5            �            1259    44552    c_pais_id_seq    SEQUENCE     �   ALTER TABLE public.c_pais ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210    5            �            1259    44627    c_parametro_entidad    TABLE     4  CREATE TABLE public.c_parametro_entidad (
    id bigint NOT NULL,
    id_entidad bigint NOT NULL,
    llave text NOT NULL,
    valor text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 '   DROP TABLE public.c_parametro_entidad;
       public         heap    postgres    false    5            �            1259    44626 "   c_parametro_entidad_id_entidad_seq    SEQUENCE     �   CREATE SEQUENCE public.c_parametro_entidad_id_entidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.c_parametro_entidad_id_entidad_seq;
       public          postgres    false    225    5            �           0    0 "   c_parametro_entidad_id_entidad_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.c_parametro_entidad_id_entidad_seq OWNED BY public.c_parametro_entidad.id_entidad;
          public          postgres    false    224            �            1259    44625    c_parametro_entidad_id_seq    SEQUENCE     �   ALTER TABLE public.c_parametro_entidad ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_parametro_entidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225    5            �            1259    44571    c_tipo_documento    TABLE     1  CREATE TABLE public.c_tipo_documento (
    id bigint NOT NULL,
    id_modulo bigint NOT NULL,
    nombre text NOT NULL,
    sigla text,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 $   DROP TABLE public.c_tipo_documento;
       public         heap    postgres    false    5            �            1259    44570    c_tipo_documento_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.c_tipo_documento_id_modulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.c_tipo_documento_id_modulo_seq;
       public          postgres    false    5    215            �           0    0    c_tipo_documento_id_modulo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.c_tipo_documento_id_modulo_seq OWNED BY public.c_tipo_documento.id_modulo;
          public          postgres    false    214            �            1259    44569    c_tipo_documento_id_seq    SEQUENCE     �   ALTER TABLE public.c_tipo_documento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_tipo_documento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    215            �            1259    44585    c_tipo_esquema    TABLE        CREATE TABLE public.c_tipo_esquema (
    id bigint NOT NULL,
    nombre text NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 "   DROP TABLE public.c_tipo_esquema;
       public         heap    postgres    false    5            �            1259    44584    c_tipo_esquema_id_seq    SEQUENCE     �   ALTER TABLE public.c_tipo_esquema ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.c_tipo_esquema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217    5                       1259    44804 	   n_destino    TABLE     .  CREATE TABLE public.n_destino (
    id bigint NOT NULL,
    id_entidad_destino bigint NOT NULL,
    id_solicitud_envio bigint NOT NULL,
    id_documento bigint NOT NULL,
    fecha_entrega timestamp without time zone,
    estado_entrega boolean NOT NULL,
    ultima_respuesta text,
    intentos_realizados smallint DEFAULT 0 NOT NULL,
    fecha_proximo_intento timestamp without time zone,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.n_destino;
       public         heap    postgres    false    5                       1259    44803    n_destino_id_documento_seq    SEQUENCE     �   CREATE SEQUENCE public.n_destino_id_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.n_destino_id_documento_seq;
       public          postgres    false    5    258            �           0    0    n_destino_id_documento_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.n_destino_id_documento_seq OWNED BY public.n_destino.id_documento;
          public          postgres    false    257            �            1259    44801     n_destino_id_entidad_destino_seq    SEQUENCE     �   CREATE SEQUENCE public.n_destino_id_entidad_destino_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.n_destino_id_entidad_destino_seq;
       public          postgres    false    5    258            �           0    0     n_destino_id_entidad_destino_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.n_destino_id_entidad_destino_seq OWNED BY public.n_destino.id_entidad_destino;
          public          postgres    false    255            �            1259    44800    n_destino_id_seq    SEQUENCE     �   ALTER TABLE public.n_destino ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_destino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    258    5                        1259    44802     n_destino_id_solicitud_envio_seq    SEQUENCE     �   CREATE SEQUENCE public.n_destino_id_solicitud_envio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.n_destino_id_solicitud_envio_seq;
       public          postgres    false    5    258            �           0    0     n_destino_id_solicitud_envio_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.n_destino_id_solicitud_envio_seq OWNED BY public.n_destino.id_solicitud_envio;
          public          postgres    false    256            �            1259    44692    n_documento    TABLE     s  CREATE TABLE public.n_documento (
    id bigint NOT NULL,
    id_pais_origen bigint NOT NULL,
    id_entidad_origen bigint NOT NULL,
    id_modulo bigint NOT NULL,
    id_tipo_documento bigint NOT NULL,
    id_estado_documento bigint NOT NULL,
    codigo text NOT NULL,
    fecha timestamp without time zone,
    contenido_xml xml,
    contenido_json json,
    contenido_base64 text,
    fecha_esquema date,
    contenido_valido boolean,
    firma_valida boolean,
    version text,
    causal_modificacion text,
    anulado boolean,
    causal_anulacion text,
    fecha_anulacion timestamp without time zone,
    fecha_eliminacion timestamp without time zone,
    fecha_envio timestamp without time zone NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
    DROP TABLE public.n_documento;
       public         heap    postgres    false    5            �            1259    44730    n_documento_historial    TABLE     m  CREATE TABLE public.n_documento_historial (
    id bigint NOT NULL,
    id_documento bigint NOT NULL,
    codigo text NOT NULL,
    fecha timestamp without time zone,
    contenido_xml xml,
    contenido_json json,
    contenido_base64 text,
    version text,
    causal text,
    anulado boolean,
    fecha_anulacion timestamp without time zone,
    fecha_eliminacion timestamp without time zone,
    fecha_envio timestamp without time zone NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 )   DROP TABLE public.n_documento_historial;
       public         heap    postgres    false    5            �            1259    44729    n_documento_historial_id_seq    SEQUENCE     �   ALTER TABLE public.n_documento_historial ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_documento_historial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    243            �            1259    44688 !   n_documento_id_entidad_origen_seq    SEQUENCE     �   CREATE SEQUENCE public.n_documento_id_entidad_origen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.n_documento_id_entidad_origen_seq;
       public          postgres    false    241    5            �           0    0 !   n_documento_id_entidad_origen_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.n_documento_id_entidad_origen_seq OWNED BY public.n_documento.id_entidad_origen;
          public          postgres    false    237            �            1259    44691 #   n_documento_id_estado_documento_seq    SEQUENCE     �   CREATE SEQUENCE public.n_documento_id_estado_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.n_documento_id_estado_documento_seq;
       public          postgres    false    5    241            �           0    0 #   n_documento_id_estado_documento_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.n_documento_id_estado_documento_seq OWNED BY public.n_documento.id_estado_documento;
          public          postgres    false    240            �            1259    44689    n_documento_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.n_documento_id_modulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.n_documento_id_modulo_seq;
       public          postgres    false    241    5            �           0    0    n_documento_id_modulo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.n_documento_id_modulo_seq OWNED BY public.n_documento.id_modulo;
          public          postgres    false    238            �            1259    44687    n_documento_id_pais_origen_seq    SEQUENCE     �   CREATE SEQUENCE public.n_documento_id_pais_origen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.n_documento_id_pais_origen_seq;
       public          postgres    false    241    5            �           0    0    n_documento_id_pais_origen_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.n_documento_id_pais_origen_seq OWNED BY public.n_documento.id_pais_origen;
          public          postgres    false    236            �            1259    44686    n_documento_id_seq    SEQUENCE     �   ALTER TABLE public.n_documento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_documento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241    5            �            1259    44690 !   n_documento_id_tipo_documento_seq    SEQUENCE     �   CREATE SEQUENCE public.n_documento_id_tipo_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.n_documento_id_tipo_documento_seq;
       public          postgres    false    241    5            �           0    0 !   n_documento_id_tipo_documento_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.n_documento_id_tipo_documento_seq OWNED BY public.n_documento.id_tipo_documento;
          public          postgres    false    239                       1259    44832    n_evento_envio    TABLE     �  CREATE TABLE public.n_evento_envio (
    id bigint NOT NULL,
    id_destino bigint NOT NULL,
    numero_intento smallint NOT NULL,
    fecha_intento timestamp without time zone NOT NULL,
    detalle_resultado text NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 "   DROP TABLE public.n_evento_envio;
       public         heap    postgres    false    5                       1259    44831    n_evento_envio_id_destino_seq    SEQUENCE     �   CREATE SEQUENCE public.n_evento_envio_id_destino_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.n_evento_envio_id_destino_seq;
       public          postgres    false    5    261            �           0    0    n_evento_envio_id_destino_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.n_evento_envio_id_destino_seq OWNED BY public.n_evento_envio.id_destino;
          public          postgres    false    260                       1259    44830    n_evento_envio_id_seq    SEQUENCE     �   ALTER TABLE public.n_evento_envio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_evento_envio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    261    5            �            1259    44775    n_solicitud_consulta    TABLE     �  CREATE TABLE public.n_solicitud_consulta (
    id bigint NOT NULL,
    id_modulo bigint NOT NULL,
    id_entidad_solicitante bigint NOT NULL,
    id_entidad_origen bigint NOT NULL,
    id_documento bigint,
    codigo_documento text,
    solicitud_recibida boolean NOT NULL,
    fecha_recepcion timestamp without time zone,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 (   DROP TABLE public.n_solicitud_consulta;
       public         heap    postgres    false    5            �            1259    44774 *   n_solicitud_consulta_id_entidad_origen_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_consulta_id_entidad_origen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.n_solicitud_consulta_id_entidad_origen_seq;
       public          postgres    false    253    5            �           0    0 *   n_solicitud_consulta_id_entidad_origen_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.n_solicitud_consulta_id_entidad_origen_seq OWNED BY public.n_solicitud_consulta.id_entidad_origen;
          public          postgres    false    252            �            1259    44773 /   n_solicitud_consulta_id_entidad_solicitante_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_consulta_id_entidad_solicitante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.n_solicitud_consulta_id_entidad_solicitante_seq;
       public          postgres    false    253    5            �           0    0 /   n_solicitud_consulta_id_entidad_solicitante_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.n_solicitud_consulta_id_entidad_solicitante_seq OWNED BY public.n_solicitud_consulta.id_entidad_solicitante;
          public          postgres    false    251            �            1259    44772 "   n_solicitud_consulta_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_consulta_id_modulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.n_solicitud_consulta_id_modulo_seq;
       public          postgres    false    5    253            �           0    0 "   n_solicitud_consulta_id_modulo_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.n_solicitud_consulta_id_modulo_seq OWNED BY public.n_solicitud_consulta.id_modulo;
          public          postgres    false    250            �            1259    44771    n_solicitud_consulta_id_seq    SEQUENCE     �   ALTER TABLE public.n_solicitud_consulta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_solicitud_consulta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253    5            �            1259    44746    n_solicitud_envio    TABLE     �  CREATE TABLE public.n_solicitud_envio (
    id bigint NOT NULL,
    id_modulo bigint NOT NULL,
    id_entidad_origen bigint NOT NULL,
    id_estado_solicitud_envio bigint NOT NULL,
    detalle_estado text NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    usuario_registro text NOT NULL,
    proceso_registro text NOT NULL,
    estado_registro boolean NOT NULL
);
 %   DROP TABLE public.n_solicitud_envio;
       public         heap    postgres    false    5            �            1259    44744 '   n_solicitud_envio_id_entidad_origen_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_envio_id_entidad_origen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.n_solicitud_envio_id_entidad_origen_seq;
       public          postgres    false    248    5            �           0    0 '   n_solicitud_envio_id_entidad_origen_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.n_solicitud_envio_id_entidad_origen_seq OWNED BY public.n_solicitud_envio.id_entidad_origen;
          public          postgres    false    246            �            1259    44745 /   n_solicitud_envio_id_estado_solicitud_envio_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_envio_id_estado_solicitud_envio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.n_solicitud_envio_id_estado_solicitud_envio_seq;
       public          postgres    false    5    248            �           0    0 /   n_solicitud_envio_id_estado_solicitud_envio_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.n_solicitud_envio_id_estado_solicitud_envio_seq OWNED BY public.n_solicitud_envio.id_estado_solicitud_envio;
          public          postgres    false    247            �            1259    44743    n_solicitud_envio_id_modulo_seq    SEQUENCE     �   CREATE SEQUENCE public.n_solicitud_envio_id_modulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.n_solicitud_envio_id_modulo_seq;
       public          postgres    false    5    248            �           0    0    n_solicitud_envio_id_modulo_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.n_solicitud_envio_id_modulo_seq OWNED BY public.n_solicitud_envio.id_modulo;
          public          postgres    false    245            �            1259    44742    n_solicitud_envio_id_seq    SEQUENCE     �   ALTER TABLE public.n_solicitud_envio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.n_solicitud_envio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    248    5            �           2604    44615    c_entidad id_pais    DEFAULT     v   ALTER TABLE ONLY public.c_entidad ALTER COLUMN id_pais SET DEFAULT nextval('public.c_entidad_id_pais_seq'::regclass);
 @   ALTER TABLE public.c_entidad ALTER COLUMN id_pais DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    44647    c_modulo_entidad id_pais    DEFAULT     �   ALTER TABLE ONLY public.c_modulo_entidad ALTER COLUMN id_pais SET DEFAULT nextval('public.c_modulo_entidad_id_pais_seq'::regclass);
 G   ALTER TABLE public.c_modulo_entidad ALTER COLUMN id_pais DROP DEFAULT;
       public          postgres    false    230    227    230            �           2604    44648    c_modulo_entidad id_modulo    DEFAULT     �   ALTER TABLE ONLY public.c_modulo_entidad ALTER COLUMN id_modulo SET DEFAULT nextval('public.c_modulo_entidad_id_modulo_seq'::regclass);
 I   ALTER TABLE public.c_modulo_entidad ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    228    230    230            �           2604    44649    c_modulo_entidad id_entidad    DEFAULT     �   ALTER TABLE ONLY public.c_modulo_entidad ALTER COLUMN id_entidad SET DEFAULT nextval('public.c_modulo_entidad_id_entidad_seq'::regclass);
 J   ALTER TABLE public.c_modulo_entidad ALTER COLUMN id_entidad DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    44630    c_parametro_entidad id_entidad    DEFAULT     �   ALTER TABLE ONLY public.c_parametro_entidad ALTER COLUMN id_entidad SET DEFAULT nextval('public.c_parametro_entidad_id_entidad_seq'::regclass);
 M   ALTER TABLE public.c_parametro_entidad ALTER COLUMN id_entidad DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    44574    c_tipo_documento id_modulo    DEFAULT     �   ALTER TABLE ONLY public.c_tipo_documento ALTER COLUMN id_modulo SET DEFAULT nextval('public.c_tipo_documento_id_modulo_seq'::regclass);
 I   ALTER TABLE public.c_tipo_documento ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    44807    n_destino id_entidad_destino    DEFAULT     �   ALTER TABLE ONLY public.n_destino ALTER COLUMN id_entidad_destino SET DEFAULT nextval('public.n_destino_id_entidad_destino_seq'::regclass);
 K   ALTER TABLE public.n_destino ALTER COLUMN id_entidad_destino DROP DEFAULT;
       public          postgres    false    258    255    258            �           2604    44808    n_destino id_solicitud_envio    DEFAULT     �   ALTER TABLE ONLY public.n_destino ALTER COLUMN id_solicitud_envio SET DEFAULT nextval('public.n_destino_id_solicitud_envio_seq'::regclass);
 K   ALTER TABLE public.n_destino ALTER COLUMN id_solicitud_envio DROP DEFAULT;
       public          postgres    false    256    258    258            �           2604    44809    n_destino id_documento    DEFAULT     �   ALTER TABLE ONLY public.n_destino ALTER COLUMN id_documento SET DEFAULT nextval('public.n_destino_id_documento_seq'::regclass);
 E   ALTER TABLE public.n_destino ALTER COLUMN id_documento DROP DEFAULT;
       public          postgres    false    258    257    258            �           2604    44695    n_documento id_pais_origen    DEFAULT     �   ALTER TABLE ONLY public.n_documento ALTER COLUMN id_pais_origen SET DEFAULT nextval('public.n_documento_id_pais_origen_seq'::regclass);
 I   ALTER TABLE public.n_documento ALTER COLUMN id_pais_origen DROP DEFAULT;
       public          postgres    false    236    241    241            �           2604    44696    n_documento id_entidad_origen    DEFAULT     �   ALTER TABLE ONLY public.n_documento ALTER COLUMN id_entidad_origen SET DEFAULT nextval('public.n_documento_id_entidad_origen_seq'::regclass);
 L   ALTER TABLE public.n_documento ALTER COLUMN id_entidad_origen DROP DEFAULT;
       public          postgres    false    237    241    241            �           2604    44697    n_documento id_modulo    DEFAULT     ~   ALTER TABLE ONLY public.n_documento ALTER COLUMN id_modulo SET DEFAULT nextval('public.n_documento_id_modulo_seq'::regclass);
 D   ALTER TABLE public.n_documento ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    241    238    241            �           2604    44698    n_documento id_tipo_documento    DEFAULT     �   ALTER TABLE ONLY public.n_documento ALTER COLUMN id_tipo_documento SET DEFAULT nextval('public.n_documento_id_tipo_documento_seq'::regclass);
 L   ALTER TABLE public.n_documento ALTER COLUMN id_tipo_documento DROP DEFAULT;
       public          postgres    false    239    241    241            �           2604    44699    n_documento id_estado_documento    DEFAULT     �   ALTER TABLE ONLY public.n_documento ALTER COLUMN id_estado_documento SET DEFAULT nextval('public.n_documento_id_estado_documento_seq'::regclass);
 N   ALTER TABLE public.n_documento ALTER COLUMN id_estado_documento DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    44835    n_evento_envio id_destino    DEFAULT     �   ALTER TABLE ONLY public.n_evento_envio ALTER COLUMN id_destino SET DEFAULT nextval('public.n_evento_envio_id_destino_seq'::regclass);
 H   ALTER TABLE public.n_evento_envio ALTER COLUMN id_destino DROP DEFAULT;
       public          postgres    false    261    260    261            �           2604    44778    n_solicitud_consulta id_modulo    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_consulta ALTER COLUMN id_modulo SET DEFAULT nextval('public.n_solicitud_consulta_id_modulo_seq'::regclass);
 M   ALTER TABLE public.n_solicitud_consulta ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    250    253    253            �           2604    44779 +   n_solicitud_consulta id_entidad_solicitante    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_consulta ALTER COLUMN id_entidad_solicitante SET DEFAULT nextval('public.n_solicitud_consulta_id_entidad_solicitante_seq'::regclass);
 Z   ALTER TABLE public.n_solicitud_consulta ALTER COLUMN id_entidad_solicitante DROP DEFAULT;
       public          postgres    false    253    251    253            �           2604    44780 &   n_solicitud_consulta id_entidad_origen    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_consulta ALTER COLUMN id_entidad_origen SET DEFAULT nextval('public.n_solicitud_consulta_id_entidad_origen_seq'::regclass);
 U   ALTER TABLE public.n_solicitud_consulta ALTER COLUMN id_entidad_origen DROP DEFAULT;
       public          postgres    false    253    252    253            �           2604    44749    n_solicitud_envio id_modulo    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_envio ALTER COLUMN id_modulo SET DEFAULT nextval('public.n_solicitud_envio_id_modulo_seq'::regclass);
 J   ALTER TABLE public.n_solicitud_envio ALTER COLUMN id_modulo DROP DEFAULT;
       public          postgres    false    245    248    248            �           2604    44750 #   n_solicitud_envio id_entidad_origen    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_envio ALTER COLUMN id_entidad_origen SET DEFAULT nextval('public.n_solicitud_envio_id_entidad_origen_seq'::regclass);
 R   ALTER TABLE public.n_solicitud_envio ALTER COLUMN id_entidad_origen DROP DEFAULT;
       public          postgres    false    246    248    248            �           2604    44751 +   n_solicitud_envio id_estado_solicitud_envio    DEFAULT     �   ALTER TABLE ONLY public.n_solicitud_envio ALTER COLUMN id_estado_solicitud_envio SET DEFAULT nextval('public.n_solicitud_envio_id_estado_solicitud_envio_seq'::regclass);
 Z   ALTER TABLE public.n_solicitud_envio ALTER COLUMN id_estado_solicitud_envio DROP DEFAULT;
       public          postgres    false    248    247    248            �          0    44612 	   c_entidad 
   TABLE DATA           }   COPY public.c_entidad (id, id_pais, nombre, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    222   �
      �          0    44593 	   c_esquema 
   TABLE DATA           �   COPY public.c_esquema (id, id_tipo_documento, id_tipo_esquema, en_uso, fecha_esquema, url_definicion, ruta_fecha_documento, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    219   b      �          0    44671    c_estado_documento 
   TABLE DATA           }   COPY public.c_estado_documento (id, estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    232   [      �          0    44679    c_estado_solicitud_envio 
   TABLE DATA           �   COPY public.c_estado_solicitud_envio (id, estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    234   �      �          0    44561    c_modulo 
   TABLE DATA           �   COPY public.c_modulo (id, nombre, sigla, intentos_maximos_envio, lapso_intentos, validar_contra_esquema, verificar_firma, versionar_documentos, rechazar_no_validos, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    212   J      �          0    44644    c_modulo_entidad 
   TABLE DATA           �   COPY public.c_modulo_entidad (id, id_pais, id_modulo, id_entidad, tiempo_retencion, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    230   �      �          0    44553    c_pais 
   TABLE DATA           x   COPY public.c_pais (id, nombre, sigla, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    210   Y      �          0    44627    c_parametro_entidad 
   TABLE DATA           �   COPY public.c_parametro_entidad (id, id_entidad, llave, valor, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    225   �      �          0    44571    c_tipo_documento 
   TABLE DATA           �   COPY public.c_tipo_documento (id, id_modulo, nombre, sigla, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    215   �      �          0    44585    c_tipo_esquema 
   TABLE DATA           y   COPY public.c_tipo_esquema (id, nombre, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    217   |      �          0    44804 	   n_destino 
   TABLE DATA           �   COPY public.n_destino (id, id_entidad_destino, id_solicitud_envio, id_documento, fecha_entrega, estado_entrega, ultima_respuesta, intentos_realizados, fecha_proximo_intento, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    258   �      �          0    44692    n_documento 
   TABLE DATA           �  COPY public.n_documento (id, id_pais_origen, id_entidad_origen, id_modulo, id_tipo_documento, id_estado_documento, codigo, fecha, contenido_xml, contenido_json, contenido_base64, fecha_esquema, contenido_valido, firma_valida, version, causal_modificacion, anulado, causal_anulacion, fecha_anulacion, fecha_eliminacion, fecha_envio, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    241   �      �          0    44730    n_documento_historial 
   TABLE DATA             COPY public.n_documento_historial (id, id_documento, codigo, fecha, contenido_xml, contenido_json, contenido_base64, version, causal, anulado, fecha_anulacion, fecha_eliminacion, fecha_envio, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    243   �>      �          0    44832    n_evento_envio 
   TABLE DATA           �   COPY public.n_evento_envio (id, id_destino, numero_intento, fecha_intento, detalle_resultado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    261   'k      �          0    44775    n_solicitud_consulta 
   TABLE DATA           �   COPY public.n_solicitud_consulta (id, id_modulo, id_entidad_solicitante, id_entidad_origen, id_documento, codigo_documento, solicitud_recibida, fecha_recepcion, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    253   Dk      �          0    44746    n_solicitud_envio 
   TABLE DATA           �   COPY public.n_solicitud_envio (id, id_modulo, id_entidad_origen, id_estado_solicitud_envio, detalle_estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    248   ak      �           0    0    c_entidad_id_pais_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.c_entidad_id_pais_seq', 1, false);
          public          postgres    false    221            �           0    0    c_entidad_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.c_entidad_id_seq', 1, false);
          public          postgres    false    220            �           0    0    c_esquema_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.c_esquema_id_seq', 2, true);
          public          postgres    false    218            �           0    0    c_estado_documento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.c_estado_documento_id_seq', 1, false);
          public          postgres    false    231            �           0    0    c_estado_solicitud_envio_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.c_estado_solicitud_envio_id_seq', 1, false);
          public          postgres    false    233            �           0    0    c_modulo_entidad_id_entidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.c_modulo_entidad_id_entidad_seq', 1, false);
          public          postgres    false    229            �           0    0    c_modulo_entidad_id_modulo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.c_modulo_entidad_id_modulo_seq', 1, false);
          public          postgres    false    228            �           0    0    c_modulo_entidad_id_pais_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.c_modulo_entidad_id_pais_seq', 1, false);
          public          postgres    false    227            �           0    0    c_modulo_entidad_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.c_modulo_entidad_id_seq', 8, true);
          public          postgres    false    226            �           0    0    c_modulo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.c_modulo_id_seq', 2, true);
          public          postgres    false    211            �           0    0    c_pais_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.c_pais_id_seq', 1, false);
          public          postgres    false    209            �           0    0 "   c_parametro_entidad_id_entidad_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.c_parametro_entidad_id_entidad_seq', 1, false);
          public          postgres    false    224            �           0    0    c_parametro_entidad_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.c_parametro_entidad_id_seq', 1, false);
          public          postgres    false    223            �           0    0    c_tipo_documento_id_modulo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.c_tipo_documento_id_modulo_seq', 1, false);
          public          postgres    false    214            �           0    0    c_tipo_documento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.c_tipo_documento_id_seq', 2, true);
          public          postgres    false    213            �           0    0    c_tipo_esquema_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.c_tipo_esquema_id_seq', 1, false);
          public          postgres    false    216            �           0    0    n_destino_id_documento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.n_destino_id_documento_seq', 1, false);
          public          postgres    false    257            �           0    0     n_destino_id_entidad_destino_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.n_destino_id_entidad_destino_seq', 1, false);
          public          postgres    false    255            �           0    0    n_destino_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.n_destino_id_seq', 26, true);
          public          postgres    false    254            �           0    0     n_destino_id_solicitud_envio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.n_destino_id_solicitud_envio_seq', 1, false);
          public          postgres    false    256                        0    0    n_documento_historial_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.n_documento_historial_id_seq', 29, true);
          public          postgres    false    242                       0    0 !   n_documento_id_entidad_origen_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.n_documento_id_entidad_origen_seq', 1, false);
          public          postgres    false    237                       0    0 #   n_documento_id_estado_documento_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.n_documento_id_estado_documento_seq', 1, false);
          public          postgres    false    240                       0    0    n_documento_id_modulo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.n_documento_id_modulo_seq', 1, false);
          public          postgres    false    238                       0    0    n_documento_id_pais_origen_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.n_documento_id_pais_origen_seq', 1, false);
          public          postgres    false    236                       0    0    n_documento_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.n_documento_id_seq', 29, true);
          public          postgres    false    235                       0    0 !   n_documento_id_tipo_documento_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.n_documento_id_tipo_documento_seq', 1, false);
          public          postgres    false    239                       0    0    n_evento_envio_id_destino_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.n_evento_envio_id_destino_seq', 1, false);
          public          postgres    false    260                       0    0    n_evento_envio_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.n_evento_envio_id_seq', 1, false);
          public          postgres    false    259            	           0    0 *   n_solicitud_consulta_id_entidad_origen_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_entidad_origen_seq', 1, false);
          public          postgres    false    252            
           0    0 /   n_solicitud_consulta_id_entidad_solicitante_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_entidad_solicitante_seq', 1, false);
          public          postgres    false    251                       0    0 "   n_solicitud_consulta_id_modulo_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_modulo_seq', 1, false);
          public          postgres    false    250                       0    0    n_solicitud_consulta_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_seq', 1, false);
          public          postgres    false    249                       0    0 '   n_solicitud_envio_id_entidad_origen_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.n_solicitud_envio_id_entidad_origen_seq', 1, false);
          public          postgres    false    246                       0    0 /   n_solicitud_envio_id_estado_solicitud_envio_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.n_solicitud_envio_id_estado_solicitud_envio_seq', 1, false);
          public          postgres    false    247                       0    0    n_solicitud_envio_id_modulo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.n_solicitud_envio_id_modulo_seq', 1, false);
          public          postgres    false    245                       0    0    n_solicitud_envio_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.n_solicitud_envio_id_seq', 26, true);
          public          postgres    false    244            �           2606    44619    c_entidad c_entidad_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.c_entidad
    ADD CONSTRAINT c_entidad_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.c_entidad DROP CONSTRAINT c_entidad_pkey;
       public            postgres    false    222            �           2606    44599    c_esquema c_esquema_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.c_esquema
    ADD CONSTRAINT c_esquema_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.c_esquema DROP CONSTRAINT c_esquema_pkey;
       public            postgres    false    219            �           2606    44677 *   c_estado_documento c_estado_documento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.c_estado_documento
    ADD CONSTRAINT c_estado_documento_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.c_estado_documento DROP CONSTRAINT c_estado_documento_pkey;
       public            postgres    false    232            �           2606    44685 6   c_estado_solicitud_envio c_estado_solicitud_envio_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.c_estado_solicitud_envio
    ADD CONSTRAINT c_estado_solicitud_envio_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.c_estado_solicitud_envio DROP CONSTRAINT c_estado_solicitud_envio_pkey;
       public            postgres    false    234            �           2606    44654 &   c_modulo_entidad c_modulo_entidad_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.c_modulo_entidad
    ADD CONSTRAINT c_modulo_entidad_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.c_modulo_entidad DROP CONSTRAINT c_modulo_entidad_pkey;
       public            postgres    false    230            �           2606    44568    c_modulo c_modulo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.c_modulo
    ADD CONSTRAINT c_modulo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.c_modulo DROP CONSTRAINT c_modulo_pkey;
       public            postgres    false    212            �           2606    44559    c_pais c_pais_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.c_pais
    ADD CONSTRAINT c_pais_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.c_pais DROP CONSTRAINT c_pais_pkey;
       public            postgres    false    210            �           2606    44634 ,   c_parametro_entidad c_parametro_entidad_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.c_parametro_entidad
    ADD CONSTRAINT c_parametro_entidad_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.c_parametro_entidad DROP CONSTRAINT c_parametro_entidad_pkey;
       public            postgres    false    225            �           2606    44578 &   c_tipo_documento c_tipo_documento_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.c_tipo_documento
    ADD CONSTRAINT c_tipo_documento_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.c_tipo_documento DROP CONSTRAINT c_tipo_documento_pkey;
       public            postgres    false    215            �           2606    44591 "   c_tipo_esquema c_tipo_esquema_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.c_tipo_esquema
    ADD CONSTRAINT c_tipo_esquema_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.c_tipo_esquema DROP CONSTRAINT c_tipo_esquema_pkey;
       public            postgres    false    217            �           2606    44814    n_destino n_destino_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.n_destino
    ADD CONSTRAINT n_destino_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.n_destino DROP CONSTRAINT n_destino_pkey;
       public            postgres    false    258            �           2606    44736 0   n_documento_historial n_documento_historial_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.n_documento_historial
    ADD CONSTRAINT n_documento_historial_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.n_documento_historial DROP CONSTRAINT n_documento_historial_pkey;
       public            postgres    false    243            �           2606    44703    n_documento n_documento_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT n_documento_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT n_documento_pkey;
       public            postgres    false    241            �           2606    44839 "   n_evento_envio n_evento_envio_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.n_evento_envio
    ADD CONSTRAINT n_evento_envio_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.n_evento_envio DROP CONSTRAINT n_evento_envio_pkey;
       public            postgres    false    261            �           2606    44784 .   n_solicitud_consulta n_solicitud_consulta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.n_solicitud_consulta
    ADD CONSTRAINT n_solicitud_consulta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.n_solicitud_consulta DROP CONSTRAINT n_solicitud_consulta_pkey;
       public            postgres    false    253            �           2606    44755 (   n_solicitud_envio n_solicitud_envio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.n_solicitud_envio
    ADD CONSTRAINT n_solicitud_envio_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.n_solicitud_envio DROP CONSTRAINT n_solicitud_envio_pkey;
       public            postgres    false    248                       2606    44825    n_destino fk_destino_documento    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_destino
    ADD CONSTRAINT fk_destino_documento FOREIGN KEY (id_documento) REFERENCES public.n_documento(id);
 H   ALTER TABLE ONLY public.n_destino DROP CONSTRAINT fk_destino_documento;
       public          postgres    false    258    241    3308                       2606    44815    n_destino fk_destino_entidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_destino
    ADD CONSTRAINT fk_destino_entidad FOREIGN KEY (id_entidad_destino) REFERENCES public.c_entidad(id);
 F   ALTER TABLE ONLY public.n_destino DROP CONSTRAINT fk_destino_entidad;
       public          postgres    false    222    3298    258                       2606    44820    n_destino fk_destino_solicitud    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_destino
    ADD CONSTRAINT fk_destino_solicitud FOREIGN KEY (id_solicitud_envio) REFERENCES public.n_solicitud_envio(id);
 H   ALTER TABLE ONLY public.n_destino DROP CONSTRAINT fk_destino_solicitud;
       public          postgres    false    248    258    3312            �           2606    44709     n_documento fk_documento_entidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT fk_documento_entidad FOREIGN KEY (id_entidad_origen) REFERENCES public.c_entidad(id);
 J   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT fk_documento_entidad;
       public          postgres    false    222    3298    241                        2606    44724 )   n_documento fk_documento_estado_documento    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT fk_documento_estado_documento FOREIGN KEY (id_estado_documento) REFERENCES public.c_estado_documento(id);
 S   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT fk_documento_estado_documento;
       public          postgres    false    3304    232    241                       2606    44737 6   n_documento_historial fk_documento_historial_documento    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento_historial
    ADD CONSTRAINT fk_documento_historial_documento FOREIGN KEY (id_documento) REFERENCES public.n_documento(id);
 `   ALTER TABLE ONLY public.n_documento_historial DROP CONSTRAINT fk_documento_historial_documento;
       public          postgres    false    243    241    3308                       2606    44714    n_documento fk_documento_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT fk_documento_modulo FOREIGN KEY (id_modulo) REFERENCES public.c_modulo(id);
 I   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT fk_documento_modulo;
       public          postgres    false    212    3290    241                       2606    44704    n_documento fk_documento_pais    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT fk_documento_pais FOREIGN KEY (id_pais_origen) REFERENCES public.c_pais(id);
 G   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT fk_documento_pais;
       public          postgres    false    3288    241    210                       2606    44719 '   n_documento fk_documento_tipo_documento    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_documento
    ADD CONSTRAINT fk_documento_tipo_documento FOREIGN KEY (id_tipo_documento) REFERENCES public.c_tipo_documento(id);
 Q   ALTER TABLE ONLY public.n_documento DROP CONSTRAINT fk_documento_tipo_documento;
       public          postgres    false    3292    215    241            �           2606    44620    c_entidad fk_entidad_pais    FK CONSTRAINT     y   ALTER TABLE ONLY public.c_entidad
    ADD CONSTRAINT fk_entidad_pais FOREIGN KEY (id_pais) REFERENCES public.c_pais(id);
 C   ALTER TABLE ONLY public.c_entidad DROP CONSTRAINT fk_entidad_pais;
       public          postgres    false    210    3288    222            �           2606    44600 #   c_esquema fk_esquema_tipo_documento    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_esquema
    ADD CONSTRAINT fk_esquema_tipo_documento FOREIGN KEY (id_tipo_documento) REFERENCES public.c_tipo_documento(id);
 M   ALTER TABLE ONLY public.c_esquema DROP CONSTRAINT fk_esquema_tipo_documento;
       public          postgres    false    3292    215    219            �           2606    44605 !   c_esquema fk_esquema_tipo_esquema    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_esquema
    ADD CONSTRAINT fk_esquema_tipo_esquema FOREIGN KEY (id_tipo_esquema) REFERENCES public.c_tipo_esquema(id);
 K   ALTER TABLE ONLY public.c_esquema DROP CONSTRAINT fk_esquema_tipo_esquema;
       public          postgres    false    3294    219    217                       2606    44840     n_evento_envio fk_evento_destino    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_evento_envio
    ADD CONSTRAINT fk_evento_destino FOREIGN KEY (id_destino) REFERENCES public.n_destino(id);
 J   ALTER TABLE ONLY public.n_evento_envio DROP CONSTRAINT fk_evento_destino;
       public          postgres    false    3316    261    258            �           2606    44665 *   c_modulo_entidad fk_modulo_entidad_entidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_modulo_entidad
    ADD CONSTRAINT fk_modulo_entidad_entidad FOREIGN KEY (id_entidad) REFERENCES public.c_entidad(id);
 T   ALTER TABLE ONLY public.c_modulo_entidad DROP CONSTRAINT fk_modulo_entidad_entidad;
       public          postgres    false    3298    230    222            �           2606    44660 )   c_modulo_entidad fk_modulo_entidad_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_modulo_entidad
    ADD CONSTRAINT fk_modulo_entidad_modulo FOREIGN KEY (id_modulo) REFERENCES public.c_modulo(id);
 S   ALTER TABLE ONLY public.c_modulo_entidad DROP CONSTRAINT fk_modulo_entidad_modulo;
       public          postgres    false    230    212    3290            �           2606    44655 '   c_modulo_entidad fk_modulo_entidad_pais    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_modulo_entidad
    ADD CONSTRAINT fk_modulo_entidad_pais FOREIGN KEY (id_pais) REFERENCES public.c_pais(id);
 Q   ALTER TABLE ONLY public.c_modulo_entidad DROP CONSTRAINT fk_modulo_entidad_pais;
       public          postgres    false    230    3288    210            �           2606    44635 0   c_parametro_entidad fk_parametro_entidad_entidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_parametro_entidad
    ADD CONSTRAINT fk_parametro_entidad_entidad FOREIGN KEY (id_entidad) REFERENCES public.c_entidad(id);
 Z   ALTER TABLE ONLY public.c_parametro_entidad DROP CONSTRAINT fk_parametro_entidad_entidad;
       public          postgres    false    3298    225    222                       2606    44795 9   n_solicitud_consulta fk_solicitud_consulta_entidad_origen    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_consulta
    ADD CONSTRAINT fk_solicitud_consulta_entidad_origen FOREIGN KEY (id_entidad_origen) REFERENCES public.c_entidad(id);
 c   ALTER TABLE ONLY public.n_solicitud_consulta DROP CONSTRAINT fk_solicitud_consulta_entidad_origen;
       public          postgres    false    253    222    3298            	           2606    44790 >   n_solicitud_consulta fk_solicitud_consulta_entidad_solicitante    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_consulta
    ADD CONSTRAINT fk_solicitud_consulta_entidad_solicitante FOREIGN KEY (id_entidad_solicitante) REFERENCES public.c_entidad(id);
 h   ALTER TABLE ONLY public.n_solicitud_consulta DROP CONSTRAINT fk_solicitud_consulta_entidad_solicitante;
       public          postgres    false    253    222    3298            
           2606    44785 1   n_solicitud_consulta fk_solicitud_consulta_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_consulta
    ADD CONSTRAINT fk_solicitud_consulta_modulo FOREIGN KEY (id_modulo) REFERENCES public.c_modulo(id);
 [   ALTER TABLE ONLY public.n_solicitud_consulta DROP CONSTRAINT fk_solicitud_consulta_modulo;
       public          postgres    false    212    253    3290                       2606    44761 3   n_solicitud_envio fk_solicitud_envio_entidad_origen    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_envio
    ADD CONSTRAINT fk_solicitud_envio_entidad_origen FOREIGN KEY (id_entidad_origen) REFERENCES public.c_entidad(id);
 ]   ALTER TABLE ONLY public.n_solicitud_envio DROP CONSTRAINT fk_solicitud_envio_entidad_origen;
       public          postgres    false    248    3298    222                       2606    44766 ;   n_solicitud_envio fk_solicitud_envio_estado_solicitud_envio    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_envio
    ADD CONSTRAINT fk_solicitud_envio_estado_solicitud_envio FOREIGN KEY (id_estado_solicitud_envio) REFERENCES public.c_estado_solicitud_envio(id);
 e   ALTER TABLE ONLY public.n_solicitud_envio DROP CONSTRAINT fk_solicitud_envio_estado_solicitud_envio;
       public          postgres    false    234    248    3306                       2606    44756 +   n_solicitud_envio fk_solicitud_envio_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.n_solicitud_envio
    ADD CONSTRAINT fk_solicitud_envio_modulo FOREIGN KEY (id_modulo) REFERENCES public.c_modulo(id);
 U   ALTER TABLE ONLY public.n_solicitud_envio DROP CONSTRAINT fk_solicitud_envio_modulo;
       public          postgres    false    212    3290    248            �           2606    44579 )   c_tipo_documento fk_tipo_documento_modulo    FK CONSTRAINT     �   ALTER TABLE ONLY public.c_tipo_documento
    ADD CONSTRAINT fk_tipo_documento_modulo FOREIGN KEY (id_modulo) REFERENCES public.c_modulo(id);
 S   ALTER TABLE ONLY public.c_tipo_documento DROP CONSTRAINT fk_tipo_documento_modulo;
       public          postgres    false    212    215    3290            �   p  x����n� ���)x��
$i��\bEH	d�V�����z����.;8R���J(]ҁ��� t��}y��Zj}i�jm�jՊ�������C�U���8b�F*B":X��f�'�g3��bI������΂c'�[���qΈ�۷d?Zg��FT)*� �E@N�D�D~$��^�5�	8C� ;�M
�G9a|I|�_X�w!�D�0��AZ�����էam	y�2rs�C�G��'���l�Ӏ����W��>���70����NRe�8c�>˛��ɲw�z�@K���<�$U*�H�$����YԔk�����t����G��'����"&��S�)�#Zg��2�N^X�9�<�&~�^EQ�{O�      �   �   x��PAj�0<˯襐���6�}+M95�
m	��`,iB��'�cUC�9(,��2;Î(�`�
J�s��yj�|��t�m��(��Iz�-.Ԣ�c��L���O��1�{To�֛���8��j�8$�)�llnn�B��u�7s��h�-�`�	�7t�ns%]�x�'%O����Ze�|��?��g�<���Xbu���U�k�T�F{����Yp��Q�Շ,��l��d      �   M   x�3�t��MLN�KL��4202�50�52Q02�25�24ճ4�42��LI-�t�,�2�t�+�!R�1�S~Q��c���� �� �      �   �   x�3�JM�L�L�W(�/R��qr���4202�50�52Q02�25�24ճ4�42��LI-�t�,�2�K��LIL�'F�1�k^Y&��M��*(�O/J�%R�)�?RR�K2��i�霟��ZT�_D��=... (�J�      �   �   x��ͱ�  ����l�V�[�H�ܤK� K_ �����X)�D7��3�Cjړ�#T���t�zy>K��~U���^��ڡՈ�h'3��:4�J��JH�*�@���#Y�W���L���{��� �->      �   i   x��ϻ�0���2�-k ѐx͏3�������"'01�i��]�Ī�Rq��x�va�ZR<IF�&O��J@״��fB��4�i��,��N�C?A�WI      �   i   x�3�t���,�L�t��4202�50�52Q02�25�24ճ4�42���H�/*JM�/�t�,�2�t����Mjs&A�1�kri"���L�.΀Ԣû8\������ ��6�      �      x������ � �      �   }   x�3�4�tN-*�L�LNL�Wp�,�/N��,I,��WHIUp�(�/*IL�<�9���͕����X��\��D��������T�����В3%�,��8��ә��ˈӈ3 �(7�����H��ymj� *5�      �   E   x�3�v�4202�50�52Q02�25�24ճ4�42��LI-�t�,�2��
��SN�H�M$FC� ѤJ      �   �  x�����T1Dc�W���O���eD�l�&H@���m�7n�{U�Q�>����{��~gP���œ�]dy,�n&bܾ{|�?^>�|���=�����O�w�� 
��I��"��6.�8�mv�8/���VK�5?bdi Vq<9��8>�!���H�hq�̥ԙ|�Yq"9�fͱE�L��9�����v�0�K�]ae�+9Wc:���4�BzH�+7�tL�*�B���AF����u\����zBA �>�0׭��H>���:�_%jˍ��5J$�f9m��F���|�E�m�z}W[q$$���X!Z��-9����K[i�ַ�EG�Au�:t������Zv�çԔk��r˞Y���N��+�eϬM�Xf=��vA�W��J07ҧhp}�-{fm(P�����V[��k��rZ>��K�2Ȗ=��
K������T�ڲg�^�~@f���k��nod"��      �      x���n�8���\�����%��	� Ρ2��T9�*[Ii۶Ғ]����vol�3I����)��6jjR"����W$E=��w�;��O����p���M����bt{�xq�խ�.��}1_z#�����]��穹�˕�N��hf�̑�2�3ӝ�eG��d�����g�����cM-���z2�+����ϵ9��lkvJ~�X#���kn����������������sk���Z���:^{�����.̕�,ϖ+{�����=���/��˨����[�[���m]U��?�.�_����^�M-�-�yA�Kg�^�7�V���9���O���̥�2]����"�AsJjh��ڱ�6g�?���ݛ�.��9�>�b.�IG9���Z���&�>]��l�5�ct/�n��E.���\��gf)s�[]��~�����QgI3dj�Etb=�:1�@47���W��|>�U��^�����32:#u�^%��mAn��v^m�+gOO�te-�
�����= �m�D^=iL\�[�]���s\��Խ�~�I�+ׁ̹B�OD23g��܄�O�g�!?��K�c�>���z����3kFү�U&8A7�?�i����Q�G��Or+,WJ;눴���yi��I�W_�;��D�ܺ�W{&�'����Ka�X^�i0��6-��T�5|e?���Br�䏸� Vf+h^*(�!�rCp6WNHD]�@BD�K�j�˯�����\{���E�4L�v(w
�*폾=��.�4ɖ?f�c:��#�D�y�dY-{>�\S9_�d.S���E��f.�~e��$����:m)㹵P��餜�ߜ�)��_lS9�����M9^[K�S�6��7e�>�\��Y���o���.p�qe����������ϵ��u���T���'�{`��2�9�<�;��u%�/K��ɛzM��)���D8�roY3��Y�����G�we��H'+w�9+���u��U�ǵ�F�P4�9q���M��c_4��=�O�d]�D8Q��3�oX{eO�ݔε��2����ͳE����j�o��O�R@����V�A��Wd��^��)�� ���QW�!wƽ��,�'""k>�G��d�`��Y������c��ӹ�be-
fQbyf�w� o�����t�In�9�������ӥs�b�,�y���Jw�Ħ�[/�![�Mm�y��yv�\��JZ�L"=���[�܅�� %�{tKf7r#?�ˈ4E�'k�����ׂ�v-eM�}��~��󫃣^4���d��]��d�>��l�?9s�t�7�g��#ï�
��}�3
�kу���OyO*L�h�w4HF�Uvp	r�+�VSsK7�8��k^�b_��>>^�_<��+����㻋���|��#������s�A��<�G�v�_J������b[^^��i���
@<��dO�I��ȃ���Q��Ky1��Ǟ����>�ZTԷ�YS!(՜�"pq{{r{��t��d�K/6�}'՚��,��l�y�_~x$�<XIO� �<�.��֜^��rJ���A���Tr!������6���#MU[j�(�$�b�Q�^�R�Y1�#p����2X���h*2�:uz4��ٳI2n��d'���gse������Wۓ�llu���<�����Y���ܚ+��@bQ�Jb��6y�v�_� �=�_�(i\�b�]���=)dw˄ �^�ו\�_}����]�;�U��y������ww��x����B
(����婹��yT�6��w]����:]��j�$�ݧǓ3�������b��ĵ̙�n�7�}��U���L�5���W����w��j���4n�:$+���呹�l;�5ru�^�Xn�TAl�z�k�%4w9��,n�g��u>P/�̣��3RD�����k��<	�?�V�]���'�-B��myP�a[�u�f�$I����x�r\�/�����R���������_�_\�ȣv�K���s\������X9m�鍺e�YS*Rg�;����-IJ�Y��r�,����ᮦ��3;|S�6�\��n�NLS���R6))��$Z����{�NTT������{������2%����͓�A��4��~@�/M��_O")�H��fd.P]��z�s���DW%�F�h">)H�{�pA�c�;��]˕�����e�7|[p��@��7�<GB3x?��\�ɣ�����٥rys�O����8�u�����L1�ߺ]R{r=n������f*�$�m������8��Ӌ�����R�����jN+9|!S�s��<�z<�gG�~� � ?�n�Qg�!��ܞ?���?�Y�}�b�^��~�����[r1*1�;?�~������U�-<#�93ٖ�lk�pa�l�K6-�����?�5,��C����/(��>���.n�3^Hj�o�h����sm�,:�Iw�GW��ԙ�~pr}@�ޭ`��$s�,׉�|i%��"IO�u�GBeH�QUb}���t}B�رdM��Y��?����<:�_�(㻻��#�ʺy�,�K�Dr�n��9���Q���=��_�Ɨ����:�{~w���ә��K���y��J��\}�Kd�p�]����$��$%�<#���<��D����Z$��Ws*�(�=���e0��a�� ���������Ah<�����r�U~��4�{��Hp�h�ٚ:�v��N�4�Q`�M�L��J1Lw�����1�ZF�-�g{cw�,���xF��M��U��sq� �tx�mx-@���@6d�u�����0&QD�
6+ݛ����xorτE��ͭDz�/�j�&��䑹j���/�?Y�֊z��h!ڟ �"Qr�%�R�H�B��ѭH��r/��Gρl!���6�I����Y�K{�T��*O?�K��Gz�y�е�����x�.{=�#
6�Ͼ�X������&�_��R���)qŁ�O����W��8G���߀�w���]'�ⰲ�5n�,�������C�{6��^�&A��j��C��=iG��|�{��j�c�=G��9l�v�:��o٫�/����_/��dj���֨Zb�Ιs]�v�j]urq؎ͱ�d����@��@*D��$˭㭦q�g1���7;�e�J�M"c��[��U��Y�_\���Ai���ڭl�/,4j��_�7zBF����p�h����Q8i߶�t�u�jchG2����3iy�ij���Ĵ��ů�+gJtS�tP�ٙ�]4��ZOd�����ɽD�g����+�>-�y�_��W���[b�k��ʌ��%���t����+��ٵ���nV�2g�o[{�ƱZɄ�X)^��7yFwH�G�C���#��^H	%�F:����KCQ;�ng�-���=M�4T�2�Â�]x	��%�K�� /��x)���e6?�˷~o��%��f
�%D���n�Y� /!��-�KvC�%��&���� /�  �x	��%�K���Q�� /^�nP^V\bM ^�Zx�ҕ�6������N^����>� �x	��%�K��L^��c�2���[��x	�PE3����h^B���[������%�!��e�CW�N��~ ^�x	��%�K�(�K�� /w7� /+.�& /y� �d�JCmiCm`�ICxip�e� x	��%�K�� /��x)���e6?�˷~o��%��f
�%D���n�Y� /!��-�KvC�%��&���� /�  �x	��%�K���Q�� /^�nP^V\bM ^�ZxIѕ��c�4}���yI��}j��O��x	��%�K��\w�����������x	����x	�B� /��}�-�K�ve�ݐx	�ɡ��E'�K? /^�x	��%o�%�K���T���X���V ^2t��ki���j�$)x�g��AW����$�/���a,7eXh�2�^&+��qi1��2;H� ̴h%3�Ka��`�q�
 &Ut3�*@�yi(J�i�J@&���̴x(�i51��`S f�Y�L:k�I�-�g�M ��r�"(i�� �2�fl��(��PkR�U�k&-��"��Ц��l3�]�ݤ����Y�1�*�*�Qw-    �1u��7Dq('��
��-	�N��LS�Xg��L���,�;)�L�!% O�dUē/�~Iԓ���
�ih"�=١��ɹ��|2�.�>���'�}3�SP����l�2�	�dM�" ��ѯC@�]��qd PZ�m�T% (�=�<D-���t������u��n�)�B!`�	.�������iX,P	,
	C�͓�@�����f@���K��U���v D)��\"���d՗I�7�{���]E���o SC�/�h��M k���J�0�XJך�N��&�H���w�E���f�Sn�'"o�,�_3�^h*2�j�Th��Td��Th���)o�&�4cv��S�u��N%Q�<��k���͵ç�l���,(P�<43O��r�U.Qy��\�M�`T.g�UO���-�ARs�#>�Jm�l���AS��Ep*Efq����H﷌�f�Ҥ��Op_d����OMC>|*�T��S9o���O�Z>|j�� >|*����T�
F�O��w]��S!��0�T�����O}��|j��[3� >|��>|*�T���-�|*�T�?�O��~�30z�N^�P��갮�����b=�X�/����b=�X�����z|������b=�X�U|#ۮZ�F���nd�[�Ai_��hwN��b=t�����!��-�X�n����b}�CW[�&�4��_��֨�	�X�/��|�_�ό2�}�3ٶ��M�'|�~H&=����,�&�b=�|�>�*�#�3�tZzGՇYR�ۓ�����~���L���q�8ǁ�8P��@qh���q�8ǁ�8P�c��-1
C��ǁB���a
	︄q(���hYڒW�~L�8P�����q�8�^��8P��@9�4cv��S�u8�����@k,��q�2�o!���N�tF]�������%)�N�X8�3�Ns
��i��)�S0�`N���9e��9ݭ�L0�`N������B�pU�	�)4��s
	︄���9mt����`N��ޚI0�`N�0�`N���9mfo�9�=�`N���9��iWi�V�7��x�I�A�:w"j�_牨����E�
F�*U�0�`T���Q��Qݳ�O0�`T������B�pU8
�*4���
	︄���Qm�F���`T��ޚ�0�`T�0�`T���Qmfo�Q�=�`T���Q�)�j��-���C�$gT;,���U0�`T�P�Q�
F�*U�0�`T�V�Q��l4�Q�
�d$F����Q`T��]�0UHx�%F�jc 50�`T�x���$��L&�Q�����Q�
F�j3{�j��
F���`Tu�U[��W��9�TR_ʨvYFu0쾎Qt
��i��)�S@��N�:e�:ݭM@��N��� �B�pU�	�)4��t
	︄�:mu�����N��ޚQ@��N�@��N�:mfo:�=��N�:�)Щ>��[�ah��:58货�y0����@jşp�*�V��[��2 o�
�x�x�m�o�
,e'$����rU�[��]�0�VHx�%�xkc�6��[�x���$��5 o޺�� o�
�xk3{xk��
�x�O�[�=���I�o��xk��o� o�
�x+�V��[��o�
�u���X�~a)�[!��0�Vhx�4��q	o���x+��7|��6I�5C�[��n!.�[��o�����Z{`��o���x�1ҍ�6h{Fg O�ӭ}�nջЭЭ�[A��n�
�t+�VЭ�[A��TA��J�/*t+���
A�B�;.aЭ�[���n��ƃ/��&��f�t+��-�t+�VЭ�[��[�[k,�VЭ�[
�:��V��!�ɓ�R�u��=Э�	�VЭ�[A��n�
�t+�VЭ�[w*��[A�����i�n���Kà[!��0�VЭ���@��n}��tk��[3� �t���t+�VЭ��-Э�t+�VЭ?�n�h���꫚n򤡔n�t���n��n�
�t+�VЭ�[A��n�
�u���T�~Q)�[!��0�Vhx�4��q	�n���t+��7|A�6I�53�[A�n!.�[A��n�����Z{`A��n��S���H�ZC}���[�$	ݪ��٭E��ƬM�% ��>�*�S���
tjXV����R��T
w)ϥF��qi&5�X�HM
nƣ&�)1�ʲ�	�V�D�{�4���f�)T���IcM�*����i�"�4�Y�=MF9I�x�4�6�N�����3�ih�c@9�OL�&�R̚Fm��r�\�B�4[oc�՜V"�K�2t)�K]FU��c���d�@��RD`�3�U��t�J���!�H)�E_�3��<Ay!�QH�&)F���K��L���h��(�PRmTU�X	+J��HQ��\N�ji%�f-`D�̛����|hZ�E�G�:�P��A�
��:.T�){C�
���$��L����ȶ������3���ApPZ-Ф��h!ڟ'�"Q��O��m�nE��О�-d��f4Y/�>�K��tg�T��L��2h%�K �:���Tg�s$��,љ�#�_����8A��}}�)~���zOBW[�&�4Ù��δμ����7��Q��-��t%{�m2�5�²���6�b3k�ռ��d�f�l�����IM�hM�&gt�(M�m�b4������k>��ŵәٛj�����L'&3�4��	�2��+��c�-�&y4&���j'["1ٶ�p�R�dB��`&>�f���j}�J��U�R댌��0ZM�i]Y�Pե�ƒ�u ��%�K�� /A^2-y	�R��	��l~��o���%�KP��K��y	��nA^B�;([���,�K��M]�o:A^�A y	��%�K�� /y� /A^���ݠ����Ě����2�+�#���ZG��,�hR�Rg���@y	��%�K�� /���y)���e6?�˷~q��%��f
�%Dт��n�Y� /!��-�KvC�%��&���7� /� ��y	��%�K���Q�� /A^�nPA^V\bM@^�Zy��Zg��Z����L�������p�e�( /݄��I����f�����Ϩʂ�IM��͸���L�P_�L�V8����:�	�g��qRE79�ۗ��4̙��s��W�L�W@:�Vs�KUX'�� 줳��t��pg�4ޙ(W(�2������%�y��9���'�YŰg�Bq],�q@�|��ρ>3�UI�OJ���q��$��r���uײ�SW)�/qCT��-��Jޒ e�`��4E�f����i�B4��K���R�JVD��B�D=9��� ��&X���ᢜ���(��"d��\ ���7�F%��Q�K�Q)���Q��/��
�:�T�5{G!��ږJU��r�#HDԲZ0N���\*��P�2���� �by��Rhn�������0$�<	�Y/vJo�<p���8�|J�Pe(PnB��[ȥTz�JV}Y�z�A��J=��Q�?^��25T�������N~i(���a�t�yo��ib��[�~'[�S�j�P�Vx"n��2�� U��`�"��U�F�@UE�k�U�f_���fkV3f�
Y�[�-hU�z�U��W��\;�*��v:���΂b|��#�H3�d}+�_Q�B��w����$e�r�^�dK8+���5G?���C�Զ��Ϻ�5�^��Rd�`mo�:�VW�v�=yR_��v�O���Mi3��[��[�VoMHA��[��r� o�J�x+��d�x+�V`); 1�0\���
ﺆ��B�;.a��[÷o��ƃ/��&��f�x+��-�x+�V��[��[�[k,�V��[ު�Fz������K��wzk��:��)�S@�QV@��N�:t
���t�64�:,�t
C�Ui'@���k�)$��t
�1��S@�o<�:m�zkF �:�B\ �:t
贙����:t
��g@�u� �  i�nG���<�'�N{,t���4f�h-p��Ou�LT����^M:5,+F@�m�Rd*����R#�临	�f�@�&7�Q�����veYԄi�B�ҽU�CMP��*�Z�Ӥ��\�A����4c}��,͞&���E<w|�S�������4��1��'�M�N)fM�6�ja9S�b!e��7�1�jN+��H��s��.�*r�d`r�T UG)"0ݙ��xR�e%[��p��m�"���R�� ����(�G�����%�Q�\Un4}Q��H��6��C�������r�(�f.'J���e�0�i���L�b>4-�"w�#Hl(���� CM~*�=�!C�ROZ�J�P&V{�qd�U��hu��Ls� 8(�hRF�B���m�(��'t�6E�"YJhO��m�l3����Lۥ�b�3L*�v&{D���%q��li�3�9W\��L��/cbwy��F�׾�����Je�'��-x�_��L��vgZg��[z���֨���M����6�՚Waم_��d�]��5�j^S`�Z3k�VS`���&k�&N�3�W�&۶m1���Ch
M�5�Y������M��A��Lz���t�̈́�Q��g��Lֱ��X�<��Ws��-��l�r8L�V2!�g0����Q3�ex���L%�F�:yi�T�5T{j�+K�k])y�g�˞>y	��%�K�� /���y)���e6?�˷~q��%��f
�%Dт��n�Y� /!��-�KvC�%��&���7� /� ��y	��%�K���Q�� /A^�nPA^V\bM@^�Zy������m��a�L�����I��K^���_ǡ�-F$Fa[n}zn�|_̗ވ��~�v�#�yj.Gv�c9�ь����eG��d�����g�����cM-���z"7g�q�g(k�K�d7����&_\?�ݝ�\q��Y�>�ɸ��Z�D9�k����.�O���z�\���g'c�o�Z�:-�}n��P�^]d��=�ZR[�=
�\ӿ��ګ��j�oC&��u��޿#��Y�/;�q۷֎��9k���������(t9�����28����ǣ�I��OFd> ��kz��ħ��\����Z��ݮj���0,�f���yk����d ��i�`u��Z��}��ZgdtF��J�Vۂ�Te���WΞ�,�*�
�����= �m�D^=iL\jtd��s��=���S���M4�'"��3�rp�3e��:�G�{}6:�!���z���׳`ԾvV���qD$ˇ˨��(�;�m�YG�U��@�C&�(!�	1��H�jn]�=�Ɠ�����0B�����������\!�]�G�l
+	�4/��G�!8�+'$���[ !��D5T��W���dN�Lit���	F&�H;�;U��Gߞ?QgI�d���1�$ĎE�y�dY-{>�\S9_�d.S���E�H���7z�_[�xn-#�`餜��~΀P��/�������M9^[K�S�6��7e�>�\���p(�7���y�8����ъ6!���\�/\7P��Jſ>~z��v� �Ɓ��\�t�ו3�,�&o�5-�x^:[��gʽe͔g�b.�.��1�������1g��#┡�w�����V��f9'��±�Y~��ӣ���陬˓'�Wr&�k���}��ҹ���W����t���٢�|�|����'�)�\��+� �߫x�;������L�G����,�C�{3%Y�ODD�|�h�?�B�t��nQM����&3/�s���Z̢�����A�$�.�xe��cN�<��Bo�t�\�XD[B��?W�K%6�zI�
nj��ȓ=ͳ����VҪg��4w�R��_�Z����=���(��Gç��d��ò���Z�֮���3�����q~upԋ&Z>��޹�x�����ǃ##4�͘������d���k����q_����Z�`r��Sޓ
S&f����.A�v�jj�c��ܒ�Zy�kT�����ǋ����{�ߪ�__<��.n�����H����?������������,�ؖ��9y��<��ϣ�p�M��¿G�f@Cy<���z��������F6�<�BP�95E��������m�8D�S�Gc��k�I��} �/[l����$+��d!��W
.E�5�d��J^��������B�J���6��45���H�L�,5�U!�+���C�o1�/�����P�S��o�J�l���m�%�7x=%*�V�ɜσ9A��ʝ���ʭ�2��$��$�ĸ^~�'�֮غ�`A�d6�dO
��2�H���u%��W[y�g���H��FG��R4C���������T���l��sՎH�K�O$I�GX����h��R���:��a)q�
ǥPE7;0�*@�������)i�JǦ��W����x��S�VsG���,8>��Zp�
���:o�CT��tJ���_.q�
�����9N%��u�܆�#U��*>T%i��.�`��£UD�����Jr�
%f戕���q$IU�V��4���=N����q����WؖVh%oIp�
Ss�J�"?|%��J⏴f�,�]��n)qW��A,�x!�K���TW�LCɡ,�P]�X��܃Y�V��g.8��ξ��,���Ѕ�0�/t�qHk�9�E����"�=�#sT�Ar�T%ǵpۣ_����_��t����-hp����P���[ `�	.���hn�����	C�͓�@���Bo�<p��x�K�B�PeN[�v D��[ȥ�z���d՗=�z�A��W��.�"�����L�գ�7�1��_��:ow�]k�o������V�N�x[��í�D��d��B�����8��W#4ZǑ0"�5
#4��cax�5�1�WG�����0�(�s<���^S��ڏ��`;��v���ג�'�;*��r�q1�{u.�&yG�p9k�z��cc����A�����U6~�� _/:B�"�8k���������}���ʒzCƜNZ������V"      �      x���n�:����B�`����zCN g�6�����4*[Ii�K�d�r�j����j�DR�d)r�vނ�JD��Ǐ�(�zLiG���j�v>�n�N<ֻ�f/o9t���T~Φs�GR~?^y��<��=w�t��b֛�K��/����&|ٞv<�+����d]g쐟c��/9���?V��}r��Ix�����㞽�ǃ��˻��k��;g��_�N���s���s��ݹ������Kw1��/�寢6���ߏ�-�/�f�Ǐ�Fc�=7uU՚��t?�����<�h�Hm�n��~Z��ګ��h4���ſ�ꓻ\���]ڞ�=q�7,`�I��Zsm��Y�O�Em��'ǧ��k�\���Ϥ���̙/O�&��>�.NI��nX��zxҌr���r�/&�2u�����c�T��S�I3dj���Ct�<�3:1�@4�[��/=w�|��Z�j~����YFO�|P�O��)�MU�̫-t����/��%�Q"��~�Q�c��FN�Փ��#�����E���&���K:_�	%`O�{"��=Q~)��$~�?{�kнD<v�Ch@Q��W��t5q&$�f��'�����"M4s�)���� ����
���:"�*��}��˅����W�oĈ�h�j���;�Ɠ����O���8�p�l:���8k��}^9S����G�l
+��4/ɰ�rCp9U�ID��o������P�_�����%�&i�<"�P�TU�}{�ĝ]$i�-�^������q��l0������l���&�2��N~ZdN��d�˯,V����v���7��ԙ)��tRNɇ��)����\[9��K���r�r�_黤�ߔ��Dpn�f�r���w<ʓ�бǥ;u�m<x��.�����(Me��?=�?C;��=�Q�G���V˔3:,�%o�5-�E�u�rF�3�(��3Q��{��v�hm�R�+�t�r��'��#┮����x߯U4E��O��d�pf�N������q)��$�������W����M鵶��׶;?�=2�yvh5_/�;�S����)����+Z'��k2sg��)�[���gϨk���{Ž�,�""g�F��?�D���Wݢ�b_7�M溘^KKgVp%�'Np��&�/�/a'^�����3/)��[:]z�����:����\Y�Z�zI�n��ȓ;γ����VҪg��4]x�����(���!����y=�HSdzr�����-�+�QV�1P����x}|ڊ/�|>������e�>�Z��l��,�d�o��&3G�_w��P���{������_��T�2�,ﴓ������nVp���<�nΐ8��߽F�}����8�<��+W�����7���]�o����<�1w|rc�6��=��)�
����|�myy�����S'���`��	&���d ���Ƒ��� �"�<�T]_��ӣEE���1�Rͩ)���|x�eX:��Tr�K�`�Ϋ5�L��m�y�o�|�eΤ��$�<�>9ߝ)=[K�
֩�<g�RɁ�B�L����O5Um�ɭ,�$��F{U�J!�{��[����>��pV�"���d���i�.g�&ɸ٢_��\T�'��N�9x�~w}���V�ŞN�k�2��;�9�������/$��$���;mo�-`��q�ŉ��5+�.*X�5�E0ٝBv�Lx����k]�a���i�|��zt�8������)$���W�gx�+ߞ�Y�GWu���������vO���Z�&Ij��ї��K������٠t�9�dq���~���L�s<I�������=C����`J3����'dz0�ٳ��"<F��W�s�o��S]7L�̓���̋٭�l�����>�x�$E$�qY�_^9�o�yX���L�ԧ �r�!m˃ڍ��&�%)Hj�Z����r�6������^���o..����=j�t2]=��:��x��W.�F�3N�1���A�i�{Ҕ$���劜�qpF��pG����=�I�O�Nm/���}�/��MJ
�D ��o����E\T���ր��;�q~Q�������)h��bq�� ��-MY�s}<�� #�6��9@e��?��{�*�]�4٢�D��0�ﵓtm���&��wۏ��=��M����ݵ�q4���C`���J/?)�n����5�i^���.>��t�X��o�IjO���$�%�z��2"�f������~^����ۛ�'��V�Mϫ9���\O��̋�L��#wr�i�,���Vu�r�������2�:^l���/t� �>$�����7���N.q]}������iOl�e%[��8�9w�'�}c�K���t�f�ɂ���E0k���}8�_no2^HjN�xUoh��r��$�;���e���~|~sL&؍pr�$s�o��J*�v�1D������ʐj��:�������9�H�%kӕM"o���\��ӏw��[�ww��`��RY7��՜-��[���g�P�n�-�8�f��YϼU����u�7<Ng����)�g��T� ?m���3]"Sł�A��:NR�22�?�ȍG��,�t��ɡ�yÔJ8����f��F��nfm���'�:�%<L�?��GǳG�8^0�����<�f�b�w��i�g���b֌RC�ɑ�9�4��	�\)��RW�S0�T�h}6%=�]����p6ܟ�i��b.�.��6����폎eHȆ,:�}���$n��]�*`�s�^����^�<0a��|s+�^�K�Z��ry�ɵj�O��8�Β���h!��h�Dɩ�\��[:���݊d�)w0_>�����f4�u�-���/*�J��oۥ7��-=w��9�����Z]�x�F.F_�|q��1Z%�סmj�,Xk�
�d3�CS�C�_�-�����3�`"X%�W��y��F��ʒf�|���D��ڂG	�@��*{ʚ!x���g�I�]o��oet��θ��j�q����u�����_�7	��i�wHb��F�5����[L��R�ZW�N�ksl%=�� �c0�
y�4�2\��q�UXL��͎��PI��2&~T�\�_zȚ��9��K��^-V^e�Aa�Q�{uW�¼�s2�V�'ǅ3F�	�>��I��e/w��UCɨ�F�zϤ�%�����Ӛ��6��)�I��A�g�t͢K�Ʌ�D��n[��C��J~ٷr���g���o�8V�+��.�v���h������\mP�ׯ���%�t�ʖ9|ۚ5��J&��J�4>|���=j�B���,�)��'M�@J(14���|x%]i)��3��f54Ko�4a�������4����4tt%�JЕ�+AW��dZ�t�X#Е���+���,�JЕ 'vSX�+!Z�t%t{Ⱥ]	��lAW���+AW�r�j|�	�2�JЕ�+AW��]�]	�t��te�)�t%��wKWZZO�4���vAR������dt�ydt��1@W��]	�t%�J���+AW��1]����΂�]	rb7����hAWB���[Е���t%� �t�.��Ƨ��+� ��]	�t%�JЕ�QЕ�+AW�oPAWV�b�@W�Zy�t��6��ֱ:�$��:�.�+�#+�+��JЕ�+AW��]ɴt%�J�>F�+��AW���YЕ�+AN즰@WB�-�J���u���Cق�ddAW�������4teЕ�+AW��]	��7
�t%���*�ʊS��J^+�{�����҅Iz��L\�:j�/7�bp���+W�\	��K�N~��t�W2�W���Y���+N즰 WB�-�J���u���C��ddW������0pe���+W�\	��7
�p%���*�ʊS��J^+���ZM�MS&�-��H_�>jte�T�t��#�&����U4q奠
�Sf��$c%�r]Z4z�2Q)�2-Z��\�%!-�����hK��f�%U�B��P�f.Ӣ��K��Js�i�
�%�j�T��������t�"��[��L�&�0�
EP���ґ.32dh̵}��dNC9�IuV1���P\�ef����s�̌tU>    �3ChfdiƤ�\�,�G��,���U��K�U��lK+���$�6�:r3M���oxz3�GZ����R�$7���8��U9Nj��%QO�~�+H�����d��rT'�n.�ɴ����3��t���NA�b��.�tTʨ&Ɠ5�N(Oa�_�y
�� �Ȑ��R�R�JhO.b�r�ZV�����yA�� :��SF~B��.�X�r
��wO�b�J�PH�=	�Y/J/��p�	�ub	F�Z�����
��e��K���������(�ă~x�z�ϣ3~��1cj���-��	`�!�kv���ѣt�y������V���H���<G���Dx�e�XR��Ф"���I�F� JE�k`J�f_O��fk�J3f�,�[�-�T�z�R���K��\;a*:��:�1c�^Ŕ)�G�{f������E�iS޽:�c�<��Y{գ-Q�|s���ϞR�*��f����"�"�8�^
������Y��0���MՒQ���N��N*(�4�PA��B�

��*(T�ՠPA�&K	�PA�����B��!��(Thx�5
�s	�B��3(TP�o<��B�%����B�����B�

�n�(��
*(��S�ݞ�n��1�I��5ն�B�u
�[�{��y�ao����y�ao�����x�<�0_�#`�ao��*��mW-�����32ͭ�Π��7�C�{'Z�a�������o�gd�y�a~�CW[�F��L��7̿�fkT�o����	�0�7�gF�ѡ�l����]�'�a~�%}���7�b���y^+���fO3z���U��$�0,M�Q��zD>ë��6
��t�>�쉝=��'v��Ξ��;{��`gO�쉝=��'v��Ξؑk�%��=!`xscgOh��4��=!�=�0v��Ξ�j�,m�+2����'v�|9J�;{bgO��I��'v��ΞU�1{P\)�:�칫���=k,v��Ξ2�o!v��̠F������M�Z����jG�3����T�� KA��YA��,Y
�d)�R&;���Z�Y
�D�^Hd)WE�@�B���a����Kd)�ҝA�@��,}��d�.��f� d)��-�d)�R�� Kw��@��X�� KA�n�,5���j�n�ţ�Q�����%EK�#�	v75�u�n��iY��$*HT�� Q@��D�
u��V9A��DA��
C�U(����k$*$���
ugP4�� Q�x���Kꭙ? �
uq�
$*H���-���$*HT���'Q�=Uoh-�mY�$CoYmCJ�G�3��4$�$*
�� QA��D��y$*�j�� Q���� QA���@�B�pU
$*4���
	﹄A��D�$*H�7|A��zk�@��D�B\@��D�
u7{$j��
$��ITK�jC�ڪ��%i-�ە�j���j�隯#Q��-ZgZ
�h)�R��@K��@K�k�h)�R !{!1��0\�iZ
ﻆ��B�{.a��@Kw�-Z
��_����ޚ���@K���@K��-���ZZ{`��-Z�}�T��F���Z�0�k��G��ZG���-��MN�`�� �Q+���Q�b�
��� + V@��X'�Xl�+ V�'{!1@�0\���
ﻆ�B�{.a@��Xw�b�
���_@���ޚ�@��X�@��X�b����Z{`�bĺ}���3��jY�&L2�z�2�k�|�W���� �b�
�+ V@��X�bĺWq�
���@��^+4|X�
	﹄�b��+ �7|��zkF �b�B\ �b�
�u7{k��
��!V��[=���,�#H�64M��])��>"���@70�#0�`X���a�
�+V0�`X���U���=9,�+���
����B�{.a0�`Xwb�
���_0���ޚ�0�`X�0�`X���a����Z{`���aú}������4�?a��Q;�|#����-0��V0�`X���a�
�+V0�`X�*�`X��{��k�a��K�`X!�=�0V0�;��a��ƃ/�]Ro��V0�[�V0�`X���fo�a�=�`X���a�:�jh=�j�UM�,aR�l�[m)��="���@�������a�
�+V0�`X���aúWq�
���0��^+4|X�
	﹄���a��+�7|���zk&���a�B\���a�
�u7{k��
����VO�]��v�}X�$��v,Um�V]%��}X�6b]e4g�`64n���BMVd*0�QY1�I/>��O)��<}�#ǥM��(c�4)�u�d�p��+K�&�Zޔ�Ҵi��gM��r4&/�r��G����4gi�4�$-����ۜ-M�/��p��e����=1S�tJ1Q�ITK�rY�l�9$)WsZ��"MD�0��[,[W�c����3�e��:Jq��;WG��-+�*ֆ��l3������|�9��I�BF4�H����_�e�U�C��AY��ʐj��:��I�PzH-ǃ2n�ҠTK�XP6k	�fތ��/�@�",X��h�A�2OF��)h���OA�`�����T�}2�: Z#ۮZXF��Ojd�[�Ai�@�2���h�u�-���n��]ѭH����lwE�M��q���қd1�%� 8�5�@ɬ��MzA�4����+.�m&��G.k�y��F��>�[�)~����@BW[�F��L��v�fZg�#Zz�?�֨���L����3�ٚJa	�wCf�ͮ��̚|5�)0Y��5[�)0�z�5Z��=(�m۶HLa��0����,jq�f�����&}��t �]	�c/��+r��c�M�Fy�%���jG[�-ٶ�ЖR�dB�OZ&ޣf(��hc�J�T_�=�ճ�FG�[�)Hj5�V��R�R;"����P;�+�W��_	�|%�B��+������_�֏g�W��;���_	�B��+��C�-�J�ve��]�_	�r�CW��L�A�W��_	�|%�J�(�J��+�7��++N�F�+y��S���퀯���ua���T�+�+I!=�+�|%�J��+�W��dZ�|�X#����+���,�J�`'vSX�+!Z�|%t{Ⱥ_	��l�W���+�W�r�j|�	�2�J��+�W��_�_	�|��|e�)�|%��w�WjFOo5:��Y<_$���1M)^i�O�W����K�*�Z�-�c)� ���oY:3����.-�!�Ǘf4Ӣ�(��-���mBj��V`5���њT
�KCQ��L�Vb6��+Mm��+p�L�9�ѣƣv��Z@o�Y��M:oi�3m���L�+A��K���Вa9��9Β9�<'�Y�Dg�Bq],ՙq@�u���!;3�UI�NJ�ߙq�e!��r��,uֲ,SW)�/qCTG{�-��Jޒ��d�`��4EN~f�����i�B���K��R��JV�@��B�D=9��� ��F"���1����T(��".��\@���7cC%��P���Q)��Q��;aD��~%*��#É�JmJ�*aE��	"jY-,��çA��at[�N7
C�� �by�Rh�=�*�I!aHx�$,Pg�l)��s�-�K׉%Sj�*�zr+"ʔ]B.͙��V��˲����S��>�"���ڇ�����y��&�5�p���S:oǞҵ�=�f/��Z�;�"��Vs�*7��9L��;"Q���¢����F��G��H�}=�ʛ��J͘=(.�oݶ�TI�aS%��N-ns�|�����Ƅ*{3�l,��N�ǩr�U.dUy�꜎��xU.g�U��Ĭ�-̡Vs�#>�J-�l|���W�ǋ�U����zV�gt�j�fK�d�;m9�j�O�
�V��)R�kR +�j0�	�+V�0�`X�V�aÚ,D�a�
�d$�����S`X��}�0VHx�%���@l`X������u��[3� ����+V0���[`Xk,V0�`X�ΰꭞn4چ�ZmaRW3�$�X� r  #�	6b5��A�@K��-��-Z
�h)�R��Lv����l	�h)�����R��4-���]�@K!�=�0�R��;Ö-Z�ƃ/��]Ro�@�R��[��R��@K���fo-�=�@K��-�:Zj�=Mk��j��0��j��I�����ZG/@K�D͙%�����o*��4Y����FeŠ'��T�?�����i���6!O���Ӥ�f�i�����,q��kUxS��JӦ	PV�5�Z�ј4��˙2�We�f,bLӜ�	�d,����KcLos�4��3>ÕF�9ғ���Li�)�Di�&Q-,M�U,dI��搤\�i%�4)Ðrn�le\E�=��K�@����(�����\5J��d�XZ��Ͱ���rR���Dc/$5
��"Eb2'	>�)W�Me=*C�����c$!B�!�ʸ�K�R--bA٬$h�y34���M��`s�Q�<}���ɯ�?�r�1d�O�~J"P	����h�l�ja5�>��in���M�XO���׉�H�r���nwE�"YJ�N����f4Y/Ǚ޶Ko��g�T��Lֈ2 %�J �7����f�r$��,��<#���=��q�!^��nm��V*�	]m��kR3��q�i�y�h���`4[�jG[�3�J��dfk"(�%���6�.3k��T��dLf�lD����yL�hM4&g��XL�m�"1�����>h
��ŵ3�ٓj�����N�_�9 $w%���d<˯X�]���7��1�L���m��dۖC[J��	y>i�,|lx���,��E�eB(14R�|��S�FWm�mS��5ښ�n�R��}D>ëAK_	�|%�J�L�W���c�2�|�[?�_	���n
|%Dт��nY��+!�=�-�JvA|%��]]��3�WA _	�|%�J��+y��+�W���ߠ���8�����n�J��3�F�ktC@�O��f�!�+;G�3���~`���g=���a��-�����ߏW޼�?��y���Ŭ7!�A/��&|ٞv<�+����d]g쐟c牜^������I0����^`ܳ7�xp�pyw~{�y~琰�����s��>�V>���Oo
�r�$+j�O�MF�?~4~����V����N���<�h�Hm�n/Y��
j��J��F�����JG��8䇛��Xk��59k���������4ry��˟�od Ӎ�i�NH��ȨO�}�t�2�i0��A.���^���d�T-2��FE��|\��wF'���z�hH:�U��A5?���f�,��v>��z��*k���r���#Q	w�H`�wT����y��1�1��"���d VH�;"3�1螈dbO�_�yH�M���� ��Б�h.����ȫ�x���c��b�	N��1-D�\}�{>�2��LM3눴����\��L=�5�I�;�j���;�Ɠ����O����g|N����r�
�푏�� Ve+h^*(�a=��r����z��B	��%��:,�^?�Sr��F��/�`�a�C�SPUi���wv��I��1{=��Gp�h4��g��e�N��g+W6��)�w��"sJ���X��s��J��+�]餜���M�P��o����9���M9[9��]R�oJ�{"8�S��jO�o����.t�q�N�yk�_��r_�n�4��Jp�������;!�!���G���V˔3:,�%o�5-�E�u�rF�3�(��3Q��{��v�hm�R���K���ҏp�S��n���}�V��f>%���;A�Ћ�ǳ�ť�˓'�Wr.��^���B7����^���s�#ӛg�V���#?O�,~�������u���^�j���t�;���gϨk���{Ž�,�""g�F��?�D���Wݢ�b_7�M溘^KKgVp%�'Np��&�c@!��k��Sr�#�yK�K���Y��s����\Y�Z�zI�n��ȓ;γ����VҪg��4]x��_������=N`:X��Sdzr�����-�+�QV�1P����x}|ڊ/�|>������e�>�Z��l����a�7�g��#ï�o��}�=
�k����/yw*L�5��IF�evp	s7+�VSsK7gHg��^�־�]~~�n�`A�3x��n�w��[z}�ܘ���G_�4�[OVp���[l��˔�M|�:�����ҦP��_�H38�<	��Ru}=��Ѽ���r5?=�BP�95E`0�ϿK�!��J.p4L�s�;�ּ+2��������(�I��I&2y~�xR<[�y%i�����Ǩ�,VZ(��|^���򩦆�ی��$�b�Q�^�R�^1�#|]ԝ��~r����*]�I2n��d��!��,[�{:�	��V��`�W���~&��X���Cyq�eĞ�Z�b뢂]�Y��)dW˄7 �Z�֕�}��ɝ�ӌ��i�-Cm	S:��k郻����v��(^�'�O��5|ն;Y��.��'���'i�J��$/�ul��O�Y+l}B�l�� �F����E+m���_�MP���AaZ�mB���`+:k�f(t֢�P輥7D�^�)m�)��p�mQ�gfN���(k�ܶ%�i(����R���b7I�8 �&ET�F)�$��Pbf�K�8�n-�T�k���:k٭1��Jm���!���<�mi�V���0u0ۨ�)�T2��[�$�Hkn�B٥�/ᆐ[�p%�n�B�B�$���Ou�44�l����X����d�iu�6+|悍V��m�"(Q��
]��͂{sv��&�ɖ+�F�n�a�`�mW��K�*�z���}�ZԲZ�Z����\-hp_�ft[�N�6,0�.��|Kh�=�*ٞ��wO�uֻU��s�-ޮe�Xb�j�*�s
�!ڴ�]B.�m�n%����-���\���<�0��k��*~vG�`XcG�z#:o��]k޷@�����V�����[��o����D�?�e�6v�^��."����Eh���]D�k��Eh��[��fk��%c���y�[���^$Q�g����쥸͵o�":��:��/�UP���G��J�:Y߶/�E��~�ݫs:6�����Y{գ-m÷0g�������nf3����`(2�c�j��
V?4��n��i
��j]K����_�d�2      �      x������ � �      �      x������ � �      �   n  x�}��jA��Oq_�BG?�u��E �U\�	ĵ���ɬqgɰ��hu�#r��������G2HE��x�}{�ޞ~>�z�q��_��};�]��W�4M��ѡZ���E�u��PkPI5�9 ��ޢ��F�:S�j�������
���
��t�Q��0�9�m���5$|�l�-����)������9uрMi���(;�� ��S�l����ڤż�l��)O�Ĥ�!��\J��uJšs�f���S�ꤦ#�eK�6;Ό\��gTy�}��n{W��RyK���Z֮J*�6�?���6A*�6(#EI�:��F*��G9q����TZ�
�Ra`XZ+��g�e�G���[i��ϙ�V��\.�h0Kb     