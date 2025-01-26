\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    g''2 a4 g
    f2 e
    R1*2
    g,4 r g r
    g r g r
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    e'2 f4 e
    c d g,2
    R1*2
    g4 r g r
    g r g r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    g''2 a4( g)
    a f e2
    e,8(\p g) f( a) g( f) e( d)
    e( e') d( f) e( d) e( fis)
    g4\f d e d
    e fis g2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    e'2 f4( e)
    f d c2
    c,8(\p e) d( f) e( d) c( h)
    c( c') h( d) c( h) c( a)
    h2\f c4( h)
    c( a) h2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    g'2^\tutti a4 g
    a h c2
    R1*2
    h2 c4 h
    c a h2
  }
}

SopranoLyrics = \lyricmode {
  San -- _ _
  _ _ ctus,

  san -- _ _
  _ _ ctus,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    e2^\tutti f4 e
    f d e2
    R1*2
    d2 e4 d
    e fis g2
  }
}

AltoLyrics = \lyricmode {
  San -- _ _
  _ _ ctus,

  san -- _ _
  _ _ ctus,
}


Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    c1~^\tutti
    c4 f, g2
    R1*2
    g1~
    g4 c d2
  }
}

TenoreLyrics = \lyricmode {
  San --
  _ ctus,

  san --
  _ ctus,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    c1~^\tutti
    c2 c
    R1*2
    g1~
    g2 g
  }
}

BassoLyrics = \lyricmode {
  San --
  ctus,

  san --
  ctus,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    c1
    c2 c
    R1*2
    g1
    g2 g
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
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
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
  >>
}
