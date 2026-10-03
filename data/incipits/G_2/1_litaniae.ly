\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Largo"
    a'4.-\tutti a8 d,4 d'~
    d cis8 h cis4 h8 a
    h4. e8 a,4 d~
    d cis d a
    g2. fis8 cis'
    d4 cis8( h) cis4 h8( a)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Largo"
    R1
    e4.-\tutti e8 a,4 a'~
    a g2 fis4
    e2 fis4 fis
    e2. fis8 a
    fis4 g e fis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    a'4.^\tutti a8 d,4 d'~
    d cis8[ h] cis4 h8[ a]
    h4. e8 a,4 d~
    d cis d a
    g2. fis8 cis'
    d4 cis8[ h] cis4 h8[ a]
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ _ _
  son, e -- lei -- _
  _ son, e --
  lei -- son, e --
  lei -- _ \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    R1
    e4.^\tutti e8 a,4 a'~
    a g2 fis4
    e2\trill fis4 fis
    e2. fis8 a
    fis4 g e fis
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e --
  _ _
  lei -- son, e --
  lei -- son, e --
  lei -- _ _ \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    R1*3
    a4.^\tutti a8 d,4 d'~
    d cis8[ h] cis4 h8[ a]
    h4. e8 a,4 d
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e e --
  _ _ _
  lei -- _ son, "e -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Largo"
    R1*4
    e4.^\tutti e8 a,4 a'~
    a g2 fis4
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- \hy
}

Organo = {
  \relative c {
    \clef soprano
    \key d \major \time 4/4 \tempoMarkup "Largo"
    << {
      a''4._\tutti a8 d,4 d'~
      d cis8 h cis4 h8 a
      h4. e8 a,4 d
    } \\ {
      \once \override MultiMeasureRest.staff-position = #-10 R1
      e,4. e8 a,4 a'~
      a g2 fis4
    } >>
    \clef tenor a,4. a8 d,4 d'
    \clef bass e,4. e8 a,4 a'~
    a g2 fis4
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  <5 4>4 <\t 3>2.
  <7>4 <6>8 <5> <7>4 <6>8 <5>
  <4 2>4 <6> <4 2> <6>
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
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
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
        \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
