df_gene <- df_cyclotella1 %>% mutate(gene_family=substr(NAME,1,3)) %>% group_by(gene_family)
df_gene %>% tbl_df

df_avg_len <- df_gene %>% group_by(gene_family) %>% summarise(avg_gene_length = mean(LENGTH))
df_avg_len %>% tbl_df