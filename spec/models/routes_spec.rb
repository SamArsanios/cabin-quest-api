require 'rails_helper'
describe 'Routes', type: :routing do
  describe 'cabinsController' do
    it 'routes get cabins to index action' do
      expect(get: '/api/v1/cabins').to route_to(
        controller: 'api/v1/cabins',
        action: 'index'
      )
    end

    it 'routes post to cabins create action' do
      expect(post: '/api/v1/cabins').to route_to(
        controller: 'api/v1/cabins',
        action: 'create'
      )
    end

    it 'route put to cabins update with id' do
      expect(put: '/api/v1/cabins/:id').to route_to(
        controller: 'api/v1/cabins',
        action: 'update',
        id: ':id'
      )
    end

    it 'routes get with id to cabins show action' do
      expect(get: '/api/v1/cabins/:id').to route_to(
        controller: 'api/v1/cabins',
        action: 'show',
        id: ':id'
      )
    end

    it 'routes delete request with id to cabins delete action' do
      expect(DELETE: '/api/v1/cabins/:id').to route_to(
        controller: 'api/v1/cabins',
        action: 'destroy',
        id: ':id'
      )
    end
  end

  describe 'usersController' do
    it 'routes get request to users index action' do
      expect(get: '/api/v1/users/').to route_to(
        controller: 'api/v1/users',
        action: 'index'
      )
    end

    it 'routes post request to users create action' do
      expect(post: '/api/v1/users/').to route_to(
        controller: 'api/v1/users',
        action: 'create'
      )
    end

    it 'routes get request with id to users show action' do
      expect(get: '/api/v1/users/:id').to route_to(
        controller: 'api/v1/users',
        action: 'show',
        id: ':id'
      )
    end

    it 'routes put request with id to users update action' do
      expect(put: '/api/v1/users/:id').to route_to(
        controller: 'api/v1/users',
        action: 'update',
        id: ':id'
      )
    end

    it 'routes delete request with id to users destroy action' do
      expect(DELETE: '/api/v1/users/:id').to route_to(
        controller: 'api/v1/users',
        action: 'destroy',
        id: ':id'
      )
    end
  end
end
