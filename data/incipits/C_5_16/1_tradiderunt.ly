\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    b'2. b4
    d2 c4( b)
    a2 d
    d4( c) c2
    b4( c) d2
    b a
    b1
    a
    R1*2
  }
}

SopranoLyrics = \lyricmode {
  Tra -- di --
  de -- runt
  me in
  ma -- nus,
  ma -- nus
  im -- pi --
  o --
  rum,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*2
    fis2. fis4
    g2 a
    g  g
    g fis
    g g
    g fis
    r f
    f( es)
  }
}

AltoLyrics = \lyricmode {
  Tra -- di --
  de -- runt
  me in
  ma -- nus
  im -- pi --
  o -- rum,
  et
  "in -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    g2. g4
    b2 c
    d1
    a2 d
    d d4 d
    d2 d
    d d
    d d
    r d
    d( c)
  }
}

TenoreLyrics = \lyricmode {
  Tra -- di --
  de -- runt
  me,
  tra -- di --
  de -- runt in
  ma -- nus
  im -- pi --
  o -- rum,
  et
  "in -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*2
    d2. d4
    e2 fis
    g b
    g d
    b g
    d' d
    R1*2
  }
}

BassoLyrics = \lyricmode {
  Tra -- di --
  de -- runt
  me in
  ma -- nus
  im -- pi --
  o -- rum,
}

Organo = {
  \relative c {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegro"
    g'2. g4
    b2 c
    \clef bass d,2. d4
    e2 fis
    g b
    g d
    b g
    d'1
    \clef alto r2 << { f'! f es } \\ { d d c } >>
  }
}

BassFigures = \figuremode {
  r1
  r
  <_+>
  <7>4 <6>2.
  r1
  r2 <_+>
  <6>1
  <_+>
  r
  r
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
