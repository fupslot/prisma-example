export const sites = [
  {
    display_name: "demo",
    alias: "demo",
    users: {
      create: {
        username: "john.doe",
        email: "john.doe@demo.net",
        first_name: "john",
        last_name: "doe",
      },
    },
    clients: {
      create: {
        client_id: "id0",
        client_secret: "secrret0",
        callback: "http://example.example.net/oauth/default/callback",
      },
    },
  },
  {
    display_name: "example",
    alias: "example",
    users: {
      create: {
        username: "john.doe",
        email: "john.doe@example.net",
        first_name: "john",
        last_name: "doe",
      },
    },
  },
  {
    display_name: "acme",
    alias: "acme",
    invites: {
      create: {
        code: "acme-01",
        email: "john.doe@acme.com",
        active: true,
        expire_at: new Date(),
      },
    },
  },
];
