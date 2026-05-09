\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    b'2 b
    c1
    b2 b4 b
    g2 g4 g
    g g g2
    c d
    es d
    es d
    d c4 b
    c1
    d\breve*1/2
  }
}

SopranoLyrics = \lyricmode {
  O vos
  o --
  mnes qui trans --
  i -- tis per
  vi -- am at --
  ten -- di --
  te et __
  _ vi --
  de -- _ _
  _
  te,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g
    a1
    g2 d4 d
    d2 d4 d
    es2 es
    r g
    g g
    g fis4 fis
    g1~
    g
    fis\breve*1/2
  }
}

AltoLyrics = \lyricmode {
  O vos
  o --
  mnes qui trans --
  i -- tis per
  vi -- am
  at --
  ten -- di --
  te et vi --
  de --

  te,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d2 d
    es1
    d2 d4 d
    h2 h4 h
    c2 c
    r h
    c d
    c a4 d
    b1~
    b2 a4 g
    a\breve*1/2
  }
}

TenoreLyrics = \lyricmode {
  O vos
  o --
  mnes qui trans --
  i -- tis per
  vi -- am
  at --
  ten -- di --
  te et vi --
  de --

  te,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g
    fis1
    g2 g4 g
    f2 f4 f
    es d c2
    r g'
    es h
    c d4 d
    es1~
    es d\breve*1/2
  }
}

BassoLyrics = \lyricmode {
  O vos
  o --
  mnes qui trans --
  i -- tis per
  vi -- _ am
  at --
  ten -- di --
  te et vi --
  de --

  te,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato"
    g'1
    fis
    g
    f!
    es4 d c2
    r g'
    es h
    c d
    es1~
    es
    d\breve*1/2
  }
}

BassFigures = \figuremode {
  r1
  <7 5>
  r
  <4! 2>
  <6>
  r
  r
  r2 <_+>
  <7>1
  <6>
  <_+>
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
