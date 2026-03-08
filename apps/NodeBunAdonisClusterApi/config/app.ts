export default {
  appKey: process.env.APP_KEY ?? "benchmark-secret-key-padded-to-32!",
  http: {
    generateRequestId: false,
    allowMethodSpoofing: false,
    trustProxy: false,
    cookie: {
      domain: "",
      path: "/",
      maxAge: "2h",
      httpOnly: true,
      secure: false,
      sameSite: "lax" as const,
    },
  },
};
