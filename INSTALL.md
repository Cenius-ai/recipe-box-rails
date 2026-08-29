# Installation

## 1. Prerequisites

- **Ruby** 3.3.11  
  Verify with `ruby -v`. If you don't have the correct version, consider using a version manager like `rbenv` or `rvm` and install from the `.ruby-version` file.
- **Bundler**  
  Install with `gem install bundler`.
- **Docker** (optional)  
  If you prefer to run the app in a container, see the Docker section below.

## 2. Get the Code

Clone the repository or download the source code to your local machine, then navigate to the project root directory.

## 3. Install Dependencies

Run `bundle install` to install all required gems:

```bash
bundle install
```

## 4. Environment Variables

No environment variables need to be set for development. Copy `.env.example` to `.env` if you plan to add any later.

## 5. Database Setup

The application uses SQLite. Create and seed the database with:

```bash
ruby bin/rails db:migrate
ruby bin/rails db:seed
```

The `db:seed` command will insert approximately 10 sample recipes.

## 6. Start the Application

Launch the development server with:

```bash
bin/rails server
```

The app will be available at [http://localhost:3000](http://localhost:3000).

## 7. Running Tests

Execute the test suite with:

```bash
bin/rails test
```

## 8. Building for Production

To precompile assets:

```bash
bin/rails assets:precompile
```

To build and run the Docker image for production, use the provided `Dockerfile`:

```bash
docker build -t recipe-box .
docker run -d -p 3000:3000 -e RAILS_MASTER_KEY=<value_from_config/master.key> recipe-box
```

Make sure to set the `RAILS_MASTER_KEY` environment variable from `config/master.key`.

## 9. Troubleshooting

- **Wrong Ruby version**  
  Ensure you are using Ruby 3.3.11. Run `ruby -v` to check. Use a version manager to switch if needed.
- **`bundle install` fails**  
  Make sure Bundler is installed (`gem install bundler`) and that your Gemfile.lock is compatible with your platform. Try `bundle lock --add-platform x86_64-linux` if on Linux.
- **Database errors**  
  If you see "no such table" errors, you may need to run migrations again: `ruby bin/rails db:migrate`.