\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    g''4 g8 f16 e d4 r
    r e8 e e e e4
    f f e r
    R1*2
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    e'4 e8 d16 c g4 r
    r c8 c c c c4
    d d8 d g,4 r
    R1*2
  }
}

TrombaI = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Largo"
    g'4 g8 g g4 r
    R1*4
  }
}

TrombaII = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c4 c8 c g4 r
    R1*4
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c4 c8 c g4 r
    R1*4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    e'4 e d2~
    d4 c r c
    f d e e
    e4. e8 e2
    cis cis8 cis cis cis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Largo"
    g'4 g g e
    e2 r4 c'~
    c h c c
    e4. e8 c2
    ais ais8 ais ais ais
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    e'4^\tutti e d d8 d
    d4 c r c
    c h c c
    e4. e8 e2~
    e1
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec --
  ca -- ta mun -- di:
  Mi -- se -- "re -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    g'4^\tutti g g e8 e
    e4 e r e
    f4. f8 e4 e
    r2 a4 a
    ais2 ais
  }
}

AltoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec --
  ca -- ta mun -- di:
  Mi -- se --
  re -- re,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    c4^\tutti c c h8 h
    a4 a r a
    a f g g
    r2 c4 c
    cis2 cis
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec --
  ca -- ta mun -- di:
  Mi -- se --
  re -- re,
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    c4^\tutti c g' gis8 gis
    a4 a r a,
    d4. d8 c4 c
    r2 a'4 a
    g2 fis
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec --
  ca -- ta mun -- di:
  Mi -- se --
  re -- re,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Largo"
    c2-\tutti g'4 gis
    a2 r4 a,
    d2 c
    \clef soprano e'' \clef bass a,,
    g fis
  }
}

BassFigures = \figuremode {
  r2 <5 4>4 <\t 3>
  <5 4> <\t 3>2.
  <7>4 <6>2.
  r1
  <6 4\+ 2\+>2 <7 _+>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \setSoloText "clno 1"
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "tr" "1, 2" }
        \partCombine #'(0 . 10) \TrombaI \TrombaII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = "timp"
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
    \new FiguredBass { \BassFigures }
  >>
}
