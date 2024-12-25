# test-tfcloud
test tfcloud

1. Terraform Cloud (test-tfcloud-workspaceワークスペース) で apply する

2. Terraform Cloud の stateファイルをプルする
```bash
$ terraform login
  Enter a value: yes
  Enter a value: [Tokenを取得して入力]

$ terraform init
$ terraform plan
# このとき差分が表示されないこと

$ terraform state pull > tfc.tfstate
```

3. Terraform Cloud の stateファイルを指定のGCSバケットにプッシュする

```bash
# ./hoge で以下を実施

$ terraform state push
```
