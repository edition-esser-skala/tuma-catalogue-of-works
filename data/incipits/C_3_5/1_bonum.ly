\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Recitativo"
    R1*2 \gotoBar "10"
    \key d \major \tempoMarkup "Larghetto" \kneeBeam a''8 d,,16. d32 fis8 d' d16( cis) a,16. a32 e'8 g'
    g16( fis) d,16. d32 fis8 a' a16( g) h( dis,) e( h) g'( e)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Recitativo"
    R1*2 \gotoBar "10"
    \key d \major \tempoMarkup "Larghetto" fis'4 r8 fis, fis16( e) e4 e'8
    e16( d) d4 d8 h4. h8
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Recitativo"
    R1*2 \gotoBar "10"
    \key d \major \tempoMarkup "Larghetto" d8 d a a a cis cis a
    a a a d d g e e
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
    \mvTr d8.\pE^\solo d16 d4 g8. g16 a8 h
    fis8. fis16 fis4 r8 a a d,16 d \gotoBar "10"
    \key d \major \tempoMarkup "Larghetto" R1*2
  }
}

AltoLyrics = \lyricmode {
  Bo -- num est con -- fi -- te -- ri
  Do -- mi -- no et psal -- le -- re
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Recitativo"
    g1
    a2 fis \gotoBar "10"
    \key d \major \tempoMarkup "Larghetto" d'8 d d d a' a a a
    d, d d d g g g g
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <6 4>16 <5 3> r4.
  <9 4>16 <8 3> r4. <9>16 <8>8. <6>4
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        % \transpose c c,
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
