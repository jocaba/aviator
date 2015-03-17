module Aviator

  define_request :add_tenant_access, inherit: [:openstack, :common, :v3, :public, :base] do

    meta :service, :compute

    link 'documentation',
         'http://developer.openstack.org/api-ref-compute-v3.html#v3flavoraccess'

    param :id, required: true


    def headers
      super
    end


    def http_method
      :post
    end


    def url
      "#{ base_url }/flavors/#{ params[:id] }/action"
    end

  end

end
