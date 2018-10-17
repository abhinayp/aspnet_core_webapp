for f in *-install.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H   || break # if needed
done
