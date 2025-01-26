\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e'2 e4
    f e dis2\trill
    e4 h'8(\p dis,) e h4 a8
    g e e'4\f cis2
    d!4 d2 c8 h
    c2 h4 h'8(\p dis,)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 c'~
    c4 c fis,2
    g4 g8(\p fis) g4 cis,8( dis)
    e4 r e2\f
    f!4 a gis a8( \hA gis)
    a2 gis4 e8(\p fis)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 e'2^\tutti e4
    f e dis2
    e4 r r2
    r4 e cis2
    d4 d d c8[ h]
    c2 h4 r
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus,
  a -- gnus De --
  i,
  qui tol --
  lis pec -- ca -- ta __
  mun -- di:
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a'~^\tutti
    a4 e fis2
    g4 r r2
    r a
    a4 a8 a gis4 a8[ \hA gis]
    a2 gis4 r
  }
}

AltoLyrics = \lyricmode {
  A --
  gnus De --
  i,
  qui
  tol -- lis pec -- ca -- ta __
  mun -- di:
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 c~^\tutti
    c4 c h2
    h4 r r2
    r e
    d4 a8 a h4 e
    fis2 h,4 r
  }
}

TenoreLyrics = \lyricmode {
  A --
  gnus De --
  i,
  qui
  tol -- lis pec -- ca -- ta
  mun -- di:
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a'~^\tutti
    a4 a a2
    g4 r r2
    r g
    f4 f8 f e4 e
    dis2 e4 r
  }
}

BassoLyrics = \lyricmode {
  A --
  gnus De --
  i,
  qui
  tol -- lis pec -- ca -- ta
  mun -- di:
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c4 r a2~
    a a
    g4 r r2
    r g'
    f e
    dis e4 r
  }
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
