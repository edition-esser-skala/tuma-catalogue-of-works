\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    g''1 g2
    g \pao d1
    e f2
    f e1
    f2 r r \gotoBar "16"
    c2 r r
    R1.*4
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    e'1 e2
    d d1
    c c2
    d g,1
    c2 r r \gotoBar "16"
    g r r
    R1.*4
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    c1 c2
    g r r
    R1.*3 \gotoBar "16"
    c2 r r
    R1.*4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    g''2 e4 f g2
    g gis4 a fis \hA gis
    a2 a, f'
    b e,4 g f g
    a2 d, d \gotoBar "16"
    c2 r r
    R1.*4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    e'1 e2
    d d1
    c c2
    d b1
    c2 a1 \gotoBar "16"
    c2 r r
    R1.*4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 3/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1.*5 \gotoBar "16"
    e'2.^\solo e4 e2
    d d1
    c c2
    b1.
    c2 a1
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei --
  son, e --
  lei --
  son, "e -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 3/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1.*5 \gotoBar "16"
    g'2.^\solo g4 g2
    g gis4 a fis \hA gis
    a2 a, f'
    f e4 g f g
    a2 f d
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _ _ _
  _ son, e --
  lei -- _ _ _ _
  _ son, "e -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 3/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1.*5 \gotoBar "16"
    c2.^\solo c4 c2
    h h1
    a1 a2
    g1.
    f1 f2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei --
  son, e --
  lei --
  son, "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 3/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1.*5 \gotoBar "16"
    R
  }
}

BassoLyrics = \lyricmode {
  %tacet
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 3/2 \tempoMarkup "[no tempo]"
    c'1 c2
    h h1
    a1 a2
    g g1
    f f2 \gotoBar "16"
    c \clef tenor c' c
    h h1
    a a2
    g1.
    f1 f2
  }
}

BassFigures = \figuremode {
  r1.
  <6>2 <6\\>1
  r <6>2
  <7 _->2 <6 \t>1
  <5>2 <6>1
  r1.
  <6>2 <6\\>1
  r <6>2
  <7 _-> <6 \t>1
  <5>2 <6>1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = \transposedTimpShort "C" "" "G" ""
      \Timpani
    }
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
