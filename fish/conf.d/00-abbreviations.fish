# See: https://fishshell.com/docs/current/commands.html#abbr

if status --is-interactive
    abbr --add --global bc brew cask
    abbr --add --global be bundle exec
    abbr --add --global bs brew services
    abbr --add --global dc docker-compose
    abbr --add --global dk docker
    abbr --add --global do doctl
    abbr --add --global g git
    abbr --add --global hk heroku
    abbr --add --global k kubectl
    abbr --add --global ls exa
    abbr --add --global n npm
    abbr --add --global ni npm install
    abbr --add --global nr npm run
    abbr --add --global nrm npm rm
    abbr --add --global tf terraform
    abbr --add --global v nvim
    abbr --add --global y yarn
end
