\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Andante"
    R1*4
    r16 d'' cis16.\trill h32 a16 a, g' fis32( e) fis4 r
    r16 e d16.\trill cis32 fis4 r16 gis fis16.\trill e32 a4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Andante"
    R1*4
    r2 r16 a'' g16. fis32 e16 a, d cis32( h)
    cis4 r16 a d16. cis32 h4 r16 a d16. cis32
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    d'4.^\solo cis16[ h] a8[ g16 fis] g8 a
    fis d r4 r r8 h'
    cis16[ a e' d] cis[ d h cis] d[ cis] d8 r c
    h cis16 dis e8[ d] cis[ d16 e] cis8. cis16
    d4 r r2
    R1
  }
}

SopranoLyrics = \lyricmode {
  Be -- _ _ _ ne --
  di -- ctus qui
  ve -- _ _ nit in
  no -- mi -- ne Do -- _ _ mi --
  ni,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1
    a'4.^\solo g16[ fis] e8[ d16 cis] d8 e
    cis a r e' fis16[ d a' g] fis[ g e fis]
    g[ fis] g8 r g g fis16 g e8. e16
    d4 r r2
    R1
  }
}

AltoLyrics = \lyricmode {
  Be -- _ _ _ ne --
  di -- ctus qui ve -- _
  _ nit in no -- mi -- ne Do -- mi --
  ni,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*6
  }
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*6
  }
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Andante"
    d8-\solo e fis g fis d h cis
    d e fis d cis a4 gis8
    a a' g!4 fis8 d r d
    g,4 r8 e' a d, a' a,
    d4 cis d a'8 gis
    a a, d4 e fis
  }
}

BassFigures = \figuremode {
  r2. <6>8 q
  r2. <2>4
  r2 <6>4. <7!>8
  r4. <7>8 q2
  r1
  r2 <_+>
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
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
