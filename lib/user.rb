require_relative './client.rb'
module Mints
  class User
    attr_reader :client
    def initialize(host, api_key, session_token = nil)
      @client = Mints::Client.new(host, api_key, 'user', session_token)
    end

    def login(email, password)
      data = {
        email: email,
        password: password,
      }
      response = @client.raw("post", "/users/login", nil, data, '/api/v1')
      if response.key? "api_token"
        @client.session_token = response["api_token"]
      end
      return response
    end
    ######################################### CRM #########################################
    ### Contacts ###
    def get_contacts(options = nil)
      return @client.get__crm__contacts(options)
    end

    def get_contact(id, options = nil)
      return @client.get__crm__contacts(id, options)
    end

    def create_contact(data, options = nil)
      return @client.create__crm__contacts(data, options)
    end

    def update_contact(id, data, options = nil)
      return @client.update__crm__contacts(id, data, options)
    end
    ### Companies ###
    def get_companies(options = nil)
      return @client.get__crm__companies(options)
    end

    def get_company(id, options = nil)
      return @client.get__crm__companies(id, options)
    end

    def create_company(data, options = nil)
      return @client.create__crm__companies(data, options)
    end

    def update_company(id, data, options = nil)
      return @client.update__crm__companies(id, data, options)
    end

    ### Deals ###
    def get_deals(options = nil)
      return @client.get__crm__deals(options)
    end

    def get_deal(id, options = nil)
      return @client.get__crm__deals(id, options)
    end

    def create_deal(data, options = nil)
      return @client.create__crm__deals(data, options)
    end

    def update_deal(id, data, options = nil)
      return @client.update__crm__deals(id, data, options)
    end

    ######################################### Content #########################################
    ### Stories ###
    def get_stories(options = nil)
      return @client.get__content__stories(options)
    end

    def get_story(id, options = nil)
      return @client.get__content__stories(id, options)
    end

    def create_story(data, options = nil)
      return @client.create__content__stories(data, options)
    end

    def update_story(id, data, options = nil)
      return @client.update__content__stories(id, data, options)
    end

    ### Stories templates ###
    def get_story_templates(options = nil)
      return @client.get__content__story_templates(options)
    end

    def get_story_template(id, options = nil)
      return @client.get__content__story_templates(id, options)
    end

    def create_story_template(data, options = nil)
      return @client.create__content__story_templates(data, options)
    end

    def update_story_template(id, data, options = nil)
      return @client.update__content__story_templates(id, data, options)
    end

    ### Content instances ###
    def get_content_instances(options = nil)
      return @client.get__content__instances(options)
    end

    def get_content_instance(id, options = nil)
      return @client.get__content__instances(id, options)
    end

    def create_content_instance(data, options = nil)
      return @client.create__content__instances(data, options)
    end

    def update_content_instance(id, data, options = nil)
      return @client.update__content__instances(id, data, options)
    end

    ### Content pages ###
    def get_content_pages(options = nil)
      return @client.get__content__pages(options)
    end

    def get_content_page(id, options = nil)
      return @client.get__content__pages(id, options)
    end

    def create_content_page(data, options = nil)
      return @client.create__content__pages(data, options)
    end

    def update_content_page(id, data, options = nil)
      return @client.update__content__pages(id, data, options)
    end

    ### Content templates ###
    def get_content_templates(options = nil)
      return @client.get__content__templates(options)
    end

    def get_content_page(id, options = nil)
      return @client.get__content__templates(id, options)
    end

    def create_content_page(data, options = nil)
      return @client.create__content__templates(data, options)
    end

    def update_content_page(id, data, options = nil)
      return @client.update__content__templates(id, data, options)
    end

    ######################################### Ecommerce #########################################
    ### Products ###
    def get_products(options = nil)
      return @client.get__ecommerce__products(options)
    end

    def get_product(id, options = nil)
      return @client.get__ecommerce__products(id, options)
    end

    def create_product(data, options = nil)
      return @client.create__ecommerce__products(data, options)
    end

    def update_product(id, data, options = nil)
      return @client.update__ecommerce__products(id, data, options)
    end

    ### SKUs ###
    def get_skus(options = nil)
      return @client.get__ecommerce__skus(options)
    end

    def get_sku(id, options = nil)
      return @client.get__ecommerce__skus(id, options)
    end

    def create_sku(data, options = nil)
      return @client.create__ecommerce__skus(data, options)
    end

    def update_sku(id, data, options = nil)
      return @client.update__ecommerce__skus(id, data, options)
    end

    ### Prices ###
    def get_prices(options = nil)
      return @client.get__ecommerce__prices(options)
    end

    def get_price(id, options = nil)
      return @client.get__ecommerce__prices(id, options)
    end

    def create_price(data, options = nil)
      return @client.create__ecommerce__prices(data, options)
    end

    def update_price(id, data, options = nil)
      return @client.update__ecommerce__prices(id, data, options)
    end

    ### Price lists ###
    def get_price_lists(options = nil)
      return @client.get__ecommerce__price_lists(options)
    end

    def get_price_list(id, options = nil)
      return @client.get__ecommerce__price_lists(id, options)
    end

    def create_price_list(data, options = nil)
      return @client.create__ecommerce__price_lists(data, options)
    end

    def update_price_list(id, data, options = nil)
      return @client.update__ecommerce__price_lists(id, data, options)
    end

    ### Product brands ###
    def get_product_brands(options = nil)
      return @client.get__ecommerce__product_brands(options)
    end

    def get_prodict_brand(id, options = nil)
      return @client.get__ecommerce__product_brands(id, options)
    end

    def create_prodict_brand(data, options = nil)
      return @client.create__ecommerce__product_brands(data, options)
    end

    def update_product_brand(id, data, options = nil)
      return @client.update__ecommerce__product_brands(id, data, options)
    end

    ### Product types ###
    def get_product_types(options = nil)
      return @client.get__ecommerce__product_types(options)
    end

    def get_prodict_type(id, options = nil)
      return @client.get__ecommerce__product_types(id, options)
    end

    def create_prodict_type(data, options = nil)
      return @client.create__ecommerce__product_types(data, options)
    end

    def update_product_type(id, data, options = nil)
      return @client.update__ecommerce__product_types(id, data, options)
    end

    ### Product templates ###
    def get_product_templates(options = nil)
      return @client.get__ecommerce__product_templates(options)
    end

    def get_prodict_template(id, options = nil)
      return @client.get__ecommerce__product_templates(id, options)
    end

    def create_prodict_template(data, options = nil)
      return @client.create__ecommerce__product_templates(data, options)
    end

    def update_product_template(id, data, options = nil)
      return @client.update__ecommerce__product_templates(id, data, options)
    end


    ### Locations ###
    def get_locations(options = nil)
      return @client.get__ecommerce__locations(options)
    end

    def get_location(id, options = nil)
      return @client.get__ecommerce__locations(id, options)
    end

    def create_location(data, options = nil)
      return @client.create__ecommerce__locations(data, options)
    end

    def update_location(id, data, options = nil)
      return @client.update__ecommerce__locations(id, data, options)
    end
  end
end
