PGDMP     *    %    
            {            intercom_quartz    14.5 (Debian 14.5-2.pgdg110+2)    15.3 7    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    26632    intercom_quartz    DATABASE     z   CREATE DATABASE intercom_quartz WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE intercom_quartz;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            H           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    26688    qrtz_blob_triggers    TABLE     �   CREATE TABLE public.qrtz_blob_triggers (
    sched_name text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    blob_data bytea
);
 &   DROP TABLE public.qrtz_blob_triggers;
       public         heap    postgres    false    4            �            1259    26700    qrtz_calendars    TABLE     �   CREATE TABLE public.qrtz_calendars (
    sched_name text NOT NULL,
    calendar_name text NOT NULL,
    calendar bytea NOT NULL
);
 "   DROP TABLE public.qrtz_calendars;
       public         heap    postgres    false    4            �            1259    26676    qrtz_cron_triggers    TABLE     �   CREATE TABLE public.qrtz_cron_triggers (
    sched_name text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    cron_expression text NOT NULL,
    time_zone_id text
);
 &   DROP TABLE public.qrtz_cron_triggers;
       public         heap    postgres    false    4            �            1259    26714    qrtz_fired_triggers    TABLE     �  CREATE TABLE public.qrtz_fired_triggers (
    sched_name text NOT NULL,
    entry_id text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    instance_name text NOT NULL,
    fired_time bigint NOT NULL,
    sched_time bigint NOT NULL,
    priority integer NOT NULL,
    state text NOT NULL,
    job_name text,
    job_group text,
    is_nonconcurrent boolean NOT NULL,
    requests_recovery boolean
);
 '   DROP TABLE public.qrtz_fired_triggers;
       public         heap    postgres    false    4            �            1259    26633    qrtz_job_details    TABLE     a  CREATE TABLE public.qrtz_job_details (
    sched_name text NOT NULL,
    job_name text NOT NULL,
    job_group text NOT NULL,
    description text,
    job_class_name text NOT NULL,
    is_durable boolean NOT NULL,
    is_nonconcurrent boolean NOT NULL,
    is_update_data boolean NOT NULL,
    requests_recovery boolean NOT NULL,
    job_data bytea
);
 $   DROP TABLE public.qrtz_job_details;
       public         heap    postgres    false    4            �            1259    26728 
   qrtz_locks    TABLE     ^   CREATE TABLE public.qrtz_locks (
    sched_name text NOT NULL,
    lock_name text NOT NULL
);
    DROP TABLE public.qrtz_locks;
       public         heap    postgres    false    4            �            1259    26707    qrtz_paused_trigger_grps    TABLE     p   CREATE TABLE public.qrtz_paused_trigger_grps (
    sched_name text NOT NULL,
    trigger_group text NOT NULL
);
 ,   DROP TABLE public.qrtz_paused_trigger_grps;
       public         heap    postgres    false    4            �            1259    26721    qrtz_scheduler_state    TABLE     �   CREATE TABLE public.qrtz_scheduler_state (
    sched_name text NOT NULL,
    instance_name text NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
);
 (   DROP TABLE public.qrtz_scheduler_state;
       public         heap    postgres    false    4            �            1259    26652    qrtz_simple_triggers    TABLE     �   CREATE TABLE public.qrtz_simple_triggers (
    sched_name text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
);
 (   DROP TABLE public.qrtz_simple_triggers;
       public         heap    postgres    false    4            �            1259    26664    qrtz_simprop_triggers    TABLE     �  CREATE TABLE public.qrtz_simprop_triggers (
    sched_name text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    str_prop_1 text,
    str_prop_2 text,
    str_prop_3 text,
    int_prop_1 integer,
    int_prop_2 integer,
    long_prop_1 bigint,
    long_prop_2 bigint,
    dec_prop_1 numeric,
    dec_prop_2 numeric,
    bool_prop_1 boolean,
    bool_prop_2 boolean,
    time_zone_id text
);
 )   DROP TABLE public.qrtz_simprop_triggers;
       public         heap    postgres    false    4            �            1259    26640    qrtz_triggers    TABLE     �  CREATE TABLE public.qrtz_triggers (
    sched_name text NOT NULL,
    trigger_name text NOT NULL,
    trigger_group text NOT NULL,
    job_name text NOT NULL,
    job_group text NOT NULL,
    description text,
    next_fire_time bigint,
    prev_fire_time bigint,
    priority integer,
    trigger_state text NOT NULL,
    trigger_type text NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name text,
    misfire_instr smallint,
    job_data bytea
);
 !   DROP TABLE public.qrtz_triggers;
       public         heap    postgres    false    4            <          0    26688    qrtz_blob_triggers 
   TABLE DATA           `   COPY public.qrtz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
    public          postgres    false    214   !O       =          0    26700    qrtz_calendars 
   TABLE DATA           M   COPY public.qrtz_calendars (sched_name, calendar_name, calendar) FROM stdin;
    public          postgres    false    215   >O       ;          0    26676    qrtz_cron_triggers 
   TABLE DATA           t   COPY public.qrtz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
    public          postgres    false    213   [O       ?          0    26714    qrtz_fired_triggers 
   TABLE DATA           �   COPY public.qrtz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_nonconcurrent, requests_recovery) FROM stdin;
    public          postgres    false    217   xO       7          0    26633    qrtz_job_details 
   TABLE DATA           �   COPY public.qrtz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
    public          postgres    false    209   �O       A          0    26728 
   qrtz_locks 
   TABLE DATA           ;   COPY public.qrtz_locks (sched_name, lock_name) FROM stdin;
    public          postgres    false    219   �P       >          0    26707    qrtz_paused_trigger_grps 
   TABLE DATA           M   COPY public.qrtz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
    public          postgres    false    216   9Q       @          0    26721    qrtz_scheduler_state 
   TABLE DATA           n   COPY public.qrtz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
    public          postgres    false    218   VQ       9          0    26652    qrtz_simple_triggers 
   TABLE DATA           �   COPY public.qrtz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
    public          postgres    false    211   �Q       :          0    26664    qrtz_simprop_triggers 
   TABLE DATA           �   COPY public.qrtz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2, time_zone_id) FROM stdin;
    public          postgres    false    212   �R       8          0    26640    qrtz_triggers 
   TABLE DATA           �   COPY public.qrtz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
    public          postgres    false    210   �R       �           2606    26694 *   qrtz_blob_triggers qrtz_blob_triggers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_blob_triggers
    ADD CONSTRAINT qrtz_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 T   ALTER TABLE ONLY public.qrtz_blob_triggers DROP CONSTRAINT qrtz_blob_triggers_pkey;
       public            postgres    false    214    214    214            �           2606    26706 "   qrtz_calendars qrtz_calendars_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.qrtz_calendars
    ADD CONSTRAINT qrtz_calendars_pkey PRIMARY KEY (sched_name, calendar_name);
 L   ALTER TABLE ONLY public.qrtz_calendars DROP CONSTRAINT qrtz_calendars_pkey;
       public            postgres    false    215    215            �           2606    26682 *   qrtz_cron_triggers qrtz_cron_triggers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_cron_triggers
    ADD CONSTRAINT qrtz_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 T   ALTER TABLE ONLY public.qrtz_cron_triggers DROP CONSTRAINT qrtz_cron_triggers_pkey;
       public            postgres    false    213    213    213            �           2606    26720 ,   qrtz_fired_triggers qrtz_fired_triggers_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.qrtz_fired_triggers
    ADD CONSTRAINT qrtz_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id);
 V   ALTER TABLE ONLY public.qrtz_fired_triggers DROP CONSTRAINT qrtz_fired_triggers_pkey;
       public            postgres    false    217    217            �           2606    26639 &   qrtz_job_details qrtz_job_details_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_job_details
    ADD CONSTRAINT qrtz_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group);
 P   ALTER TABLE ONLY public.qrtz_job_details DROP CONSTRAINT qrtz_job_details_pkey;
       public            postgres    false    209    209    209            �           2606    26734    qrtz_locks qrtz_locks_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.qrtz_locks
    ADD CONSTRAINT qrtz_locks_pkey PRIMARY KEY (sched_name, lock_name);
 D   ALTER TABLE ONLY public.qrtz_locks DROP CONSTRAINT qrtz_locks_pkey;
       public            postgres    false    219    219            �           2606    26713 6   qrtz_paused_trigger_grps qrtz_paused_trigger_grps_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_paused_trigger_grps
    ADD CONSTRAINT qrtz_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group);
 `   ALTER TABLE ONLY public.qrtz_paused_trigger_grps DROP CONSTRAINT qrtz_paused_trigger_grps_pkey;
       public            postgres    false    216    216            �           2606    26727 .   qrtz_scheduler_state qrtz_scheduler_state_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_scheduler_state
    ADD CONSTRAINT qrtz_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name);
 X   ALTER TABLE ONLY public.qrtz_scheduler_state DROP CONSTRAINT qrtz_scheduler_state_pkey;
       public            postgres    false    218    218            �           2606    26658 .   qrtz_simple_triggers qrtz_simple_triggers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_simple_triggers
    ADD CONSTRAINT qrtz_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 X   ALTER TABLE ONLY public.qrtz_simple_triggers DROP CONSTRAINT qrtz_simple_triggers_pkey;
       public            postgres    false    211    211    211            �           2606    26670 0   qrtz_simprop_triggers qrtz_simprop_triggers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_simprop_triggers
    ADD CONSTRAINT qrtz_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 Z   ALTER TABLE ONLY public.qrtz_simprop_triggers DROP CONSTRAINT qrtz_simprop_triggers_pkey;
       public            postgres    false    212    212    212            �           2606    26646     qrtz_triggers qrtz_triggers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_triggers
    ADD CONSTRAINT qrtz_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
 J   ALTER TABLE ONLY public.qrtz_triggers DROP CONSTRAINT qrtz_triggers_pkey;
       public            postgres    false    210    210    210            �           1259    26744    idx_qrtz_ft_job_group    INDEX     Z   CREATE INDEX idx_qrtz_ft_job_group ON public.qrtz_fired_triggers USING btree (job_group);
 )   DROP INDEX public.idx_qrtz_ft_job_group;
       public            postgres    false    217            �           1259    26743    idx_qrtz_ft_job_name    INDEX     X   CREATE INDEX idx_qrtz_ft_job_name ON public.qrtz_fired_triggers USING btree (job_name);
 (   DROP INDEX public.idx_qrtz_ft_job_name;
       public            postgres    false    217            �           1259    26745    idx_qrtz_ft_job_req_recovery    INDEX     i   CREATE INDEX idx_qrtz_ft_job_req_recovery ON public.qrtz_fired_triggers USING btree (requests_recovery);
 0   DROP INDEX public.idx_qrtz_ft_job_req_recovery;
       public            postgres    false    217            �           1259    26740    idx_qrtz_ft_trig_group    INDEX     _   CREATE INDEX idx_qrtz_ft_trig_group ON public.qrtz_fired_triggers USING btree (trigger_group);
 *   DROP INDEX public.idx_qrtz_ft_trig_group;
       public            postgres    false    217            �           1259    26742    idx_qrtz_ft_trig_inst_name    INDEX     c   CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.qrtz_fired_triggers USING btree (instance_name);
 .   DROP INDEX public.idx_qrtz_ft_trig_inst_name;
       public            postgres    false    217            �           1259    26739    idx_qrtz_ft_trig_name    INDEX     ]   CREATE INDEX idx_qrtz_ft_trig_name ON public.qrtz_fired_triggers USING btree (trigger_name);
 )   DROP INDEX public.idx_qrtz_ft_trig_name;
       public            postgres    false    217            �           1259    26741    idx_qrtz_ft_trig_nm_gp    INDEX     y   CREATE INDEX idx_qrtz_ft_trig_nm_gp ON public.qrtz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);
 *   DROP INDEX public.idx_qrtz_ft_trig_nm_gp;
       public            postgres    false    217    217    217            �           1259    26735    idx_qrtz_j_req_recovery    INDEX     a   CREATE INDEX idx_qrtz_j_req_recovery ON public.qrtz_job_details USING btree (requests_recovery);
 +   DROP INDEX public.idx_qrtz_j_req_recovery;
       public            postgres    false    209            �           1259    26736    idx_qrtz_t_next_fire_time    INDEX     ]   CREATE INDEX idx_qrtz_t_next_fire_time ON public.qrtz_triggers USING btree (next_fire_time);
 -   DROP INDEX public.idx_qrtz_t_next_fire_time;
       public            postgres    false    210            �           1259    26738    idx_qrtz_t_nft_st    INDEX     d   CREATE INDEX idx_qrtz_t_nft_st ON public.qrtz_triggers USING btree (next_fire_time, trigger_state);
 %   DROP INDEX public.idx_qrtz_t_nft_st;
       public            postgres    false    210    210            �           1259    26737    idx_qrtz_t_state    INDEX     S   CREATE INDEX idx_qrtz_t_state ON public.qrtz_triggers USING btree (trigger_state);
 $   DROP INDEX public.idx_qrtz_t_state;
       public            postgres    false    210            �           2606    26695 P   qrtz_blob_triggers qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.qrtz_blob_triggers
    ADD CONSTRAINT qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.qrtz_blob_triggers DROP CONSTRAINT qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey;
       public          postgres    false    214    214    214    3213    210    210    210            �           2606    26683 P   qrtz_cron_triggers qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.qrtz_cron_triggers
    ADD CONSTRAINT qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.qrtz_cron_triggers DROP CONSTRAINT qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey;
       public          postgres    false    210    210    210    213    3213    213    213            �           2606    26659 T   qrtz_simple_triggers qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.qrtz_simple_triggers
    ADD CONSTRAINT qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.qrtz_simple_triggers DROP CONSTRAINT qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey;
       public          postgres    false    210    211    211    211    3213    210    210            �           2606    26671 U   qrtz_simprop_triggers qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.qrtz_simprop_triggers
    ADD CONSTRAINT qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group) ON DELETE CASCADE;
    ALTER TABLE ONLY public.qrtz_simprop_triggers DROP CONSTRAINT qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey;
       public          postgres    false    210    210    3213    212    212    210    212            �           2606    26647 >   qrtz_triggers qrtz_triggers_sched_name_job_name_job_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qrtz_triggers
    ADD CONSTRAINT qrtz_triggers_sched_name_job_name_job_group_fkey FOREIGN KEY (sched_name, job_name, job_group) REFERENCES public.qrtz_job_details(sched_name, job_name, job_group);
 h   ALTER TABLE ONLY public.qrtz_triggers DROP CONSTRAINT qrtz_triggers_sched_name_job_name_job_group_fkey;
       public          postgres    false    210    210    209    209    209    210    3208            <      x������ � �      =      x������ � �      ;      x������ � �      ?      x������ � �      7   N  x�ݗ�J�@E��W�6d�Kf�u�B�J�e@�dZm"i��;Պ��!�0��g3g���L�����w罟�nlg�$~���i�q�������xL�Ur�ȖO�������Ɛ���1��٘�������0=�����n�-&��W�nع�:q M8�vkŚ�Υ'�@* mHT�(�Kʕ����.�.�bĸ.]�����$8!p���)ԣ)\\��lp������G 7gpUp�C��38�o/з�+T��/qP�C��A%����{�s��9P��7��z2V��;�@� ����±��k�j��Ɣ��h�g�{���mu���d���      A   6   x�,M,*�
N�HM)�I-�qq�wtvv�
D�	�tww�I��qqq ���      >      x������ � �      @   C   x�,M,*�
N�HM)�I-�����w�	qru�43�02��43230143542�4750������ +c      9   �   x����j�0�s�.�dK�c�]w	i`�6�.����R����'�/�/�t����9}���2ߺqڷ�RO,�%u�e�.�8-�:������t�����8���R� �ŋZ"���F����E.^���Tg�٩dv�����xI�q��8��$��=��BH��»qA|�&2�>G���ϭ~ad|$�[Έ��W����SbA�O~�ʐ���$C�K�yrG�7�9?���<n �G~=3�~,�kBΟs{7��yw�>���<n#�      :      x������ � �      8   �  x����j[A��������f�좔@R�&��HbH�M���νi<�1c�}��s䋗��?��������iu�}�ohC�ų��������z{����/�����U��P�ë�I嚹�$�\�����~}>�yv�uuy��Ƿ/Y<R<�/���_�d3hχ����*�9���W{j%uM�x�.�&���\��V�ݥW{.V+��-���ʹF�<;%௕Ay�W� �|='Jfn�j��0�y4<�����l�hyc'1%D��A�FO�==��Z�DS�@zG2�N6�lr(��2pg��
�8�(C��Gtgo�JA�`߳+1�,�vG2�y�t����8tވ��R9���j��J+���BO\+]��虤	�梕az�Zq��^;���G`���md�_]�2�����ض�s�Nne��.�4w��@o�Wj�IOy
�ˠ�� Ъ{o|�"JSa����+s�ƴ���q�檬R�Ԡ�F��;�n�V\���V�1aA���hd�ߜ�������w��ԩx��=��0�yx���M0��ju��X�_#��x᧌��.R6�H���ݏ2�o_w�8���[K\f��Q�E��0?Y���M��q�fלYs�/�F����_-��p3��Jq>��˰�9=��_h���Y4�"~���?���B��O�X�ם�~ne�_Y������B"��s+���⏼;�����?]�a}�����z��?�b     