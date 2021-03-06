require_relative '../../../spec_helper'

describe Web::Views::Users::Index do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/index.html.erb') }
  let(:view)      { Web::Views::Users::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
