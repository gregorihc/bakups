PGDMP     5    0                {            intercom_documentos    14.5 (Debian 14.5-2.pgdg110+2)    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    219   �      �          0    44671    c_estado_documento 
   TABLE DATA           }   COPY public.c_estado_documento (id, estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    232   �      �          0    44679    c_estado_solicitud_envio 
   TABLE DATA           �   COPY public.c_estado_solicitud_envio (id, estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    234   �      �          0    44561    c_modulo 
   TABLE DATA           �   COPY public.c_modulo (id, nombre, sigla, intentos_maximos_envio, lapso_intentos, validar_contra_esquema, verificar_firma, versionar_documentos, rechazar_no_validos, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    212   u      �          0    44644    c_modulo_entidad 
   TABLE DATA           �   COPY public.c_modulo_entidad (id, id_pais, id_modulo, id_entidad, tiempo_retencion, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    230         �          0    44553    c_pais 
   TABLE DATA           x   COPY public.c_pais (id, nombre, sigla, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    210   �      �          0    44627    c_parametro_entidad 
   TABLE DATA           �   COPY public.c_parametro_entidad (id, id_entidad, llave, valor, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    225   -      �          0    44571    c_tipo_documento 
   TABLE DATA           �   COPY public.c_tipo_documento (id, id_modulo, nombre, sigla, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    215   �      �          0    44585    c_tipo_esquema 
   TABLE DATA           y   COPY public.c_tipo_esquema (id, nombre, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    217   �      �          0    44804 	   n_destino 
   TABLE DATA           �   COPY public.n_destino (id, id_entidad_destino, id_solicitud_envio, id_documento, fecha_entrega, estado_entrega, ultima_respuesta, intentos_realizados, fecha_proximo_intento, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    258   �      �          0    44692    n_documento 
   TABLE DATA           �  COPY public.n_documento (id, id_pais_origen, id_entidad_origen, id_modulo, id_tipo_documento, id_estado_documento, codigo, fecha, contenido_xml, contenido_json, contenido_base64, fecha_esquema, contenido_valido, firma_valida, version, causal_modificacion, anulado, causal_anulacion, fecha_anulacion, fecha_eliminacion, fecha_envio, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    241   -      �          0    44730    n_documento_historial 
   TABLE DATA             COPY public.n_documento_historial (id, id_documento, codigo, fecha, contenido_xml, contenido_json, contenido_base64, version, causal, anulado, fecha_anulacion, fecha_eliminacion, fecha_envio, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    243   �F      �          0    44832    n_evento_envio 
   TABLE DATA           �   COPY public.n_evento_envio (id, id_destino, numero_intento, fecha_intento, detalle_resultado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    261   �u      �          0    44775    n_solicitud_consulta 
   TABLE DATA           �   COPY public.n_solicitud_consulta (id, id_modulo, id_entidad_solicitante, id_entidad_origen, id_documento, codigo_documento, solicitud_recibida, fecha_recepcion, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    253   	w      �          0    44746    n_solicitud_envio 
   TABLE DATA           �   COPY public.n_solicitud_envio (id, id_modulo, id_entidad_origen, id_estado_solicitud_envio, detalle_estado, fecha_registro, usuario_registro, proceso_registro, estado_registro) FROM stdin;
    public          postgres    false    248   &w      �           0    0    c_entidad_id_pais_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.c_entidad_id_pais_seq', 1, false);
          public          postgres    false    221            �           0    0    c_entidad_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.c_entidad_id_seq', 25, true);
          public          postgres    false    220            �           0    0    c_esquema_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.c_esquema_id_seq', 2, true);
          public          postgres    false    218            �           0    0    c_estado_documento_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.c_estado_documento_id_seq', 1, false);
          public          postgres    false    231            �           0    0    c_estado_solicitud_envio_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.c_estado_solicitud_envio_id_seq', 1, false);
          public          postgres    false    233            �           0    0    c_modulo_entidad_id_entidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.c_modulo_entidad_id_entidad_seq', 1, false);
          public          postgres    false    229            �           0    0    c_modulo_entidad_id_modulo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.c_modulo_entidad_id_modulo_seq', 1, false);
          public          postgres    false    228            �           0    0    c_modulo_entidad_id_pais_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.c_modulo_entidad_id_pais_seq', 1, false);
          public          postgres    false    227            �           0    0    c_modulo_entidad_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.c_modulo_entidad_id_seq', 8, true);
          public          postgres    false    226            �           0    0    c_modulo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.c_modulo_id_seq', 2, true);
          public          postgres    false    211            �           0    0    c_pais_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.c_pais_id_seq', 5, true);
          public          postgres    false    209            �           0    0 "   c_parametro_entidad_id_entidad_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.c_parametro_entidad_id_entidad_seq', 1, false);
          public          postgres    false    224            �           0    0    c_parametro_entidad_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.c_parametro_entidad_id_seq', 65, true);
          public          postgres    false    223            �           0    0    c_tipo_documento_id_modulo_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.c_tipo_documento_id_modulo_seq', 1, false);
          public          postgres    false    214            �           0    0    c_tipo_documento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.c_tipo_documento_id_seq', 2, true);
          public          postgres    false    213            �           0    0    c_tipo_esquema_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.c_tipo_esquema_id_seq', 1, false);
          public          postgres    false    216            �           0    0    n_destino_id_documento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.n_destino_id_documento_seq', 1, false);
          public          postgres    false    257            �           0    0     n_destino_id_entidad_destino_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.n_destino_id_entidad_destino_seq', 1, false);
          public          postgres    false    255            �           0    0    n_destino_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.n_destino_id_seq', 39, true);
          public          postgres    false    254            �           0    0     n_destino_id_solicitud_envio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.n_destino_id_solicitud_envio_seq', 1, false);
          public          postgres    false    256                        0    0    n_documento_historial_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.n_documento_historial_id_seq', 43, true);
          public          postgres    false    242                       0    0 !   n_documento_id_entidad_origen_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.n_documento_id_entidad_origen_seq', 1, false);
          public          postgres    false    237                       0    0 #   n_documento_id_estado_documento_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.n_documento_id_estado_documento_seq', 1, false);
          public          postgres    false    240                       0    0    n_documento_id_modulo_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.n_documento_id_modulo_seq', 1, false);
          public          postgres    false    238                       0    0    n_documento_id_pais_origen_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.n_documento_id_pais_origen_seq', 1, false);
          public          postgres    false    236                       0    0    n_documento_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.n_documento_id_seq', 43, true);
          public          postgres    false    235                       0    0 !   n_documento_id_tipo_documento_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.n_documento_id_tipo_documento_seq', 1, false);
          public          postgres    false    239                       0    0    n_evento_envio_id_destino_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.n_evento_envio_id_destino_seq', 1, false);
          public          postgres    false    260                       0    0    n_evento_envio_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.n_evento_envio_id_seq', 4, true);
          public          postgres    false    259            	           0    0 *   n_solicitud_consulta_id_entidad_origen_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_entidad_origen_seq', 1, false);
          public          postgres    false    252            
           0    0 /   n_solicitud_consulta_id_entidad_solicitante_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_entidad_solicitante_seq', 1, false);
          public          postgres    false    251                       0    0 "   n_solicitud_consulta_id_modulo_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_modulo_seq', 1, false);
          public          postgres    false    250                       0    0    n_solicitud_consulta_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.n_solicitud_consulta_id_seq', 1, false);
          public          postgres    false    249                       0    0 '   n_solicitud_envio_id_entidad_origen_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.n_solicitud_envio_id_entidad_origen_seq', 1, false);
          public          postgres    false    246                       0    0 /   n_solicitud_envio_id_estado_solicitud_envio_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.n_solicitud_envio_id_estado_solicitud_envio_seq', 1, false);
          public          postgres    false    247                       0    0    n_solicitud_envio_id_modulo_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.n_solicitud_envio_id_modulo_seq', 1, false);
          public          postgres    false    245                       0    0    n_solicitud_envio_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.n_solicitud_envio_id_seq', 39, true);
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
       public          postgres    false    212    215    3290            �   �  x����j�0�Ϟ���C�$��7�#�!�g�x�@aY�9����>�0���@����%K2�(����Fe+[_W�k�hk���δۮ����������w����2;����	����b��01�*��švq��ރ��!����� �~���e���;��|p~#�R5e �!�Ӽ��@rY���K�gt	gHt�:�+)Ǭ�L1�/l�w!�B�8��BZ��Hi��ʸ��>Q�9ő�1`���-; {�V�vC<��o�):}�v2;�2|�1���)�ű�+R=a�����<]i�TL�NI��ͭj(����=	/��VhEaYC��S�)�-�E���@��/l�'�A�<�S���#[mvLT���Z���q~|{������0��f���\o      �   �   x��PAj�0<˯�Ő��d�ƾ5i95�R
m	��`A,iB^_Ք�Kυe�ffa$SL2bJ��2�� ��`
�Ȅޏ\k�3Ԫ�XՀa��^������.�=��+�������	v&�6�D,������Iˎ��r�M��K�k�w	-қ��Vό�K�H��i�]��s,��$�%jp0���U�� s��2]�]���Q���Vּ�%��y�&��L�w����y�e����      �   M   x�3�t��MLN�KL��4202�50�52Q02�25�24ճ4�42��LI-�t�,�2�t�+�!R�1�S~Q��c���� �� �      �   �   x�3�JM�L�L�W(�/R��qr���4202�50�52Q02�25�24ճ4�42��LI-�t�,�2�K��LIL�'F�1�k^Y&��M��*(�O/J�%R�)�?RR�K2��i�霟��ZT�_D��=... (�J�      �   �   x��ͱ�  ����l�V�[�H�ܤK� K_ �����X)�D7��3�Cjړ�#T���t�zy>K��~U���^��ڡՈ�h'3��:4�J��JH�*�@���#Y�W���L���{��� �->      �   r   x�����0����,@d?;@�v�J��Z��u6����[�1Ph��3}"�滶ڽS;���u}�8� -C6�,�Q�`*���f�4&ӶX�d�2D|M�e3���YK)��X�      �   �   x���1�0���)� M�Ӫt�a�E&�Z��hҀ�Gs�b����D�����$�*ű$U��ԼV5�w�rCʰX��1M���?Z�֯���_
]���v�����k��{�B#OF*�5⼄���)θl��cj1E�      �   �  x����n�H���S�,ϐCrƷE����`��[V�B��� }���q�0.2��%���)�����?�TQ��Μ̀>xYPX8��I�m�v����C��>V�T��o�o����]�l�~S}���|���=���e��̻f�7����ݦ���v��<���F@�����~�n�tPu��N5n�u��u�����!�vm�m��>����I@p�^H�~�ü�?N��87��<v��vc�����]O�̯?-�Q8��c�V���hZs����k�a�.���v�����c�O���E� �NGWm��O]>!��ojU���־<�h8���/W�YXQ;�m��A� HXݝ.�%���wM�kJ,`��
��A�� �w6S����J(�6'�h&�Cn�����K�z�-!9�m�\�$��77�7��#z��K:<zf�׏�Mn�H�7J�T�q]eQ�k���<9�+��Pn�Q�a��g��K�.���s!�����p,������hF
t9�j(�l\i���*�OdA��R�}c���Ɵ��Wɮ+��"J���`�4�c�&��*�P�����%9=� L޼8±�3��&�1cC���!B"cs��k���91�W�=":�l�e	;4��9�Q
#vF$��uK�>c�j�E#�QK�!;C9�ʃ;o��ʚ��4+���{��uZlVD�Isv
!&�9;#ā�we9{$ 8;i*��A b<}��j�]�wf)�H�p|s�g�Y��g;�]%�
�x���M������|i�>0���=�0h���"�4i����)�S(N�#D�d�g����}�p��p�0>��uc��[t���XA��de��&�Q�@خGJ�I{d�sɜh�
�v&�ɸ�}i���``�D�3�Q.:�m�4G�L�(6hs8s���Lh�_�>�+H�fK�����o��      �   }   x�3�4�tN-*�L�LNL�Wp�,�/N��,I,��WHIUp�(�/*IL�<�9���͕����X��\��D��������T�����В3%�,��8��ә��ˈӈ3 �(7�����H��ymj� *5�      �   E   x�3�v�4202�50�52Q02�25�24ճ4�42��LI-�t�,�2��
��SN�H�M$FC� ѤJ      �   C  x�ݖ=o7��_�*�~v�l)��4q��u+�ӝr�*�_���	`��o���}f80!O _������!�Fv�-��3#2L�~�|�.������7��i���i�`�H��5�-�g�T�šΡ�G�-�ρ*Y������`2f�8�s����ps?�sҔ���(x1�bqr���n�O�$�0�c�TG���P3�۩�S'#	(����	B�0L`��(��D�9�gBG��Ug_"�j~}P�%�F( �/�]�ؒ0P[Pr]�C�5f�rK�@o)��Q"A-f���-	���k!zN��}W��$$�����+���K�@s!QC��T��[W�%a������	#U�{ڲ���
�d�J���-��@>`��s��
��=mC;*5f�	����p�
�n���U�����"�Fٔ�+���l�C��E̦�������҉�]�M�(���할^ a����t4�!��ZH��b��j�$ٝOL(>x)@�;��4�*u��1 ��]m�$�+�SC�����|��K��J��Y
�`��D��dw��J-��A#�2��D����fL��@P���d)*(�}�ȬAR�%�R4�L����<�`ߕ�.�V�K]��z,,�R�%���7�i7�w���xp�a�����㝻�y>�˃7���a�|�v��:n���O�;Ww~z|<��e�ݧ��=�]p�����������n�����u����~?�/�o?���/��e^�{�?,�����O���_���AK,���nCZ�����k�}��7�hXr�e$��2�b��V��/~�������      �      x���r�:�������w"q��r\%/I��[�dNu�j��h�s���R�sUS5w�}c." %�r(�=�N;�߇� >�7���O���y��>�^�9�}wsw>}���ןz��t2l���`����i��lo�p��|j���cg6v�1_���3E�_lt9^�F��w䒿G�3Zpvf.�����S�p��ٵ�㾳N�ϯ��nO�/��ߺ���<qOO���,��e��� 8�=�����泳��[�(��{�;��X<����o�Zߌ��j몪����}q��[o�h�Jm�DY/棨�*���Z���`�����-�3������//*��H��Z{e��Y�o�Ym}�Gq�W�9�>��̞HG�G˩;[e.�>��O�H���nX����a;��e�[8�ep2�����LS���~\$ː�!�.щ{�M��(ќ�J�[����HW��[�|����a[���ު�o��-�MU�.�-j���;Zx_7h���AO5H��jDQ=YL|��_��[�rH�;����W�"	8�����d쌕�	�	ßO���v/��!2 ���޸U��d9v�$�j��'�����!���y��|rI��dNn��Bi�"�*��{�9�������/Ĉ�h�jn��Wo,�'ӫ��a��<��h�m�~��8o��{Z�����q/�A(�$�V�^&(�a5��l�������"	��$��:��^?'gH�K�M0�0yDڡ�SR���ѷמ���$M��٫1��$ �D�y��k-So2q}G��t�\����o��-1�}2��buA&��{4��Rw�Xj8|�I%�͏z��r�|��xB�b�7�x���2�HͿ)�)����̆�D}S��8OQࢆ=,���Wd��wfA8�������n�4��Jx}���}��ܹΤ@�t��[S"����Z��n�i���祳)�d�ܹ�X9�O��ُ�ţuK,�����o����u�4���A��,�lBNV�N���/@O���g�.O#��_)��׬�rK�J�)�k7o���N�,o�\Z͗��<�4�A
(W��_E�����\��k21���}�;��%?θ�#�E�DD�N�pD�A
�?)�u�jJں~lr�b6��/�i�,J,����M������N�t��1!w^8Rqk�t�\;��g�<5�J��L�n�4�l7��[����r�g+��Dz�=N��F��Õ�(�ݣ2���i���Rdzr��zO_B-K�U��1T껃|�<8�$-�Of�?�����GVl0�������t)6�g��#ï����}�3
�kɃ���OEO*L�d�w�KG�E~p�r�+4�&w6v�8�"h�S��ܞ}|8�;���Sއ������w�m���<�G�n@����?�,��)�ο�o�E_��'�i��č@� �dO�i��ȣ���I��KE1���ǎ�뫵}v��hh?�<�B��;5E����������qH���	.��@�N����,��lѽ�/?�e��G��LQ�.ܯ�^�e
J���Q��q��BA�p��q�D��G�����Q�I��b-�^�R~�}����'o�J�d4��uz4�-سI3���f'���'�$���B.�z_�@~���}r&�hNP&�r�>���r�,�'��EiSRs�ȓ�?�0��$��D�s���K�&�	&{R��	@ҽ0v�+�L��8
ߕ�?��oU��y�����7��;}�89�B
(������味�IR�6�}�����V�V��a���ɓ�7�NΔ���������u��7����+=S��	_2����ZWQM�Pm���0\�_�熋C�r8�^9���<�F�Ζ�׏�*��#]7L�,��˫����������%�����$&e�`��}qN��ςEf��>�Ig�X'�/�j?�埇m&KZ���~9�����ڼ<\(?��\���3j�#iQ��I���Ӫ������E�7�r�q쎨H�%�Ў��ö$)+x����3�7۪w5�>{��}ru���:1K��"K����s�n�h������'E%�Lo�ςgw4*�/*SZ؛=^?��*��ކ]�xY�*���i$��ٌ�*����]���\�r>�UI��/�J�O��^;����	N�p�r�}u�$j�������(���]Y�#��fn���������مrq}��O����U�=?����řbY��&�=���ITKZ�x��*� �m����هAQ����W���U�C/�9���L5��%�i|���7>�u;q���7+�:�r��텃�ㇳ�K�ώDˌ����N�!���gW��Wq�\��|��gdBu��ن^�6��؛�F���u{}���|<'��i.(��m8\�__�Z!�1�����ϥ�p�8�i�͟\%-PF�񻃓���nE�N&�+���$-�VZa���!���^�H��6��C�����O�{%Y��l��2A�d�}�\]+�����#��6�d>]���U�S7�_����0������
tu��z�/Ӽn/Ӽ�u:��h�oF�>���i�'���*��cb�u��l����iI�IB�e1�Ý���W*�(�=���e0��a��A��������9��Al<�������U~���A�=ܞ��S��l���v��N�4�Qd�My&t�R�]�|��a)�h}�%=�`�O�h5<�gl'�b����*�F7:���_���,*�Y|=���q	֌I�ȯh��ҽIol�Z]�M�=W���A���2��h�LO����Q�2����.�����	�-%�Z2-ŏt�-t�݊d�)�|�x�-d���4>u����+�J��ۥ��#=��������^]�z�GmF�}v��1�%���j�,�k�
�7ds�#S�#���-�����;�p"�%�w�vy��F��ʒf�|�ƻ�T�{�ڂG	_N���*{�!|�b������wy�;9�N��1�ϑf�m�.]� ��#o�#�%��uZ��%	�L�{��UKL��'\W��U��N��+sl%9=��� �c8�
Q�,�r3���޳�Ю�n'��PI��/B�L�����~"o��VogTZd��|�W���VojX�7zBF����p�h����Q8u��-?�i�Vm5$�J��=�����V{{�O�7��4��)�M��A����t������}$�L�-�%b8F�\9�Yq�e�
�iX}K�p��X8Is>�GI�x0���jÊ?�ݯy�W����}k����\ȉ��e|�Zq�g�x���?�ӿ�p������H����~��RT�6[�Z��w;�,��ve�������x	��%�K���� /^��1x�������x	����x	�B� /��}�-�K�ve�ݐx	�ɡ��E'��0 /^�x	��%o�%�K���T���XC���V ^ft���Z�շ4�o%I�K�/����%�K�� /^2�x)���e>?���~o��%��f
�%D���n�Y� /!��-�KvC�%��&���� /�  �x	��%�K���Q�� /^�nP^V\b^�Zx�Е����Z��ɓ�2����ˮ��%�K�� /^2�x)���e>?���~o��%��f
�%D���n�Y� /!��-�KvC�%��&���� /�  �x	��%�K���Q�� /^�nP^V\b^�ZxIѕ�mX-M��(I^v�O���8�K�� /^�xɥq7?�K:� /�� /_��-�K���*�),��-D���g���lwP� /�Y�� /��_t�� ��%�K�� /^�F^�x��AxYq�5x�k�%CWZ���릩ɓ��e�/{�*/�>�$�/���a,?cXh�2�^�+����b��gv�60����U�$�*ys���I]Ť
Pt^��q̬h% �����̬x(��}j�)3�%h&��Τ�n�gf�	 �T�Bli�� �r���>Q2��֤:��L=��"���MQ��f�tUt�3o�Ȃ�iU�V    YP��kYP��k#P/m��"�d=��%oI�t2u0Pg�"�:s���δ=Қ�p'e��)�!d��+Y��a�$�)�Ou�44����P���5��d�.�>��%�'�}=�SP����l�2�	�dM�" ���!�®��82(�ԶT����a"�j=8��?�!p�؃�m�:eP(7A�����04�<�*�E!aH�y��^p��(x�ã���Qj�*�qr;"���B�"���d�o
�Ro<��JYKwyaƏ���������7�1��_+���z`)]k�;iv��#�֪��S���GL����a�!̔w��Td�Ũ��h���p����ˁS�lM�i��^A��w��N%Q�<��k������S��ӁM�Sv�l	��'�P���U.Q��չ��\�ګn	H�=,@R�#1�Jm�����CSW���T������=[ﶬ�fu�Ҥ��O�q_d�u���O�B>|*�T��S�րO�Jy>|j�� >|*����T�
F�O��w]��S!��0�T�����O}��|j��[3� >|��>|*�T���-�|*�T�?�O��V�e��N�(J� �}P����z|�_�����z|�_���r�b=�X�/���v_��뷊o����`����F��:�J��b=D�s������-�X��l��zvC_����ڂ7����,�b�+h�F���z|��ޘ����b}n������/�7�����m ��L�/֯�����V���UiښaFK7T�oȒ�fG\j*K\�]���̎��q�8ǁ�8P��@qh���@q(��q�8�x5[b8���0����K�8�q	�8P��Ѳ̓�~��8P�����q�8�^��8P��@9�4gv��S�;����q��ǁ�8P��{��@�S�6���u�/�KR4)���p���Ns
��i��)�S0�`N���9e��9ݭ�L0�`N������B�pU�	�)4��s
	︄���9mt���+�`N��ޚI0�`N�0�`N���9mfo�9�=�`N���9�̩��Z�et���2I2�T�ND5�u����iY8�*U0�`T��Q�
F������Q�
�d'$F����Q`T��]�0UHx�%F�jc 50�`T_y���$��L&�Q�����Q�
F�j3{�j��
F��OaT������ֵ,y��Q5XF�B�`T��f� �
F�*U0�\k���Q���
F5�h �
Fl�H�*W����Bû�a0����K�*��@j`T�����F�IꭙL �
Fuq�
F�*�f���F�*՟��Z�m�-U�&�*�ԕ2�&˨����U@��N�&Y�:t
��)�S&;�����t
���NH�)W�� �Bû�a@����K�)���Pg�N�����I�5 t
�tqt
��)��f������)�ӟ���mu�ݾ�˓)tjq�iG��`T-<5D�Ԋ?�LU��[��oeZ �x+�V�c�{�u
�x+�����V��Uo��w]��[!��0�V୍�ۀ�o}��xk��[3� �x���x+�V���-୵x+�V�?o��f��[���I�o��x�a��[��[��o�
�x+�V��[��oݩ8o��_X
�Vx���/o��w\��[��6�o�
���_�MRo�P�V�[��V��[��6�����X��[���>�jٺek�V�c=y��n��t�n�[��[A��n�
�t+�VЭ�[A��nݩ8�n��_T
�Vx���/�n��w\ [A�6o�
���_ЭMRo�L�VЭ[��VЭ�[A�6��@��XЭ�[A����o�ݖi�?y�)�[{,��ݺ�n�
�t+�VЭ�[A��n�
�u���T�~Q)�[!��0�Vhx�4��q	�n���t+��W|A�6I�53�[A�n!.�[A��n�����Z{`A��n��3�VC���U5ݲ�I})��g�VM�:�
�t+�VЭ�[A��n�
�t�N�t+����R@�B�;-`Э��~it+$���
��1x�VЭ�<��nm�zkf@��n�B\@��n�
���������n�
���Э[�Z}�����[�$	ݪ��٭e���X3�@KD�C<U���{5�Ը����6"S)�es.5�MA��aR��Դ�z<j��S�nS5eڪ��tom̡����*�-�i�XS!�� `E�i���>�rn̞����#�;M ����td���q[�P��Ӧi�����O�ZXΔ�XH���-`L���J$|i*R�.��R�I�X20�Y*��c#"0ۙ��xRڳ�bm8R�6C����R�<A��BR��M-R�&s�o@�2�r�ً�|��ʐj��:��JXQzH݌e�YȉR��Q�l�F4˼!��_·fEX�y��eޙ�d���q��N��2T(��%��eb�GGޯZ(F���p�ܭ�࠴Z�I
�B�?O�e�����-t�݊d)�=![ȶ)��i�^�3{l�>$���8i�3�#ʡ��.���7d7�:��#qś��;�e̪��<NP#�K_߭̔���d�'��-x�_��̂�zgVg��[z���֨���M����6�՚Waم_��dݮ��̛|1�)0Y��7[�)0�rR�5Z���+J��m[��0���B�{�g�y\;����v:�	�I�tb2��!@#���>*�iYq�B"�mX}K�a��䫹��HLַS��\ȋ�t�c�g�_-�/SB����J^j�mul�j�4�������K�K�%/���%�K�� /A^2��y)���e>?���~q��%��f
�%Dт��n�Y� /!��-�KvC�%��&���7� /� ��y	��%�K���Q�� /A^�nPA^V\bA^�Zy��+M[�x�f覮˒��&%/u����T�� /A^��y	���%�K�>� /��A^���[�� /AU4SX /!Z��%t�Ϻy	��lA^�� /A^69t5��y�%�K�� /A^��䍂�y	�rw�
��k��
����[�z��Y<y�&�ݾ��48�c���~J]�$���f���e�Ϩʃ�iM���Ui1)�}�~c|3+Z	�L?w_ذu �U�
'Ut=��*@�}Y(6�9���pN��6:���N�k�����뤳���t�2��λ1ܙ�&�;S�
E�	��gChnh�a�+���܆rԓ�r�3�P\|� D>E�@���UI�OJ���k �I�UZe1?�e1?���0����8������%��� �Y�
͵��B��Hk���]
�䆐�P�dU@�/�풨�@?�$��P��C�f�(��B`���3�@�t���QA�rp�.ĒyTʰ&x�5���B�_�
�f�� ��R�R�J0R.b{��<��t������:PF���!�0���S��B��p�4,�5��!��IX��z�Sz3���[���7�O����@� Tvyc�޷�U�)�J���Je-��Q�?^��23T�������i(���a�t�Eo��ib��[�~�[�S�j�P�Vx"n��2�� U��Z0U����B�u��"�5��B�/�Uy�5�9�{����mZ�D�lUb|���r�kGWE7�N6�W�YP���yin��a��WV�c�W�rlX��r9k�z�%���� h-Џ ��P+�����nl]]/C[)2�c�������k��i�yRW����'�;e�f��V�i୴��[SRx+�V�\k��o���
�5ݣ �
�X�Hx+W媀�Bû�a୐��Kx+����m�[�������I�j �
�uq�
�x+��f�����x+�֟���[7Z]�R�nQ�o���[�ex+�S@��N���N�:t
��)���nmh:t
Xd'$�����N�N��]�0�SHx�%��ic�3@��N_y�t�$�֌ :t��� :t
��i3{�i�t
���πN�ִ V  �i��jɓ:R��B�ZO/�NW�M�� }����*85ݫ�@��e�(�-��J�.�s��n
���g�@����Q�����v���)�V�D�{kc5E�6�P)o9N�ƚ
	T+�O��e�i�sc�4�$��i�O��#w����2ǀr\��6M;��5M|��r�\�B�4_oc�՜U"�KS�2t)�,��L�(�ǒ���R�T���<WǓҞm�kC��R��tu]ΐrm�	Ҥ���hj�b4��r�)W��^�[$T�TU�!��P�C�f�(��BN��e��0�Y���\�r>4+�"w�#Hl(���� C.��t�Ɛ�B�'-�@%D(�=�8�~�Bq0Z��#�n��M�(P���y�-����n�ۦ�V$K	�	�B�M�mN����c��!YLw�I���Q�dv	D\'�!�1ՙ��+ޔ�L��/cV-��q�!^��ne���V&�=	]m���g��#8�:�^�����h�F��Hnҕ�=�ɬ�D�
�.�2�&�v-�f��yM��:hͼ�XM�ї���њ8M��^Q��o�b4������k>�������M��AM�Lz���t�̈́�Q�Lˊ+�l��[b�hL&_���Db��p�R��B^�`�k>�����j}�J��u�ҲU��W;jה%u5SJ^vY��A^��y	��%�K�C�� /������y��/nA^��U�La���h!Z����>��%d���y�nȂ�y�������e�� /A^��y	�7
��%���*�ˊK�!�K^+ /3���چ����~�L��L]Ӥ�e�%/�� ����6�Q��MH�-����,�Iʻ��?����3���ǚO�1&��em�`8SD��F��Elt�qG.�{�>����0�3�;ǥp���㾳N�ϯ��nO�/��ߺ�>Oȸ��OD9�ˀ�5�g�sI�l� �+��{�c�o�Zߌ��j��P��//���֛�-�R[�gGc��qa�UzCi��71����H�ߑ�]�ɸZk���9k��=������(n�J;g�G_��@:*��2�I��d> ��j�a��	i��"��n�,��F�i�Y���"Y�\A��/�ޛ҉Q�9{�VG��uު�[]���2l��V%��mAn��vQmQS��p�ڠ9J,�w=�< m[�E�d1�ёiE�#�����*WN�l�����+?���+�'N~�7d��6$� :�z�V�F��8���\p�nN8"���E��)Z�˽�m���H������9�Ȣ��&�H6#媹��_��4�lL�..�b ������K�i�N��'Ľ����8[�{��H��xT���rB"���$D>�����
x��LȜ)�._4�H��i�jNIU�G�^{��.�4�V<f����;��I��1�L�������!s�rw+�-r�D�� ��j�g�&�T�"�N*(���H����9�1Yݎ�ߔ�;���#5����0�3'3������q���E{Xx�dE��g.�g�(M�^<>z�#;wn�u�@t�A7z��1%/K���붚ϼ|^:��L�ʝ뎕���ٙ��]<Zװ��2���v�7ҏp�S��n���ݠV��f6!'+�c'p�ؗ��Gǃ�3Y��NկL�k�^��w�͔ε�7�<��8>Y�<���/�_]�-x�i��P������+j��j�;��.���\އ���.]�C�{="Y�ODD��G��d�����Y�������&7/fs���̢����A�4�.D�x��cB�p�����ҹv:M�����\�ϔ��խ�搭�F^x�<z�";\��l�^=�H�������\��S3QһG7���h�������ӗP��w�%yf����.�:�D�����σ@f�������g,h�����d����-���q_����Z�`r��Sѓ
Sf����~�\���
M�ɝ��ݹ!����Ԫ-�g�����p��npu~?�=��kn���G�`�6���g�կ��O��ο�o�E_��'�i��č@����BQ�O"̀���x^G���ڞ����F���
�F���󛛓��O7�!y�J'83l�'��{O�_���͗A�$E+��d!SԮ\JVk4�$-���=�����J�+��K'�\>���7:�3I�X��؋B�W
��C�o1�/�z��Pa�N��d��٤���K���zJT���3�Ds�2q�[�)��g�<�H,J����zI�e,��Z��wq����m�ɞ�e��t/���J/ӯ>��Nϲ5��{��e�Y�f��Wz}��^�[r�����@�����_�#RV��'�d�#�����h��Rҏ6l��RVY+�B]��� u�F��MɊV:6����NɊW8:��;j�� f��)t֒T�eG��y7>D��L��7� ����R�>Й��sǩ��sG�0���H���UI=����k��hQ����Z@W%9`�3s�J���q$iU�V��4���=N��k��4�f�*�\a=��%oIp�
Ss�J�"?|%�����=Қ�G�Pv�#O�!d�cX��Ub��a�$�)�Ou�44���՛��5��`�벣Y��%�����;�EP����{���:iaM�"Ǵ�~�A-®��82G�0$�JUr\�=�el�g��:6�����l��u�J6��Ruʎn��!�&�\��c\�ah�yTr�$	7O�u�{��P��->�e���!/�U�nBt�����Q/�����M�{��xп���t�Gf�x��	f����тߛ ���/}���;�����7G�ib��[�~�[<��f���Vx�_`���`x�k9Fd�����q$��p��;�X�lM������0�w�:F�z�����b�}�����ӁM�agA�11l�y-�y���b���U.<.�o^�˱aё1\�ګn���Â�c
�#��1Զ��Ϻ�dV�ˎ���,����12V�!�i�nW5MS���Y2��P9�TU�:t
��)�S@�Q{ �:t
��)�S�"͖�S�J;:��w]ÀN!��0�S@���� �:}���i��[3j ������)�S@���-@���)�S@�?:5U��z�����3eN��9խ��9�*��z��}[�[�e��Z�$�Ti�ZI�U��"#���u9��&�ԛ%�i�g]|��<Sm�C�k��F�9�-�֍V�oZ=N��$��gݾ�Z�i��#εLMո�w�su�ӝ����$E��;���L�l�D��ь>�|U%ZVO�yR�-�3��^�3}"�~��w�.{3��$Z�[]K멽���:\��_�ψg}�2[Z�������nK3���I�j첞��S�8\�#}���j���v�^�(D\�akzK��LM���=֋Oc��ۇ��󻷤�6�*�$�j?<U�"�QY��β�˻=M�d��Y�D��ߙ�H�T�]�M2#�d��р�5�^z�dtM��ʓ�nS�<�N�>mCN�p�Q�S�[Z��2���@�l�lY�ѥo>��0��Uշ�I�6{-�4t����!�M�PM�*H�݆q��oTk{��;���,\�ГY�C��>R	�ƟU�8�-	Ts���]�$�ɜ��&�}��v,z�a�:���j�������2�      �      x���n�8��{�B�b�u�:K6R\9�SI\9�6*[Ii۱Ӳ]����vol)ɖH��lE����#�T��Ǐ_Q���Z��Sݏ��U�8�=un�����i8���S0W~>�'�Iy�'���Лt����ӧ�ț{��ܛ��pė�hG��"�/1�������>�s�?x�9g�~����?:#	w����^b<���wuw~sz}�y~�/f�ױ�}|�Go�X̂�?��&��ɛ���d�����,x�m>�Z?~�h�0��𱥫����������&�GC_jktfq�O�a\{��P��V�����u�!�Og�$�{a�{�?���7$5�"k���g�?�g��s6::I\^i����7y$5.����$k�1�N��d{��e�.�ǭ�I.��ܛ/f�ӑ���ټw���4U���h'E��f��Ot��Otb��h��J������DW5��j���;��XFGuߩ�O��%�MU�*�-v����΃���${���m-'���b����p���"�q�R�~�= ��\���
��-��)��SrF�>�S�ר{�x�ć؀0:�z�&��b�H��t�N�͋��E�i��Ӳ痧�O��R�̕V�iUI5��ěO�_$���#F��BU��߃�4�lL��?}F�u���\d�g���/�ǅ?VH��^`�PZI���y��H��xT��rJ"N�%D>�����
x�����L]2�h����#��NIU��oϟeg�I�d+�Wc:�dF��F�e��1�<�z�ǅG�e�����]��($�_Y�>�����?�~o*ݱ��Xj4|�I%�~LO\R@��}<�Ø܊�ߔ2�)݀�����N��lTN�7Ŏ'y�;v?��_���Л̢[�������JSy�D����έ��Q7\ݲM�0��RkI�^�♖ߗΟ�p�#���G����ٛ��]<�cXJw1#���L��F�qJ[�MS����*a��L��q2C����(�e������ٹ�����W
n�k�^���R7������ɩ��ͣO��r�ݗ_�'_��H���[��"/��5��.oL�y�g�u铿�q��$���w�m��(x��[V����c��/f����*���#?�jy��g�l�q'^z���+/)f��t��^��4�$��it�'�����Ks�fp� �D�a�.�z��V=�H����4��\/�I����=铻��Wӈ,E�'�~��-��l�ʂ<3FJ}􏏗G'��F����Ng3��˻�G'Vb0����/�1����̑�7�Ǐ?����������/EO*L��,��MG�y~p�s�*�VSs�7nN�8�|�{�Z�rs���wۻ��U.�?�W���M��vw]��:#���?#��l��yF_Nۣ)�
����d�my~����c?y �͢1H�$���5#y<T�}i�TQ�*�ۣ���jn��-+��M��lԜ�"���O��_��a�<��ಓ;ؾ�jͻ �o[l^�ۯ�2�g��?�D�ȯO�wL�ֲ��u�8χ�I��DA�h��y�ŋ�'��6��Q�I��b���(z��^1�#p��$��.�h*2�9uvҽ)X�I3���f'7�iH�I���9BN�߃��bc�����=A{ʍ��Jߛ{��/$������'�p�-
`�����%�kUl]R��kr�`�'��j��$]c׺�������]9��ڸ������*$���W���><�3o��J]Սw��N7]�XNG՚��Z�&Irt�m|�?=WN�?]_~�u��������3U��Iz���4GQ͎�vL�qMiz�}҂���Lz�"��k0�ϑ���өƏ�扮�E����U���u��������;9�?'E$�˲�l~��y�q��yf��>DI�O���ܩ��-�<n1Y҂�֋�d�]̧a�Wd�{�I����U������_\��G���ǋ�U]�?^�u��&��Q��G������E�I�}ܒ$eo����*&��Z���fٻ� y�5��{a<�R���R>)-��� $��
��|�ˢ�D��z�Y����ʔ&�Q[����F]]mY�*���i$��ٌ�	*c������c�P9誤��M%�'�	|�?�Aכ����<��͖Q˟�/�����G������0��%0sq}%�Ǘ���矔O�����5~h^>�]|����\�,��L�Ԟ�_�ITKZ�h�*�D�͔뛻�ݢz�zݏ�W�O��(��՜Ur�L�'���M�Yr���Q0:q�"� ��J���C���h0���V�S�����D����N�ݛ��Ww���N.qU}�������<�e���q�䏂�,]���m6�m�5<MGS2G�Ѭ����i��w}��BRct)/W��ޟ��qLӸ�y�x����G�WGd�݌'�L2W��˴HZi���r��g׺�#�2�ڨ��>k�v}J&�+�zte����h!7#���M��Z���\�3��T�����bH��-�g�+>U�'A��~M3W����E����e�7>Og���M(�>ƹ�A~����g�D��)�*��E,u��,W��,|� �2���O��S���1�p� ǭlu�2�\�a8��A��.���/��h���(1��ϟ��ь�*?a��A����R�i9�l�O�$5F�|i����q�j��ɕb�-u�;� cH���gK"��Y0�O�I<�ȃ�7�b/��Δ�6��NN��O��H�ȇ,9�}��֌ɲ�vū���Mz����j���E/��ͭDz/�j�&���iF�U��0z�������D��D[&JN�䶔<�A�����V$KN����~6�l!�ݑmN��S��ܛ�i�Z���c��!�~����C�Oz|�Z�˟�ֈ�����>w9&��:�G��Ek�TA��l�zlJ\ql�K����U`r�#{G-@D����>��q\YҌ���x!���@BW[��!��XeoY� Do�"�a�.=m����|;נ3�����D���o�����(���~I�NK~C�d����`4[�j�����*հ�u�i︵2�V���a\9F����2�,��l>\b��i|���X�����9�w?�M��=�M~��~ƥEf/����ը��h𽺫Qa��)M�ϓ��sF�	�>��i���ow��UCɨ�E�z�d�%�����Ӛ��4��)�E��A��g�t��[���@�%�6����ѝ0��o��g�9ϊ+>�ޘq��)V4G�Ͻ�;���"R��Ws�Q�_�����<Ӎ*[�l�mk��8V+��+������:Ϩ�
	��<��p������Hǫ��t���F�4:���,ݱ5a�麆���J�aDt��k�+AW��]	�t%�BЕ�+������]��/gAW��9���]	�B��+��C�-�J�ve��]�]	�r�CW��LЕQ@W��]	�t%�J�(�JЕ�+�7��++N��+y��Y���:��l[��6I���Z�j��J�aFt���+AW��]	�t%�BЕ�+������]��/gAW��9���]	�B��+��C�-�J�ve��]�]	�r�CW��LЕQ@W��]	�t%�J�(�JЕ�+�7��++N��+y��e��R�Z[s-W�d����2��jX1]�X�+AW��]	�t%�BЕ�+������]��/gAW��9���]	�B��+��C�-�J�ve��]�]	�r�CW��LЕQ@W��]	�t%�J�(�JЕ�+�7��++N��+y��]�R�VS�]�օI�ch���v�ap\	�p%�J���+�4��\IGp%�p�k��\	���n
p%D���nY��+!�=�-�JvAp%��]]�/3WFA \	�p%�J���+y��+W��ߠ��8� ����J�nj�n��0I�u˕~�i8]險����ݔ�S��&��T�q�<_�f�DX�J��ƐY&ڈ�̊V�,W~IH�U���*kڒ*�oI��,3�Y�J�%�s�Y�
�%�j�T��������t�2�λ1��5M@a���`3�F��Ȑ�1W�9R���D&�Y�Lf�Bq],��s@H    f��/`3s�UI�LJ���s��Ӫ
��4uղ4S�F4^ꆨ"��d[Z���%������Y����y�ӛ�?Қ�'e�"&�!d��+Y����_�觺�dH�Nv�ތ���-�:�V���|���ξ�)(Q�w҅X��J��x�&��)l��8Oa�`ғVjK*U	��E�XQ�j�98�>�!hpD��Ru��O���SN�B����iX,P	
	C»'a�:�C�ŀ�n1!�J܀�V�r�&�!�D�%�IQz�JV���(�ƃ~y�y�ϣ3~��5cf���-��	`�!�iv���ѣt�E/������V��H���<G���Dx�e��XR��Ф"�/�I�F� JE�k`J�f_N��fk�Jsf�,�[�-�T�z�R���K��\;a*���:�KƔ��)S6� ���'�#M9��*Ҧ�{uN�E�)����[�N�p�����=��U�~����e*EfqV���ѝ�ek��&9�c���Bun�u��

5(TP��PA��B��

�j5(TP��R(TP��G�@b�P!`�*�
�w�B���\ PA���
�+��PwI�5��PA�n!.�PA��B����
����B�

u�j�c9Mõl�&Yf�T��n�#
�]�w��y|a_����y|a_�_����y|a��W���<�0�UF#߮ZF���g�[�Ai_��h�N���<t�����!�=�-�0�.������.�����4��_��֨��0�/��|a_�ύ2�C#0ٶ���O���6�K�N�/̯3���V���͎ft����6�I�aX�.�*5�A��E�t��2۩;{bgO�쉝=��'v��Ξ�?��;{bgO�쉝=��'v��m�agO^_���>,cgOHx�%��=��� �Z���!�쉝=_B��a�Ξ��;{�3<�쉝=��'G���Wʷ;{�joag����=����9�[��=+3���1���9���)�m�� G��g�ݗ!� KA��,]fY
�d)�R�� K�� K�k�d)�R!{!1��0\iY
ﻆA�B�{.a�� Kw-Y
���_����ޚy�� K��� KA��,���YZ{`A��,Y�u���:��4�m�hi�di�k[R�To�#���t���T�Ӳ��)HT�� QA�2�D�
$�$ꁭr�D�
�d/$���"P Q��}�0HTHx�%$�Πh QA����u��[3 $��$*HT����[ Qk,HT�� Q�O�:Uoj��X�0��m�1�$�� G��gk:H�HT* QA��D�
��$*HT�� QA���	 QA�� ���D��!�HThx�5�s	�D��3(HT���<��D�%����D�����D�
$�n�H��$*Hԭ����1զ�9��$i��n��D5��_�ܶ�2h)�R��ˬ@K��-Z
�h)�h�~-[-Z
$d/$����2M@K��}�0�RHx�%�h�ΰe@K������t��[3P �h���h)�R����[@Kk,�R��@K�����i:m�m�¤��C��ZrDh��ֹɩmr?jſaT@��X�be< �
�+ � �[ �
���^H+W�� �B���a@���K+ ֝�� �b}���.��ft+ �-�+ V@��Xw�� ��X@��X�nbu;f��[�ei�$��ۖ)�X�9�=��� �b�
�+ V@��X�bĺWq�
���@��^+4|X�
	﹄�b��+ �W|��zkF �b�B\ �b�
�u7{k��
��!V��[�m�m�p)���im�-eX�9�=�4�����a�
�+V0�`X���aúWq�
���0��^+4|X�
	﹄���a��+�W|���zk&���a�B\���a�
�u7{k��
����vGw��i���I����|#V�A��E��:�a�
�+V0�`X���a�
�u�����a�'`X!�0Vh��4��s	�aú3V0��<��a�%��L.�aú���a�
��n����+֭3���1���j�e	�\�qlGʰ���_�4� +V0�`X���a�
�+V0�{G0�`O�=�
﵀��BÇ�a0���K+֝�����a}���.��fr+�-�+V0�`Xw�����X0�`X��n�a�;��l�m����%�MյTՖ1��J
%���mĺ"�h�,�lh�T� T����T`P��bГ^|ڈ?�����ӥ:
\Z�<M2V�Nӂ�Q�iv
7Lq�M�Ӕ\�ҽ�1m�e���Tk9���
9S�*�L��e�i�sc�4�$-���%��>[��_���J����{b�4�r�t�&Q-,M�U,dI����\�Y%�4)Ðrn�l岊{,��^�,�Gձ����sUp�(ݲ[��Т�m�]�����<'��BR��M-R$&s�o��2�ҡ�렼GBeH�QUb}$D(=�nƃ2nҠTK�XP6k		�e^���/�@�",X�<h�A�2oF��)h���OA�`��z��T�}2�: Z#߮ZXF��Oj�[�Ai�D�2���h�u�-���n��]ѭH����lwE�9M��qf��҇d1Ù$m@p�kD9��Y%ћ����f�r$�xSn3}G@�rYy���5B��%��L�;�L��ڂ7xӤf���4�:�^�����h�F���gҕ<����DP
K(�2�mv-\f�䋩L��:�̼��L�ї�њhL��A��l۶Eb
#X�)4}�fY�kg0��^uI`�w:1I� �ܝ�>���b!w�:V�kP�\2�j�v�%ޒm[m)�J.�Ťe���3j��LΖ1�)���H��ѱ�e5]M�5S�d7u۵uC�Wjr�/z�ꂯ_	�|%�J�L�W���c �2�|�k��_	���n
|%Dт��nY��+!�=�-�JvA|%��]]��3�WFA _	�|%�J��+y��+�W���ߠ���8�����F�J��:_�����$��T�-�+I!=�+W_	�|%�J��+���_)�� |e>?���~=�|%؉��J��_	��n�WB�{([��,�J���g���� �|%�J��+�W�F�W��_��A_Yq�5 _�k��������Z���Q���U�4�x�� G�W�V	^�h�[���α�Z�XF��Z�oy:3����*-�!��o�hfE+Q��W�[��\e��jREף5����bcb3+Z��d�ocj3+^��dZ�q�!5���t�z��Z�o�y7&8��	�T�Bl�q��8�Zr,��>�Y2����:���L[(���:s�NQ�dg��*	�I���;s�,dZU�U�壮Z��c�ڈ�K�U�ўlK+���$�>�:�3K���9ox�3�GZ�����R�%7�l��r%�R��x!�K���TW�LC	�՛1����T(��2.��\B����cC%��P���Q)��Q��aD��~%*��#É�JmI�*aE��	"jY-,��çA��at[�N7
C�� �ry�Rh�=�*�I!aHx�$,Pg�l)�P��-�KW���
U��V D�)���1gJ�[ɪߔ5��xЯ�2O�yaƏ������ϣ0�1��7M��ax=�����5{�8 �֪��T����P���a����7�Ud��4��h<��pD���˙T�lMTj��Aq�|�E�J�X�*1~�tjy�k�SE�^vI��wA1�������d}�*�_Y�BV�w���ؠ�W�r�^�`K�*��j�@?����Բ��Ϻ9zuu��_��,����a5;��4U�4ma�帎�a5�>�n�m�!e`X�����ҭÚ�`X���a��
��j5V0��BV0�`O�@b`X!`�*<��w�a���\�`X������+�`XwI�5�`X��n!.`X���aú�������a�
�u��nwt���j9¤�f$I /  �ZrD��� V��@K��.�-Z
�h)�R��Lv����l	�h)�����R��4-���]�@K!�=�0�R��;Ö-Z�ʃ/��]Ro�@�R��[��R��@K���fo-�=�@K��-�:Zj�Mk��j��0�jk��I�R�A��EOs��tE�ќY���;������N��
jRVzҋO�Բ9}�TG�K됧I�
�iZp=�4�N�)N�)q��kUxS��6�MS�ls֔j-Gc��R!gʀ^E�i���1�rnL��c��E<]����gK���s\ib�#=9zO̔��RN�.�$���I���,i�����9�DB��"eR�-��\VQ`����+�e��:6����w�
��[�a�XZ��Ͱ���rR���D�^Hj2��E��d.��P�\U:4{��H��6��C��������xP��B�ji�f-!A���q����hV���:P�����?M~�)��!�~R�S�J�O&VDk��U��h��I�\s��4(��hR�zB���N�e����-t�+��R�tB�����6��z9��]��,f8���t�(P2�"z�^�ݘ��V��o�m���W.+�y��F����[�)����@BW[�o��̂�z�fVg�+Zz�?�֨���L����3�ٚJa	�7Cf�ͮ��̛|1�)0Y��7[�)0�r�5Z��=(�m۶HLa��0����,kq�f����.	L�N'�/� ����^2�W,�.Y��b��K&_����[�m+�-�ZɅ���L>�|F�Q���2�2%��^���j��ڪc
����鎭K�J�A��E����+�W��_	�|%�B��+������_�گg�W��;���_	�B��+��C�-�J�ve��]�_	�r�CW��L�Q�W��_	�|%�J�(�J��+�7��++N��+y��Y��t:��t�F;$�$��k�aR��m���S�nd�8�=uH$��#7W~>�'�Iy�'���Лt����>uFd0�,��_��&����b4O�.����ϡ�@./�����D
�(}�[ZG/1z�xܻ�;�9���<��Iؿ������D3"�٬7y��O� �'s"��6���H��Ǐ��9[�jS���O�4�{L"�����,��#�]WQ�UzCi6[��|�w]}�W�ȿG>�#��ڊ��V�Z���Ԟ������$qy����od ��O�&�>�Q�d{��e�� b�\�۹7_��ɦ�ZdJ�N�dr5�f��.��Otb��h��JK��]��w��N��4�c�}��?�� 7UY���ؕ�?�6pGI���U�#��ZNՓ�$��@Ƌ(G<ߒ,Z!U���̌Ơ["��7R~)�1�7R����5�ވ�N|X����M��ǋQ<6_M���ݼ��H��O˞O�\�S��;"�*�&�6�d�'Sr� F��N��~8����dczu��0B�����5|<.��Br�����J�l%��E2�ƣ����S�p�[,!���D5T�W���tL����E�4L�v(wJ���}{�,;�L�$[��O�X4�/�|���)���S>.<r/Sno�E����Z-�t�7���R��v��
JF�6.)�|����a��oʇ�?�Δn@j�M醏Q'^f6Y���M��I���Ŏ�σ�rޚr��.�g�(M���><?c;�~o�@t�Q7\ݲM�0��RkI�^�♖ߗΟ�p�#���G����ٛ��]<�cXJw��@��z���#┶���rۭU4%�����d�����Q��г��ݳsY��Nկ��׬�����nJﵛ;xI�BO��Lo}Z͗���<�2�E
(W��ߊ��{�Z�^ޘ.�U�\��{E]��/�w��!ɢ|!"�ǝhD�A&
^8.��մ�u����ٽ�7��J���ȏ�A�4�P�;��#�ǘ\y�H1K��ӥ�ڧ�����4�W�eeju�9d3�a]"����k=[i�I�G��xnd.��ԄD���I��J�"ӓ?�?x�ia�}eA�#��?���ˣ{y�����}��������+1��X���7��l2sd������/~Fa{m�`r��Kѓ
SfE��?�.q�V�jj�����ǟ�v�Q+_n�?��n{w׷J� w۽��uoz׷���5��H̣��?��!i��������L�ؖ��1y��:���ٌ^��6�b���4��c�Bx��뫹=�������1���SSz��i��K�8,����\�N�5�L��m�y�o�fxϤ���L�_����Ѽ��T����Ǥ�.VZ(��|^x���ƿ�\ʝI��b���(z��^1�#�\4�d�~
�:��*]�I3���f_�%��,[�o<��	��Sn��h�W���{$!�(u%5'���{Bk���K
�tMnL���_->��ka�ZWz�~���7wVG3:��t,C��)���+}q�n���s��}Q�tOz���g��mw�*-�]$�N��[�dE+mz�~t�бu6>Ye���	Ut��O��~Y(6� %+Zi��6�%+^a��ܶ!�*K�B���l�Bg-��λ�(��3�m�7EY��`[�Ù�>�5��>�m	sʷG�:�|������MRr�I�_�QJ��*�f)����Rr�[��UZe�Ơ�Zvk�����H�U�m�¶�B+yK�MT�:�mT��F*9o��TR�5�S��RۗpC�[�p%�n�B�B�$�)�Ou�44�l��՛m�¹[��
��mV��%�����jEP�|�������:6\aM��-W��~٦+®9�82ۮ0
�JU��
��a��e���������Z��:~^��T��mX `x\.O��,�04�{T�=$	�w�z1���[�]�*q�[����)�
�h�v	y�m[�u+Y��n�B��ɕy�ϣ3~��7���ww��&�5�p�7r���z[�е�
��M�zk��`�[�����.�O��3Yohc��l�"2���]�F���Ed��^�f_��o��M^rfj��u���E�z�z�?��^��\�v/�l��������|a��^��'�����r��/�{uN�Eۿp9k�z��-`�lS�A��7���U�~��m�:_�EfqV�[�X�ꇦ5G5MS��7uUk[2��P��RUY
�d)�R�� KA����,Y
�d)�R�� Bv[b K!`�*���w�,���\� KA��Z�d�+� KwI�5� KA�n!. KA��,Y��������,Y
�t�d��v�v�1���S�Y�W�e��5�ѿ�ٺx�Ҵ�|��P;��1�M�U][�<���n4��i�<%�M��l��=O�d�� q_�����uT��Mײ\�e�쎪��i��k��$�4M���#�� ��i[[�_sI4-����fD=c;F���*���r�"��9��[�V�'*nwt��۵�$��'N:D���~gs��6�j[�"��9����m�I��6��F��8I��\�i�F�aR��-�,��n�#�{;�'��;��$����$��ij��Z�0�PM�����A��S�g����mw���M�6�tLm�\����j�55a��Z�Z��0��~����ߝ�nߑ��>�)	�ڎv��چj���јcYM�k�'ٖ�;��n7�v��k��wLr)�j���>�+M����-G�䚎^4��jÌ�jg�_^��w�h���Lе�i6-�ph��I闢��HȌ^��n4f��c�9�l"��r2,S�d��H���0�;�j��0Q�R�����ώ�fFM�La����@��FÌo��Y����1��E�v8�L�ıIb9maR��"�����[()�      �     x�ݓ�N�0�g�)��R���D�l���ܪ�;��P����T��t=ù�>�ˉԄ���1=
8�L[�)cc�2�-�0��k�]n��h0]da�j�2���e|�ݮ�֧�|�	\D�!C�!Č��-����_c���]��!�w�S���un��'���()����pG�޺e��w�o~��/䷃��y<�4��B���c+CW�R���h��"�4��p˔��~.Riy�^���+^��1���\P�+5�M-'>s��iQ?�&j�      �      x������ � �      �   T  x�����A���S��h�;?
$�UP�Dw[�D��\��x���i�O��?�0�$Lf��\�g�.�gH�(R�o_������/�?������M�ޠ2g�L8I-$���[�B�j�r�b'N�*`UBT$nZZ�j�֎%A�B�%@�%9eh��W��	�j�m>JV��Z�@a]!�,C163Q�B�^}*�"a�����N-)p�0��ţ�\�کC�U�Gq����	��S�Q:Ԥ���3�RۆT�Pm��Z%���$b҂!�je��	1C\#�+�Q�[���q��
��2Xh��T�����PI�B��N@O+Q;RB%��AO�4wm5n���k+ؤ�x�zZ���ǚ�����V��=s�P+��2V,.��b�5d=�����${j��V:�k��P�J<�0�5Ě*�',yZ���l��:�.��<�kvhR#9�{��Ζ'��`q	)�@���X����Š������J�+ۦ$��hw&�j�C��5�K���V:}؞ގ���ˏ������e;ϯo/���n��y���e��u>~�G��w����Zǰ+Y��a��B��c��w�J}e�F&����=�v�ߖY!q     