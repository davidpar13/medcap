# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Language, type: :model do
  it 'creates an article' do
    Language.create(
      language_name: 'ABC',
      active: true
    )
    expect(Language.count).to eq(1)
  end
end
