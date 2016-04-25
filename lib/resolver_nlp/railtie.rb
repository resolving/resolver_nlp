module ResolverNlp
  class NlpRailtie < Rails::Railtie
    puts ">>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    initializer "nlp_railtie.configure_rails_initialization" do |app|
      ResolverNlp::Watson::Config.username = app.secrets.resolver_nlp.user
      ResolverNlp::Watson::Config.password = app.secrets.resolver_nlp.password
    end
  end
end
