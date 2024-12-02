// TODO : hero component

import 'package:jaspr/jaspr.dart';

class BasicHero extends StatelessComponent {
  final List<Component> children;
  BasicHero({
    required this.children,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'hero bg-base-200 min-h-screen', [
      div(classes: 'hero-content text-center', [
        div(classes: 'max-w-md', children),
      ])
    ]);
  }
}

class CenteredHero extends StatelessComponent {
  final String title;
  final String content;
  final String buttonTitle;
  final String href;
  CenteredHero({
    required this.title,
    required this.content,
    this.buttonTitle = 'Get Started',
    this.href = '',
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'hero bg-base-200 min-h-screen', [
      div(classes: 'hero-content text-center', [
        div(classes: 'max-w-md', [
          h1(classes: 'text-5xl font-bold', [text(title)]),
          p(classes: 'py-6', [text(content)]),
          a(
            classes: 'btn btn-primary ',
            href: href,
            [text(buttonTitle)],
          )
        ]),
      ]),
    ]);
  }
}

class FigureHero extends StatelessComponent {
  final String title;
  final String content;
  final String buttonTitle;
  final String imageUrl;
  final bool reverse;
  final String href;
  FigureHero({
    required this.title,
    required this.content,
    this.buttonTitle = 'Get Started',
    required this.imageUrl,
    this.reverse = false,
    this.href = '',
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'hero bg-base-200 min-h-screen', [
      div(
          classes: 'hero-content flex-col '
              '${reverse == true ? 'lg:flex-row-reverse' : 'lg:flex-row'} ',
          [
            img(classes: 'max-w-sm rounded-lg shadow-2xl', src: imageUrl),
            div([
              h1(classes: 'text-5xl font-bold', [text(title)]),
              p(classes: 'py-6', [text(content)]),
              a(classes: 'btn btn-primary ', href: href, [text(buttonTitle)])
            ]),
          ]),
    ]);
  }
}

class FormHero extends StatelessComponent {
  final String title;
  final String content;
  final List<Component> children;
  final bool reverse;

  FormHero({
    required this.title,
    required this.content,
    required this.children,
    this.reverse = true,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'hero bg-base-200 min-h-screen', [
      div(
          classes: 'hero-content flex-col '
              '${reverse == true ? 'lg:flex-row-reverse' : 'lg:flex-row'} ',
          [
            div(classes: 'text-center lg:text-left', [
              h1(classes: 'text-5xl font-bold', [text(title)]),
              p(classes: 'py-6', [text(content)]),
            ]),
            div(
              classes: 'card bg-base-100 w-full max-w-sm shrink-0 shadow-2xl',
              children,
            ),
          ]),
    ]);
  }
}

class LoginForm extends StatelessComponent {
  late final String username;
  late final String password;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield form(classes: 'card-body', [
      // username
      div(classes: 'form-control', [
        label(classes: 'label', [
          span(classes: 'label-text', [
            text('Email'),
          ])
        ]),
        input(
          classes: 'input input-bordered',
          type: InputType.email,
          attributes: {'placeholder': 'email', 'required': ''},
          onChange: (value) {
            print(value);
            username = value;
          },
          [],
        )
      ]),
      // password
      div(classes: 'form-control', [
        label(classes: 'label', [
          span(classes: 'label-text', [
            text('Password'),
          ])
        ]),
        input(
          classes: 'input input-bordered',
          type: InputType.password,
          attributes: {'placeholder': 'password', 'required': ''},
          onChange: (value) {
            print(value);
            password = value;
          },
          [],
        ),
        // forget password
        label(classes: 'label', [
          a(
            classes: 'label-text-alt link link-hover',
            href: '#',
            [text('Forgot password')],
          )
        ]),
      ]),
      // login button
      div(classes: 'form-control mt-6', [
        button(
          classes: 'btn btn-primary',
          onClick: () {
            print('username = $username , password = $password');
          },
          [
            text('Login'),
          ],
        )
      ]),
    ]);
  }
}

class OverlayImageHero extends StatelessComponent {
  final String title;
  final String content;
  final String buttonTitle;
  final String imageUrl;
  final String href;
  OverlayImageHero({
    required this.title,
    required this.content,
    this.buttonTitle = 'Get Started',
    required this.imageUrl,
    this.href = '',
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'hero bg-base-200 min-h-screen', attributes: {
      'style': 'background-image: url($imageUrl);'
    }, [
      div(classes: 'hero-overlay bg-opacity-60', []),
      div(classes: 'hero-content text-center', [
        div(classes: 'max-w-md', [
          h1(classes: 'text-5xl font-bold', [text(title)]),
          p(classes: 'py-6', [text(content)]),
          a(
            classes: 'btn btn-primary ',
            [text(buttonTitle)],
            href: href,
          )
        ]),
      ]),
    ]);
  }
}
