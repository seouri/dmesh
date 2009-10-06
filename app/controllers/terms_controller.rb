class TermsController < ApplicationController
  auto_complete_for :term, :string, :limit => 20
end
