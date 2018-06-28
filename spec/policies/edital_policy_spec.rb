# frozen_string_literal: true
# require 'rails_helper'

# RSpec.describe EditalPolicy do

#   let(:usuario) { create(:usuario,) }

#   subject { EditalPolicy }

#   context "policy_scope" do
#     subject { Pundit.policy_scope(user, Edital) }

#     let!(:edital) { create :edital }
#     let!(:aluno) { create :aluno }
#     let!(:visitante) { create :visitante }
#     let!(:professor) { create :professor }
#     let!(:assessor) { create :assessor }
#     let!(:orientador) { create :orientador }
#     let!(:coordenador) { create :coordenador }
#     let!(:avaliador) { create :avaliador }

#     it 'is empty for anonymous users' do
#       expect(Pundit.policy_scope(nil, Edital)).to be_empty
#     end

#     it 'is empty for anonymous users' do
#       sign_in!(visitante)
#       expect(Pundit.policy_scope(nil, Edital)).to be_empty
#     end

#     it 'includes editals a user is allowed to visitante' do
#       sign_in(user, :viewer, edital)
#       expect(subject).to include(edital)
#     end

#     it "doesn't include editais a user is not allowed to view" do
#       expect(subject).to be_empty
#     end

#     it 'return all editais for admins ' do
#       user.admin = true
#       expect(subject).to include(project)
#     end
#   end

#   ## Replace

#   context "permissions" do

#     subject { EditalPolicy.new(user, project) }

#     let(:user) { create :user }
#     let(:project) { create :project }

#     context 'for anonymous users' do
#       let(:user) { nil }

#       it { should_not permit_action :show }
#       it { should_not permit_action :update }
#     end

#     context 'for viewers of the project' do

#       before { assign_role!(user, :viewer, project) }

#       it { should permit_action :show }
#       it { should_not permit_action :update }
#     end

#     context 'for editors of the project' do

#       before { assign_role!(user, :editor, project) }

#       it { should permit_action :show }
#       it { should_not permit_action :update }
#     end

#     context 'for managers of the project' do

#       before { assign_role!(user, :manager, project) }

#       it { should permit_action :show }
#       it { should permit_action :update }

#     end

#     context 'for managers of the other projects' do
#       before do
#         assign_role!(user, :manager, create(:project))
#       end

#       it { should_not permit_action :show }
#       it { should_not permit_action :update }
#     end

#     context 'for administrators' do
#       let(:user) { create :user, :admin }

#       it { should permit_action :show }
#       it { should permit_action :update }
#     end

#   end

# end
