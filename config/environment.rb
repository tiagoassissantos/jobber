# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Imobil::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:prev_label]=I18n.t("pagination.prev")
WillPaginate::ViewHelpers.pagination_options[:next_label]=I18n.t("pagination.next")