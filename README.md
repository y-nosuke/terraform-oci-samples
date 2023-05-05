# terraform-oci-samples

## 事前準備

```sh
mkdir ~/.oci
openssl genrsa -out ~/.oci/rsa_key.pem 2048
chmod 600 ~/.oci/rsa_key.pem
openssl rsa -pubout -in ~/.oci/rsa_key.pem -out ~/.oci/rsa_key_public.pem
cat ~/.oci/rsa_key_public.pem
```

### .direnv の作成

```sh
direnv edit .

export AWS_ACCESS_KEY_ID=(Access key ID)
export AWS_SECRET_ACCESS_KEY=(Secret access key)
export AWS_DEFAULT_REGION=ap-northeast-1
```

### terraform の初期化

```sh
rm -rf .terraform
terraform init
```

## 実行

```sh
# リソース作成
terraform apply

# リソース削除
terraform destroy
```

## 参考

- [Terraform: OCI Terraform の設定](https://docs.oracle.com/ja-jp/iaas/developer-tutorials/tutorials/tf-provider/01-summary.htm)
- [Terraform Registry - Oracle Cloud Infrastructure Provider](https://registry.terraform.io/providers/oracle/oci/latest/docs)
