\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    h'4 a a
    h h r
    R2.
    e2 dis4
    e e r
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    g'4 a fis
    g g r
    R2.
    g4 a fis
    g g r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    d2 d4
    d d r
    R2.
    h4 c h
    h h r
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    g'4 fis d
    g g, r
    R2.
    g'4 fis h
    e,2 r4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    g''4( a) fis
    r8 g4\p fis16( e) d8 c
    h e4 d16( c) h8 a
    g4 r r
    r8 e'4\p d16( c) h8 a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    h'4 a d
    h r r
    r8 g'4\p fis16( e) d8 c
    h e e4 dis
    e r r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    h'4^\tutti a a
    h h r
    R2.
    e2 dis4
    e e r
  }
}

SopranoLyrics = \lyricmode {
  San -- _ ctus,
  san -- ctus,

  san -- ctus,
  san -- ctus,
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    g'4^\tutti a fis
    g g r
    R2.
    g4 a fis
    g g r
  }
}

AltoLyrics = \lyricmode {
  San -- _ ctus,
  san -- ctus,

  san -- _ ctus,
  san -- ctus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    d2^\tutti d4
    d d r
    R2.
    h4 c h
    h h r
  }
}

TenoreLyrics = \lyricmode {
  San -- ctus,
  san -- ctus,

  san -- _ ctus,
  san -- ctus,
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \autoBeamOff \tempoMarkup "Larghetto"
    g'4^\tutti fis d
    g g, r
    R2.
    g'4 fis h
    e, e r
  }
}

BassoLyrics = \lyricmode {
  San -- _ ctus,
  san -- ctus,

  san -- _ ctus,
  san -- ctus,
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 3/4 \tempoMarkup "Larghetto"
    g'4(-\tutti fis) d
    g g, r
    R2.
    g'4 fis h
    e,2 r4
  }
}

BassFigures = \figuremode {
  r2.
  r
  r
  <6>4 <7> <_+>
  r2.
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
