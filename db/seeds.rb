#admin seed  
Admin.create(id: 1,name: "Admin",account: "andy",password_digest: Digest::MD5.hexdigest("88888888"))
  
#system seed 
System.create(id: 1,name: "RubyBackend")