# The fuction validate_usr validate a username with regex
def validate_usr(username)
  !!username[/\A[a-z0-9_]{4,16}\z/]
end
