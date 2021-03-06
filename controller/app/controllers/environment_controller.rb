class EnvironmentController < BaseController

  skip_before_filter :authenticate_user!

  # GET /environment 
  def show
    environment = {}
    environment['domain_suffix'] = Rails.application.config.openshift[:domain_suffix] 
    render_success(:ok, "environment", environment, "Showing broker environment")
  end
  
  def set_log_tag
    @log_tag = get_log_tag_prepend + "ENVIRONMENT"
  end
end
