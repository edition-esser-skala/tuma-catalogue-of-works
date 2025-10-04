\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]"
    d'2. d4
    g,1
    b4 a b g
    a2 d
    g, c~
    c b
    a a~
    a4 g g2~
    g a4 b
    a2 d,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]"
    R1*2
    g'2. g4
    d1
    es4 d es c
    d g, g'2~
    g4 g fis e
    d1
    g,
    R1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    d'2. d4
    g,1
    b4 a b g
    a2 d
    g, c~
    c b
    a a4 a
    a g g2
    g a4 b
    a2 d,
  }
}

SopranoLyrics = \lyricmode {
  Cre -- di --
  di,
  pro -- pter quod lo --
  cu -- tus
  sum, e --
  go
  au -- tem hu --
  mi -- _ li --
  a -- tus sum
  ni -- mis.
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    g'2. g4
    d2 d
    es4 d es c
    d g, g'2~
    g4 g fis e
    d1
    g,
    R1
  }
}

AltoLyrics = \lyricmode {
  E -- go %3
  di -- xi
  in ex -- ces -- su
  me -- o: O --
  mnis ho -- mo
  men --
  dax.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*6
    d2. c4
    b2 c4 d
    c2. b4
    c2 a
  }
}

TenoreLyrics = \lyricmode {
  Quid re --
  tri -- bu -- am
  Do -- mi --
  no pro
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*7
    g'2 g4 f!
    es2 f4 g
    f2 f4 es
  }
}

BassoLyrics = \lyricmode {
  Ca -- li -- cem
  sa -- lu -- _
  ta -- ris "ac -"
}

Organo = {
  \relative c {
    \clef soprano
    \key g \minor \time 2/2 \tempoMarkup "[no tempo]"
    d''2.-\tutti d4
    g,1
    << {
      b4 a b g
      a2 d
      g, c~
      c b
    } \\ {
      g2. g4 %3
      d1
      es4 d es c
      d2 g
    } >>
    \clef tenor d2. c4
    \clef bass g2. f!4
    es2 f4 g
    f2. es4
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  <5 4>2 <\t _+>4 <_!>
  <9> <8>2.
  <6>2 <\t>
  <5> <6>
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
