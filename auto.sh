reseller_list=$(whmapi1 listresellers | grep -oP '(?<=reseller:).*' | tr -d '[:space:]' | tr -d '-')
echo "Danh sách tài khoản reseller: $reseller_list"
