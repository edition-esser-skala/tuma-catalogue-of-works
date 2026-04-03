\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c'2 e8 e e e
    fis fis fis fis g2
    d d8 d d d
    e e e e e2
    e e8 e e e
    fis fis fis fis fis h h h
    h h, e e e e c a'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c'2 c8 c c c
    c c c c h2
    d d8 d d d
    d d d d c2
    e e8 e e e
    e e e e dis dis dis dis
    e e h h c4 c
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    c'1~^\tutti
    c2 h
    d1~
    d2 c
    e1~
    e2 dis
    e4 h8 h c4 c
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san --
  ctus
  Do -- mi -- nus De -- us,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 e^\tutti
    fis g
    r f
    e e
    r g!
    fis fis
    r a4 e8 e
  }
}

AltoLyrics = \lyricmode {
  San --
  _ ctus,
  san --
  _ ctus,
  san --
  _ ctus
  Do -- mi -- nus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 a~^\tutti
    a h
    r gis
    h a
    r ais
    cis h
    h4 e8 e e4 c
  }
}

TenoreLyrics = \lyricmode {
  San --
  ctus,
  san --
  _ ctus,
  san --
  _ ctus
  Do -- mi -- nus De -- us,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    r2 a^\tutti
    d g,
    r h
    gis a
    r cis
    ais a
    g a4. a8
  }
}

BassoLyrics = \lyricmode {
  San --
  _ ctus,
  san --
  _ ctus,
  san --
  _ ctus
  Do -- _ "mi -"
}

Organo = {
  \relative c {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c''2-\tutti \clef bass a,,
    d g,
    \clef soprano d''' \clef bass h,,
    gis a
    \clef soprano e''' \clef bass cis,,
    ais a
    g a
  }
}

BassFigures = \figuremode {
  r1
  <7 _+>
  r2 <6\\ 5!>
  <6 5>1
  r2 <6\\ 5!>
  <6\\ 5> <4\+ 2>
  <6>1
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
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
