\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e'4. e8 d4 d8 d
    c4 c8 c c4 h8 a
    h4 h h h
    c2 c4 cis
    d2. dis4
    e2 e~
    e4 d! e2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    g'4. g8 gis4 gis8 gis
    a4 a8 a a4 a
    gis gis r2
    g f
    a g
    h a4 h
    a2 gis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e'4.^\tutti e8 d4 d8 d
    c4 c8 c c4 h8[ a]
    h4 h h h
    c c c cis
    d d d dis
    e e e2~
    e4 d! e2
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di: Mi -- se --
  re -- re, mi -- se --
  re -- re, mi -- se --
  re -- re no --
  _ bis.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    g'4.^\tutti g8 gis4 gis8 gis
    a4 a8 a a4 a
    gis gis r2
    g4 g f f
    a a g g
    h h a h
    a2 gis
  }
}

AltoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se --  re -- re
  no -- bis.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c4.^\tutti c8 d4 d8 d
    e4 e8 e e4 d
    e e r2
    c4 c a a
    a a h h
    h h c h
    c h8[ a] h2
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se --  re -- re
  no -- _ bis.
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c4.^\tutti c8 h4 h8 h
    a4 a8 a f'4. f8
    e4 e r2
    e4 e f f
    fis fis g g
    g gis a g
    f2 e
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se --  re -- re
  no -- bis.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    c2-\tutti h
    a f'
    e r
    e f
    fis g
    g4 gis a g
    f2 e
  }
}

BassFigures = \figuremode {
  r2 <6\\>
  r <7>4 <6>
  <_+>1
  <6>2 <5>4 <5\+>
  <6>2 <5>4 <5\+>
  <6>2. q4
  <7> <6> <_+>2
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
    \new FiguredBass { \BassFigures }
  >>
}
