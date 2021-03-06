require 'spec_helper'

describe 'Tutum' do
  describe 'Node' do
    it 'can list nodes' do

      service_instance = service_instance('tutum_node')

      params = {
        'username' => @username,
        'api_key' => @api_key
      }

      service_instance.test_action('list', params) do
        expect_info message: 'Initializing connection to Tutum'
        expect_info message: 'Requesting list of nodes'
        expect_return
      end
    end

    it "can retrieve a node's information" do

      service_instance = service_instance('tutum_node')

      params = {
        'username' => @username,
        'api_key' => @api_key,
        'node_id' => @node_id
      }

      service_instance.test_action('get', params) do
        expect_info message: 'Initializing connection to Tutum'
        expect_info message: 'Requesting node information'
        expect_return
      end
    end
  end
end
