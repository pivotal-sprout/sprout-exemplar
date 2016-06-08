# sprout-exemplar cookbook

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-exemplar.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-exemplar)

Template repo for creating standalone cookbooks

## Usage

### Prerequisites

- [system ruby](.ruby-version)

### Quickstart

```
./sprout
```

## Cookbook Usage

### Attributes

*NOTE:* All preferences are namespaced under `sprout => exemplar` they include:

* `path` &mdash; The path to the file that exemplar touches; default is `~/exemplar`

### Recipes

1. `sprout-exemplar`
1. `sprout-exemplar::path`

## Contributing

### Before committing

```
./sprout exec rake
```

The default rake task includes rubocop, foodcritic, unit specs

### [Rubocop](https://github.com/bbatsov/rubocop)

```
./sprout exec rake rubocop
```

### [FoodCritic](http://acrmp.github.io/foodcritic/)

```
./sprout exec rake foodcritic
```

### Unit specs

Unit specs use [ChefSpec](https://github.com/sethvargo/chefspec)

```
./sprout exec rake spec:unit
```

### Integration specs

Integrations specs will run the default recipe on the host system (destructive) and make assertions on the system after install.

*Note:* It has a precondition that exemplar is _not_ already installed on the system.

```
./sprout exec rake spec:integration
```
