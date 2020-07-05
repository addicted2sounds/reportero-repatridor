require 'rails_helper'

describe UrlsHandler do
  let(:perform) { EventListener.new.work event }
  let(:event) do
    {
      'type' => 'urls',
      'data' => {
        'email' => 'user@example.com',
        'urls' => [
          'https://google.com'
        ]
      }
    }.to_json
  end

  it 'is working' do
    expect { perform }.to change(ActionMailer::Base.deliveries, :count).by 1
  end
end
