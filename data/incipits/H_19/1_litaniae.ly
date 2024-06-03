\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    R1
    g'4. g8 b4 b
    a2 g
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    r2 d4. d8
    es4 es4. d16 c d8 g
    g4 fis g es
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    R
    r2 g4. g8
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    R1
    r2 d4. d8 \gotoBar "6"
    d4 d, g r
    R1
    d'4. d8 es4 es~
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    d'4. d8 es es, es'4~
    es8 d16 c d8 g g4 fis \gotoBar "6"
    a,2\trill g4 r
    g4. g8 b4 b
    a2 g4 c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    r2 g'4. g8
    b b, b'4 a4. a8 \gotoBar "6"
    g4 fis\trill g d8 d
    es4 es4. d16 c d8 g
    g4 fis g es
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    R1
    g'4.^\tutti g8 b4 b
    a2 g
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  "lei -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    r2 d4.^\tutti d8
    es4 es4. d16[ c] d8 g
    g4 fis g es
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- son, e --
  lei -- _ son, "e -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    R
    r2 g4.^\tutti g8
  }
}

TenoreLyrics = \lyricmode {
  Ky -- "ri -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*2 \gotoBar "6"
    R
    d4.^\tutti d8 es4 es
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e "e -"
}

Organo = {
  \relative c {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    << {
      d''4. d8 es es, \once \tieDashed es'4~
      es8 d16 c d8 g
    } \\ {
      r2-\solo g,4. g8
      b b, b'4
    } >> \clef bass d,,4. d8 \gotoBar "6"
    d4 d, g \clef soprano << {
      r4
      g''4. g8 b4 b
    } \\ {
      d,8-\tutti d
      es4 es~ es8 d16 c d8 g
    } >>
    \clef bass d,4. d8 es4 es~
  }
}

BassFigures = \figuremode {
  r1
  r2 <5 4>4 <\t _+>
  <5 \t> <\t _+>2.
  r1
  <5 4>4 <\t _+>2.
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
