# VCN
vcn_cidr_block   = "192.168.100.0/24"
vcn_display_name = "Qiita-VCN"
vcn_dns_label    = "QiitaVCN"

# internet gateway
internet_gateway_display_name = "QiitaIGW"

# route table
route_table_display_name = "Qiita_RT_Web"

# security list web
# sl_egress_destination_web = "192.168.100.0/24"
sl_egress_destination_web = "0.0.0.0/0"
sl_egress_protocol_web    = "6"
# sl_ingress_source_web            = "x.x.x.x/32"
sl_ingress_source_web            = "0.0.0.0/0"
sl_ingress_protocol_web          = "6"
sl_ingress_tcp_dest_port_max_web = "22"
sl_ingress_tcp_dest_port_min_web = "22"
sl_display_name_web              = "Qiita_SL_Web"

# security list db
sl_egress_destination_db         = "192.168.100.0/24"
sl_egress_protocol_db            = "6"
sl_ingress_source_db             = "192.168.100.0/24"
sl_ingress_protocol_db           = "6"
sl_ingress_tcp_dest_port_max_db1 = "22"
sl_ingress_tcp_dest_port_min_db1 = "22"
sl_ingress_tcp_dest_port_max_db2 = "1521"
sl_ingress_tcp_dest_port_min_db2 = "1521"
sl_display_name_db               = "Qiita_SL_DB"

# subnet web
web_subnet_cidr_block                 = "192.168.100.32/27"
web_subnet_display_name               = "Qiita_Subnet_Web"
web_subnet_dns_label                  = "qiitasubnetweb"
web_subnet_prohibit_public_ip_on_vnic = "false"

# subnet db
db_subnet_cidr_block                 = "192.168.100.0/27"
db_subnet_display_name               = "Qiita_Subnet_DB"
db_subnet_dns_label                  = "qiitasubnetdb"
db_subnet_prohibit_public_ip_on_vnic = "true"
