# Calendly Clone - Full-Stack Scheduling Platform

A complete Calendly clone built with Next.js 14, TypeScript, Prisma, and PostgreSQL. This production-ready application includes all the core features of Calendly with a modern, scalable architecture.

## 🚀 Features

### Core Features
- **Landing Page** - Beautiful, responsive homepage with hero section
- **User Authentication** - Google OAuth integration
- **Event Management** - Create and manage different event types
- **Booking System** - Real-time availability checking
- **Calendar Integration** - Google Calendar and Outlook support
- **Multi-tenant Support** - Organizations and team management
- **Subscription System** - Stripe integration with tiered pricing

### Business Model
- **Free Plan** - Always free for personal use
- **Standard Plan** - $10/seat/month for professionals
- **Teams Plan** - $16/seat/month for growing businesses
- **Enterprise Plan** - Custom pricing for large companies

### Technical Features
- **Modern Stack** - Next.js 14, TypeScript, Tailwind CSS
- **Database** - PostgreSQL with Prisma ORM
- **Authentication** - NextAuth.js with Google OAuth
- **Payments** - Stripe integration for subscriptions
- **Real-time** - WebSocket support for live updates
- **Scalable** - Built for enterprise-scale deployment

## 🛠️ Tech Stack

- **Frontend**: Next.js 14, React, TypeScript, Tailwind CSS
- **Backend**: Next.js API Routes, Prisma ORM
- **Database**: PostgreSQL
- **Authentication**: NextAuth.js
- **Payments**: Stripe
- **Deployment**: Vercel
- **Styling**: Tailwind CSS

## 📦 Installation

### Prerequisites
- Node.js 18+
- PostgreSQL
- Stripe account
- Google OAuth credentials

### Local Development

1. **Clone the repository**
```bash
git clone <repository-url>
cd calendly-clone
```

2. **Install dependencies**
```bash
npm install
```

3. **Set up environment variables**
```bash
cp .env.local.example .env.local
```

4. **Configure your environment variables**
```env
# Database
DATABASE_URL="postgresql://username:password@localhost:5432/calendly_clone"

# NextAuth
NEXTAUTH_URL="http://localhost:8000"
NEXTAUTH_SECRET="your-secret-key"

# Google OAuth
GOOGLE_CLIENT_ID="your-google-client-id"
GOOGLE_CLIENT_SECRET="your-google-client-secret"

# Stripe
STRIPE_PUBLISHABLE_KEY="pk_test_your_stripe_publishable_key"
STRIPE_SECRET_KEY="sk_test_your_stripe_secret_key"
STRIPE_WEBHOOK_SECRET="whsec_your_webhook_secret"
```

5. **Set up the database**
```bash
npx prisma generate
npx prisma db push
```

6. **Start the development server**
```bash
npm run dev
```

The application will be available at `http://localhost:8000`

## 🚀 Deployment

### Vercel Deployment

1. **Install Vercel CLI**
```bash
npm i -g vercel
```

2. **Deploy to Vercel**
```bash
vercel --prod
```

3. **Set up environment variables in Vercel dashboard**
- Go to your project settings in Vercel
- Add all environment variables from `.env.local`

### Database Setup

1. **Create a PostgreSQL database**
   - Use Supabase, PlanetScale, or any PostgreSQL provider
   - Update `DATABASE_URL` in environment variables

2. **Run database migrations**
```bash
npx prisma migrate deploy
```

## 📁 Project Structure

```
calendly-clone/
├── src/
│   ├── app/
│   │   ├── (auth)/          # Authentication pages
│   │   ├── (dashboard)/     # User dashboard
│   │   ├── (landing)/       # Landing pages
│   │   ├── api/             # API routes
│   │   ├── globals.css      # Global styles
│   │   └── layout.tsx       # Root layout
│   ├── components/          # Reusable components
│   ├── lib/                 # Utility functions
│   ├── types/               # TypeScript types
│   └── utils/               # Helper functions
├── prisma/
│   └── schema.prisma        # Database schema
├── public/                  # Static assets
├── .env.local               # Environment variables
├── vercel.json              # Vercel configuration
└── README.md               # This file
```

## 🔧 API Routes

### Authentication
- `POST /api/auth/[...nextauth]` - NextAuth.js endpoints

### Events
- `GET /api/events` - Get all events
- `POST /api/events` - Create new event
- `GET /api/events/[id]` - Get specific event
- `PUT /api/events/[id]` - Update event
- `DELETE /api/events/[id]` - Delete event

### Bookings
- `GET /api/bookings` - Get all bookings
- `POST /api/bookings` - Create new booking
- `GET /api/bookings/[id]` - Get specific booking
- `PUT /api/bookings/[id]` - Update booking
- `DELETE /api/bookings/[id]` - Cancel booking

### Subscriptions
- `POST /api/subscriptions/create` - Create subscription
- `POST /api/subscriptions/webhook` - Stripe webhook
- `GET /api/subscriptions/status` - Check subscription status

## 🎯 Usage

### For Users
1. **Sign up** with Google or email
2. **Create events** with custom availability
3. **Share booking links** with clients
4. **Manage bookings** from the dashboard

### For Organizations
1. **Create organization** account
2. **Invite team members**
3. **Set up team events**
4. **Manage billing** and subscriptions

## 💳 Subscription Plans

| Plan | Price | Features |
|------|-------|----------|
| **Free** | $0 | 1 event type, unlimited meetings |
| **Standard** | $10/month | 6 event types, group events, workflows |
| **Teams** | $16/month | Unlimited events, team features, admin tools |
| **Enterprise** | Custom | Advanced security, SSO, dedicated support |

## 🔐 Security Features

- **OAuth 2.0** authentication
- **JWT tokens** for session management
- **HTTPS** enforced in production
- **Input validation** and sanitization
- **Rate limiting** on API endpoints
- **CORS** configuration
- **SQL injection** prevention with Prisma

## 📊 Performance Optimizations

- **Static generation** for landing pages
- **ISR** (Incremental Static Regeneration)
- **Image optimization** with Next.js Image
- **Database indexing** for fast queries
- **CDN** integration for static assets
- **Caching** strategies for API responses

## 🧪 Testing

```bash
# Run tests
npm test

# Run tests in watch mode
npm run test:watch

# Run e2e tests
npm run test:e2e
```

## 📈 Monitoring

- **Vercel Analytics** - Performance monitoring
- **Error tracking** - Sentry integration ready
- **Database monitoring** - Prisma metrics
- **User analytics** - Google Analytics ready

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: [docs.calendlyclone.com](https://docs.calendlyclone.com)
- **Issues**: [GitHub Issues](https://github.com/your-org/calendly-clone/issues)
- **Email**: support@calendlyclone.com

## 🚀 Next Steps

1. **Set up production database**
2. **Configure Stripe webhooks**
3. **Add Google Calendar integration**
4. **Set up email notifications**
5. **Add team collaboration features**
6. **Implement advanced analytics**
7. **Add mobile app support**

---

Built with ❤️ by the Calendly Clone team
