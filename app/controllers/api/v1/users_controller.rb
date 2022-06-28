# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def show
        user = {
          "id": 'dfdadc39-7335-404d-af66-c77cf13a15f8',
          "enabled": true,
          "display_name": 'Euan Garden',
          "email": 'euang@acmecorp.com',
          "picture": 'https://github.com/aserto-demo/contoso-ad-sample/raw/main/UserImages/Euan%20Garden.jpg',
          "identities": {
            "+1-804-555-3383": {
              "kind": 5
            },
            "CiRkZmRhZGMzOS03MzM1LTQwNGQtYWY2Ni1jNzdjZjEzYTE1ZjgSBWxvY2Fs": {
              "kind": 1,
              "provider": 'local',
              "verified": true
            },
            "euang": {
              "kind": 3
            },
            "euang@acmecorp.com": {
              "kind": 2,
              "provider": 'local',
              "verified": true
            }
          },
          "attributes": {
            "properties": {
              "department": 'Sales Engagement Management',
              "manager": '2bfaa552-d9a5-41e9-a6c3-5be62b4433c8',
              "phone": '+1-804-555-3383',
              "title": 'Salesperson'
            },
            "roles": %w[
              user
              acmecorp
              sales-engagement-management
              viewer
            ]
          },
          "metadata": {
            "created_at": {
              "seconds": 1_608_684_472,
              "nanos": 307_000_000
            },
            "updated_at": {
              "seconds": 1_613_079_578,
              "nanos": 9_000_000
            }
          }
        }
        render json: { success: true, data: user }
      end

      def index
        users = [
          {
            "id": 'dfdadc39-7335-404d-af66-c77cf13a15f8',
            "enabled": true,
            "display_name": 'Euan Garden',
            "email": 'euang@acmecorp.com',
            "picture": 'https://github.com/aserto-demo/contoso-ad-sample/raw/main/UserImages/Euan%20Garden.jpg',
            "identities": {
              "+1-804-555-3383": {
                "kind": 5
              },
              "CiRkZmRhZGMzOS03MzM1LTQwNGQtYWY2Ni1jNzdjZjEzYTE1ZjgSBWxvY2Fs": {
                "kind": 1,
                "provider": 'local',
                "verified": true
              },
              "euang": {
                "kind": 3
              },
              "euang@acmecorp.com": {
                "kind": 2,
                "provider": 'local',
                "verified": true
              }
            },
            "attributes": {
              "properties": {
                "department": 'Sales Engagement Management',
                "manager": '2bfaa552-d9a5-41e9-a6c3-5be62b4433c8',
                "phone": '+1-804-555-3383',
                "title": 'Salesperson'
              },
              "roles": %w[
                user
                acmecorp
                sales-engagement-management
                viewer
              ]
            },
            "metadata": {
              "created_at": {
                "seconds": 1_608_684_472,
                "nanos": 307_000_000
              },
              "updated_at": {
                "seconds": 1_613_079_578,
                "nanos": 9_000_000
              }
            }
          },
          {
            "id": '67b42b6c-6bd8-40e2-a622-fe69eacd3d47',
            "enabled": true,
            "display_name": 'Chris Johnson [SALES]',
            "email": 'chrisjohns@acmecorp.com',
            "picture": 'https://github.com/aserto-demo/contoso-ad-sample/raw/main/UserImages/Chris%20Johnson%20%5BSALES%5D.jpg',
            "identities": {
              "+1-206-555-9004": {
                "kind": 5
              },
              "CiQ2N2I0MmI2Yy02YmQ4LTQwZTItYTYyMi1mZTY5ZWFjZDNkNDcSBWxvY2Fs": {
                "kind": 1,
                "provider": 'local',
                "verified": true
              },
              "chrisjohns": {
                "kind": 3
              },
              "chrisjohns@acmecorp.com": {
                "kind": 2,
                "provider": 'local',
                "verified": true
              }
            },
            "attributes": {
              "properties": {
                "department": 'Sales Engagement Management',
                "manager": '2bfaa552-d9a5-41e9-a6c3-5be62b4433c8',
                "phone": '+1-206-555-9004',
                "title": 'Salesperson'
              },
              "roles": %w[
                user
                acmecorp
                sales-engagement-management
                viewer
              ]
            },
            "metadata": {
              "created_at": {
                "seconds": 1_608_684_556,
                "nanos": 254_000_000
              },
              "updated_at": {
                "seconds": 1_608_684_556,
                "nanos": 254_000_000
              }
            }
          }
        ]
        render json: { success: true, data: users }
      end

      def create
        render json: { success: true }
      end

      def update
        render json: { success: true }
      end

      def destroy
        render json: { success: true }
      end
    end
  end
end
